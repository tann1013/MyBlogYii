<?php $this->renderPartial('/_include/header')?>


<div class="mainWrap">
  <div class="topDesc">
    <div class="desc">
      <p style=" margin-top:40px;">致力于提升客户品牌形象、实现客户商业目标!</p>
      <p>Commitment to enhance customer brand image,customer business goals!</p>
    </div>
  </div>
  <div class="global clear">
    <div class="sidebar" id="sidebar">
      <div class="mbox sideNav">
        <h2>资讯</h2>
      </div>
      <div class="sideBox mbox">
        <p></p>
      </div>
    </div>

    <div class="mainBox">
      <div class="loc clear">
        <div class="position"> <span>您的位置：</span> <a href="/index.php">首页</a> <em></em> <span>资讯列表</span><em></em> </div>
      </div>
      <div class="listBox clear">
        <ul class="title">
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2018-01-19 23:38:47</span></p>
              <a href="/index.php?r=post/show&amp;id=100" target="_blank" class="title">面试题目setcookie的尴尬</a> </h2>
          </li>
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2017-12-25 14:56:51</span></p>
              <a href="/index.php?r=post/show&amp;id=98" target="_blank" class="title">49周之mysql读写分离原理以及在校内外的应用</a> </h2>
          </li>
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2017-12-02 22:00:40</span></p>
              <a href="/index.php?r=post/show&amp;id=97" target="_blank" class="title">48周笔记之我在校内外技术要点整理</a> </h2>
          </li>
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2017-06-09 23:50:11</span></p>
              <a href="/index.php?r=post/show&amp;id=96" target="_blank" class="title" style="font-weight:bold;">客观评价【武汉】和【杭州】两座省会城市</a> </h2>
          </li>
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2017-06-04 21:10:38</span></p>
              <a href="/index.php?r=post/show&amp;id=95" target="_blank" class="title">支付宝付款码如何做到防止盗刷的</a> </h2>
          </li>
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2017-05-17 09:59:56</span></p>
              <a href="/index.php?r=post/show&amp;id=94" target="_blank" class="title">每天那八个小时</a> </h2>
          </li>
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2017-05-14 17:43:07</span></p>
              <a href="/index.php?r=post/show&amp;id=93" target="_blank" class="title">移动端开发工具分享和一些坑</a> </h2>
          </li>
          <li class="clear ">
            <h2>
              <p class="y"> <span class="date">2017-05-02 10:15:49</span></p>
              <a href="/index.php?r=post/show&amp;id=92" target="_blank" class="title">五一京北城市承德之行</a> </h2>
          </li>

        </ul>
      </div>
      <div class="pagebar clear">
      </div>
    </div>
  </div>
</div>

<!--广告-->
<?php $indexAd = Bagecms::getList('ad','index_ad',array('where'=>"status_is='Y' AND title_alias='index_banner'", 'order'=>'sort_order DESC'))?>
<!--/广告-->

<div class="index">
<?php $bagecmsAbout = Bagecms::getItem('page','index_about', array('where'=>"title_alias='about'"));?>
<!--首页模块-->
<!--/首页模块--> 
<!--商品-->
<div class="wrap clear "></div>
<script type="text/javascript">
jQuery(".indexGoods").slide({ mainCell:"ul", effect:"leftMarquee", vis:5, autoPlay:true, interTime:50, switchLoad:"_src" });	</script> 
<?php $this->renderPartial('/_include/footer')?>


