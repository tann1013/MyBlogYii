<div class="sidebar" id="sidebar">
    <div class="mbox sideNav">
      <h2>关于</h2>
      <ul>
        <li><a href="<?php echo $this->createUrl('page/show',array('name'=>'about'))?>"<?php if($this->id == 'page' && trim($this->_gets->getParam('name') == 'about')):?> class="current"<?php endif?>>个人简历</a></li>
        <li><a href="<?php echo $this->createUrl('page/show',array('name'=>'cultural'))?>"<?php if($this->id == 'page' && trim($this->_gets->getParam('name') == 'cultural')):?> class="current"<?php endif?>>工作经历</a></li>
        <li><a href="<?php echo $this->createUrl('page/show',array('name'=>'team'))?>"<?php if($this->id == 'page' && trim($this->_gets->getParam('name') == 'team')):?> class="current"<?php endif?>>技术栈or爱好</a></li>
        <li><a href="<?php echo $this->createUrl('page/show',array('name'=>'contact'))?>"<?php if($this->id == 'page' && trim($this->_gets->getParam('name') == 'contact')):?> class="current"<?php endif?>>github</a></li>
      </ul>
    </div>
<!--    <div class="sideBox mbox">-->
<!--      <p>--><?php //echo $this->_conf['_telephone_400']?><!--</p>-->
<!--    </div>-->
  </div>