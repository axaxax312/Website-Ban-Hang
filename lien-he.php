<?php

    /**
     * gọi file autoload
     */
    require_once __DIR__ . "/autoload/autoload.php";
   
?>  
    <?php  require_once __DIR__ . "/include/header.php"; ?>
    <div id="maincontent">
        <div class="breadcrumbs theme-clearfix">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="">Home</a><span class="divider"></span></li>
                    <li class="active"><span> lien hệ   </span></li>
                </ul>
            </div>
        </div>
        <div class="container">
            <?php  require_once __DIR__ . "/include/left.php"; ?>
            <div class="col-md-9 bor">
				<style>
					.contact { padding: 2px !important;}
				</style>
                <section style="padding: 20px">
                    <ul>
                        <li class="contact">  <strong>Cửa hàng </strong> Đồ án tốt nghiệp </li>
                        <li class="contact">  <strong>Địa chỉ </strong> : Tây Mỗ - Hà Nội </li>
                        <li class="contact">  <strong>SDT </strong> : 12121212 </li>
                        <li class="contact">  <strong>Email </strong>: admin@gmail.com </li>
                        
                    </ul>
               </section>
                <section class="box-main1" style="margin-bottom: 20px;">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29796.945862946493!2d105.72551586776825!3d21.00793506779156!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3134537a448f5531%3A0x9083fe6a98be371f!2zVMOieSBN4buXLCBOYW0gVOG7qyBMacOqbSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1572614771963!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </section>
           </div>
           </div>

      <?php  require_once __DIR__ . "/include/footer.php"; ?>