<?php

    /**
     * gọi file autoload
     */
    require_once __DIR__ . "/autoload/autoload.php";
    $navactive = "gioi-thieu.php";
?>  
    <?php  require_once __DIR__ . "/include/header.php"; ?>
    
    <div id="maincontent">
        <div class="breadcrumbs theme-clearfix">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="index.php">Home</a><span class="divider"></span></li>
                   
                    <li class="active"> Giới thiệu </li>
                </ul>
            </div>
        </div>
        <div class="container">
            <?php  require_once __DIR__ . "/include/left.php"; ?>
            <div class="col-md-9 bor" style="padding: 20px;">
                <section>
                  
                    <div class="col-md-12">
                        <div>
							Nội dung giới thiệu

								<h1>Thêm vào đó, Liverpoo</h1>

								<p style="margin-bottom: 10px">Thêm vào đó, Liverpool cũng không dễ dàng "nhả người". Một vài tin đồn trước đây cho rằng đội chủ sân Anfield muốn nhận đủ 200 triệu bảng mới để tiền đạo người Ai Cập ra đi. Đó là một cái giá rất khó "nói chuyện" với bất kỳ đội bóng nào.</p>
								<img src="http://giaynam.com/images/upload/giay-the-thao-co-cao-mau-bac-dang-cap-2016-GCC589276B5.jpg" alt="">
								<p style="margin-bottom: 10px">Trong khi đó, trường hợp của Son Heung Min lại "sáng cửa" hơn rất nhiều. Tiền đạo người châu Á đang rất khao khát danh hiệu sau những năm tháng trắng tay cùng Tottenham. Việc được thi đấu cùng thần tượng Ronaldo cũng sẽ thôi thúc tiền đạo người Hàn Quốc chuyển tới Ý.</p>

								<p style="margin-bottom: 10px"><strong>Bên cạnh đó, Juventus đang</strong> có cầu thủ Tottenham muốn chiêu mộ. Đó là Dybala, tiền đạo từng muốn rời Juventus hồi hè vừa qua. Về mặt giá cả thì Son Heung Min thậm chí còn đắt hơn tiền đạo người Argentina (72 triệu bảng và 67,5 triệu bảng, theo Transfermarkt).</p>
						</div>
                    </div>
                </section>
                <!-- <a href="tin-tuc.php" class="btn btn-xs btn-danger" style="margin: 20px;">Tin khác</a> -->
            </div>
        </div>

        <div class="container" style="margin-top: 20px">
            <div class="col-md-4 bottom-content">
                <a href=""><img src="<?php echo base_url() ?>public/frontend/images/free-shipping.png"></a>
            </div>
            <div class="col-md-4 bottom-content">
                <a href=""><img src="<?php echo base_url() ?>public/frontend/images/guaranteed.png"></a>
            </div>
            <div class="col-md-4 bottom-content">
                <a href=""><img src="<?php echo base_url() ?>public/frontend/images/deal.png"></a>
            </div>
        </div>
      <?php  require_once __DIR__ . "/include/footer.php"; ?>