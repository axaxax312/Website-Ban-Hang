<!DOCTYPE html>
<html>
    <head>
        <title>Website cửa hàng bán giày online  Quỳnh Nga</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/bootstrap.min.css">
        
        <script  src="<?php echo base_url() ?>public/frontend/js/jquery-3.2.1.min.js"></script>
        <script  src="<?php echo base_url() ?>public/frontend/js/bootstrap.min.js"></script>
        <!---->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/slick.css"/>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/slick-theme.css"/>
        <!--slide-->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>public/frontend/css/style.css">
        
    </head>
    <body>
        <div id="wrapper">
            <!---->
            <!--HEADER-->
            <div id="header">
                <div id="header-top">
                    <div class="container">
                        <div class="row clearfix">
                            <div class="col-md-6" id="header-text">
                                <a>Đồ án tốt nghiệp</a><b> Xây dựng website bán hàng </b>
                            </div>
                            <div class="col-md-6">
                                <nav id="header-nav-top">
                                    <ul class="list-inline pull-right" id="headermenu">
                                        <?php if(isset($_SESSION['auth_name'])) :?>
                                            <li>
                                                <a href="" style="color: red">
                                                    <i class="fa fa-share-square-o"></i> Xin chào <?php echo $_SESSION['auth_name'] ?>
                                                </a>
                                                <ul id="header-submenu">
                                                    <li><a href="">Contact</a></li>
                                                    <li><a href="">Cart</a></li>
                                                    <li><a href="">Checkout</a></li>
                                                </ul>
                                            </li>
                                           
                                            <li>
                                                <a href="thoat.php"><i class="fa fa-share-square-o"></i> Thoát </a>
                                            </li>
                                        <?php else :?>
                                            <li>
                                                <a href="register.php"><i class="fa fa-unlock"></i> Đăng ký </a>
                                            </li>
                                            <li>
                                                <a href="login.php"><i class="fa fa-sign-in"></i> Đăng nhập</a>
                                            </li>
                                        <?php endif ; ?>        
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row" id="header-main">
                        <div class="col-md-5">
                            <form class="form-inline" action="tim-kiem.php" method="GET">
                                <div class="form-group">
                                    <label>
                                        <select name="category" class="form-control" style="font-size: 12px">
                                            <option value=""> Chọn danh mục   </option>
                                            <?php foreach($danhmucsort as $item) : ?>
                                                <option value="<?php echo $item['id'] ?>" <?php echo isset($category) && $category == $item['id'] ? "selected = 'selected'" : '' ?>> <?php $str = ''; for($i = 0 ; $i < $item['level']; $i++){ echo $str; $str.="| - -";} ?> <?php echo $item['tendanhmuc'] ?>  </option>
                                            <?php endforeach ; ?>
                                        </select>
                                    </label>
                                    <input type="text" name="keywork" placeholder=" input keywork" value="<?php echo isset($keywork) ? $keywork : '' ?>" class="form-control">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4">
                            <a href="<?php echo base_url() ?>">
                               <span style="font-size: 27px;color: red;font-weight: bold;">Fashion shoes shop</span>
                            </a>
                        </div>
                        <div class="col-md-3" id="header-right">
                            <div class="pull-right">
                                <div class="pull-left">
                                    <i class="glyphicon glyphicon-phone-alt"></i>
                                </div>
                                <div class="pull-right">
                                    <p id="hotline">HOTLINE</p>
                                    <p>0986.420.994</p>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--END HEADER-->


            <!--MENUNAV-->
            <div id="menunav">
                <div class="container">
                    <nav>
                        <div class="home pull-left">
                            <a href="index.php">Trang chủ</a>
                        </div>
                        <!--menu main-->
                        <ul id="menu-main">
                            <li>
                                <a href="<?php echo base_url() ?>/gioi-thieu.php">Giới thiệu</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url() ?>/dia-chi.php">Địa chỉ</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url() ?>/tin-tuc.php">Tin tức</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url() ?>/danh-gia-website.php">Đánh giá</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url() ?>/lien-he.php">Liên hệ</a>
                            </li>
                        </ul>
                        <!-- end menu main-->

                        <!--Shopping-->
                        <ul class="pull-right" id="main-shopping">
                            <li>
                                <a href="danh-sach-gio-hang.php"><i class="fa fa-shopping-basket"></i> My Cart  <b class="tongsogh"><?php echo $tongsanphamgiohang ?></b>  </a>
                            </li>
                        </ul>
                        <!--end Shopping-->
                    </nav>
                </div>
            </div>
            <!--ENDMENUNAV-->
            