<?php
/**
 * 首页控制器
 * 
 * @author        shuguang <5565907@qq.com>
 * @copyright     Copyright (c) 2007-2013 bagesoft. All rights reserved.
 * @link          http://www.bagecms.com
 * @package       BageCMS.Controller
 * @license       http://www.bagecms.com/license
 * @version       v3.1.0
 */

class SiteController extends XFrontBase
{
    /**
     * 首页
     */
    public function actionIndex ()
    {
      $this->render('index',array('model'=>$model));
    }

    /**
     * tanjian的记账本v1.0
     */
    public function actionJz(){
        //获得分类
        if(!empty($_POST)){
            /*基本数据*/
            $uid = 10;//default
            $op_eat = intval($_POST['op_eat']);
            $op_traffic = intval($_POST['op_traffic']);
            $op_other =intval($_POST['op_other']);
            $op_other_notes = $_POST['op_other_notes'];
            $total = $op_eat+$op_traffic+$op_other;
            /*健康和理财*/
            $op_today_profit =intval($_POST['op_today_profit']);
            $op_today_reading =intval($_POST['op_today_reading']);
            $op_today_running =intval($_POST['op_today_running']);

            //入库
            $addtime = $_POST['addtime'];
            $ck_sqk = "select * from bage_bill where addtime ='{$addtime}'";
            $ck_res = Yii::app()->db->createCommand($ck_sqk)->queryAll();
            if($ck_res){
                echo json_encode(array('code'=>401,'msg'=>'Today had inserted!'));exit;
            }


            if( isset($op_other) &&  isset($op_traffic) && isset($op_eat)){
                $sql= <<<eof
insert into bage_bill (`id`,`uid`,`op_eat`,`op_traffic`,`op_other`,`op_today_profit`,`op_other_notes`,`total`,`addtime`,`op_today_reading`,`op_today_running`) 
values(null,'{$uid}','{$op_eat}','{$op_traffic}','{$op_other}','{$op_today_profit}','{$op_other_notes}','{$total}','{$addtime}','{$op_today_reading}', '{$op_today_running}')
eof;
                $res = Yii::app()->db->createCommand($sql)->query();
                if($res){
                    echo json_encode(array('code'=>200,'msg'=>'add success!'));
                }else{
                    echo json_encode(array('code'=>400,'msg'=>'mysql add error!'));
                }
            }else{
                echo json_encode(array('code'=>402,'msg'=>'no params!'));
            }
        }

        //发周消费报告
        if(date("w") == 0){//周日才发消费报告
            $this->actionReportJz();
        }

    }

    /**
     * 发送周消费报告
     */
    public function actionReportJz(){
        //当前日期
        $sdefaultDate = date("Y-m-d");
        //$first =1 表示每周星期一为开始日期 0表示每周日为开始日期
        $first=1;
        //获取当前周的第几天 周日是 0 周一到周六是 1 - 6
        $w=date('w',strtotime($sdefaultDate));
        //获取本周开始日期，如果$w是0，则表示周日，减去 6 天
        $week_start=date('Y-m-d',strtotime("$sdefaultDate -".($w ? $w - $first : 6).' days'));
        //本周结束日期
        $week_end = date('Y-m-d',strtotime("$week_start +6 days"));
        //var_dump($week_start , $week_end);die;

        $sql = "select sum(op_eat) AS op_eat_sum,sum(op_traffic) AS op_traffic_sum,sum(op_other) AS op_other_sum,sum(total) AS total_sum from bage_bill 
where addtime >='$week_start' and addtime<='$week_end'";

        $command =  Yii::app()->db->createCommand($sql);
        $result = $command->queryAll();

        $op_eat_sum = $result[0]['op_eat_sum'];
        $op_traffic_sum = $result[0]['$op_traffic_sum'];
        $op_other_sum = $result[0]['op_other_sum'];
        $total_sum = $result[0]['total_sum'];

        $op_eat_sum = $op_eat_sum ? $op_eat_sum : 0;
        $op_traffic_sum = $op_traffic_sum ? $op_traffic_sum : 0;
        $op_other_sum = $op_other_sum ? $op_other_sum : 0;
        $total_sum = $total_sum ? $total_sum : 0;

        $html = <<<eof
        <h2>本周收支报告</h2>
        <h4>统计日期范围：</h4> $week_start 至 $week_end<br>
        吃饭总开支：$op_eat_sum 元 <br>
        交通总开支：$op_traffic_sum 元 <br>
        其他总开支：$op_other_sum 元 <br>
        总收益：100 万元<br>
        总消费共计：<span style="color:red">$total_sum</span> 元。
eof;
        $ret = $this->sendMail($html);
    }

    private function sendMail( $html_content ){
        $url = 'http://api.sendcloud.net/apiv2/mail/send';
        $API_USER = 'tann1013_test_oZ80OQ';
        $API_KEY = 'ddBMEGUxHx6lvPok';
        $TO_USER = 'tann1013@hotmail.com';
        $HTML_CONTENT = $html_content;
        $SUBJECT = '本周收支报告';

        //您需要登录SendCloud创建API_USER，使用API_USER和API_KEY才可以进行邮件的发送。
        $param = array(
            'apiUser' => $API_USER,
            'apiKey' => $API_KEY,
            'from' => 'service@sendcloud.im',
            'fromName' => 'www.vandin.net邮件',
            'to' => $TO_USER,
            'subject' => $SUBJECT,
            'html' => $HTML_CONTENT,
            'respEmailId' => 'true');

        $data = http_build_query($param);
        $options = array(
            'http' => array(
                'method'  => 'POST',
                'header'  => 'Content-Type: application/x-www-form-urlencoded',
                'content' => $data
            ));
        $context  = stream_context_create($options);
        $result = file_get_contents($url, false, $context);
        return $result;
    }



}