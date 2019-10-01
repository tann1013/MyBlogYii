<div class="siteInfo clear">
  <div class="wrap">
    <div class="box">
      <h2 class="title">联系我们</h2>
      <div class="action">
        <p class="home"><?php echo $this->_conf['_address']?></p>
        <p class="telephone"><?php echo $this->_conf['_telephone']?></p>
        <p class="telephone"><?php echo $this->_conf['_fax']?></p>
        <p class="mobile"><?php echo $this->_conf['_mobile']?></p>
        <p class="email"><?php echo $this->_conf['admin_email']?></p>
      </div>
    </div>
    <div class="box paddLeft">
      <h2 class="title">网站导航</h2>
      <div class="action"> <span class="actionTitle">友情链接</span><?php foreach((array)Bagecms::getList('link','_link',array('where'=>"status_is='Y' ",'order'=>'id DESC', 'limit'=>4)) as $link):?> <a href="<?php echo $link['site_url']?>" title="<?php echo $link['site_name']?>"><?php echo $link['site_name']?></a><?php endforeach?> </div>
      <div class="clear"></div>
    </div>
    <div class="box paddLeft">
      <h2 class="title">小程序</h2>
      <div class="action"> <img src="<?php echo $this->_baseUrl?>/static/images/bagecms.png" width="100" height="100" /></div>
    </div>
    <div class="clear"></div>
  </div>
</div>
</div>
<div id="footer">
  <div class="wrap clear">
    <div class="act">
      <p><?php echo $this->_conf['site_copyright']?>&nbsp;&nbsp;Powered by <a href="http://www.vandin.net/index.php">VandinCMS</a> &nbsp;&nbsp;&nbsp;

<!--        --><?php //if($this->_conf['site_icp']):?>
<!--          ( <a href="http://www.miitbeian.gov.cn/" target="_blank">-->
<!--            --><?php //echo $this->_conf['site_icp']?><!--</a> ) -->
<!--        --><?php //endif?><!----><?php //echo $this->_conf['site_stats']?>
      </p>
      <!--cnzz统计代码-->
<!--      <p><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1254976991'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1254976991%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script></p>-->
      <!--cnzz统计代码-->
      <p>
        <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1254976991'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1254976991%26online%3D1%26show%3Dline' type='text/javascript'%3E%3C/script%3E"));</script>
      </p>
    </div>
  </div>
</div>
</div>
</body>
</html>