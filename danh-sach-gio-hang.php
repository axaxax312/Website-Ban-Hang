<?php

    /**
     * gọi file autoload
     */
    require_once __DIR__ . "/autoload/autoload.php";
    if ( ! isset($_SESSION['cart'] ))
    {
        echo " <script>alert('  Chưa có sản phẩm trong giỏ hàng   !'); location.href='index.php';</script>";
    }
    $sum = 0;
  
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $name    = postInput("name");
        $email   = postInput("email");
        $phone   = postInput("phone");
        $address = postInput("address");
        $comment = postInput("comment");


        $data = [
            'ten'         => $name,
            'sodienthoai' => $phone,
            'diachi'      => $address,
            'email'       => $email,
            'tongtien'    => $_SESSION['sums'],
            'noidung'     => $comment
        ];
   
        // tiến hành insert
         $id_instart = $db->insert("donhang",$data);
        if((isset($_SESSION['cart'])) && count($_SESSION['cart']) > 0)
        {
            foreach( $_SESSION['cart'] as $m => $l)
            {
                $data2 = [
                    'sanpham_id' => $m,
                    'donhang_id' => $id_instart,
                    'soluong'    => $l['qty'],
                    'gia'        => $l['gia'],
                    'hinhanh'    => $l['hinhanh']
                ];
                $id_instart2 = $db->insert("chitietdonhang",$data2);
                
            }

            unset($_SESSION['cart']);
            unset($_SESSION['tongtien']);
            unset($_SESSION['sums']);
            $_SESSION['success'] = ' Xác nhận thành công ! bạn hãy đợi bộ phận thanh toán xác nhận nhé ' ;
            redirectStyle('thong-bao-thanh-toan.php');

        }  
    }
    // session_destroy();
   
?>  
    <?php  require_once __DIR__ . "/include/header.php"; ?>
    <div id="maincontent">
        <div class="breadcrumbs theme-clearfix">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="">Home</a><span class="divider"></span></li>
                    <li class="active"><span> Giỏ hàng </span></li>
                </ul>
            </div>
        </div>
        <div class="container">
            <?php  require_once __DIR__ . "/include/left.php"; ?>
            <div class="col-md-9 bor">
                <section class="box-main1">
                    <h3 class="title-main"><a href=""> Giỏ hàng của bạn !  </a> </h3>
                    
                    <div class="showitem">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Id</th>
                                    <th>Tên</th>
                                    <th>Hình ảnh</th>
                                    <th> Kích thước </th>
                                    <th>Số Lượng</th>
                                    <th>Tiền</th>
                                    <th>Tổng tiền</th>
                                    <th> Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $stt = 1 ;foreach($_SESSION['cart'] as $key => $val ): ?>
                                <tr>
                                    <td><?php echo $stt; ?></td>
                                    <td><?php echo $key; ?></td>
                                    <td><?php echo $val['tensanpham'] ?></td>
                                    <td>
                                        <img src="<?php echo base_url() ?>public/uploads/product/<?php echo $val['hinhanh'] ?>" class="" with="30px" height="30px">
                                    </td>
                                    <td>
                                        
                                         <select class="form-control" name="size" readonly="readonly">
                                            <option value="1" <?php echo $val['size'] == 1 ? "selcted = 'selected'" : '' ?>>35</option>
                                            <option value="2" <?php echo $val['size'] == 2 ? "selcted = 'selected'" : '' ?>>36</option>
                                            <option value="3" <?php echo $val['size'] == 3 ? "selcted = 'selected'" : '' ?>>37</option>
                                            <option value="4" <?php echo $val['size'] == 4 ? "selcted = 'selected'" : '' ?>>38</option>
                                            <option value="5" <?php echo $val['size'] == 5 ? "selcted = 'selected'" : '' ?>>39</option>
                                            <option value="6" <?php echo $val['size'] == 6 ? "selcted = 'selected'" : '' ?>>40</option>
                                        </select>
                                    </td>
                                    <td>
                                        <input type="number" name="quantity" min="1" max="10" class="form-control"  id="qtyup" value="<?php echo $val['qty']; ?>">
                                        
                                    </td>
                                    <td><?php echo $val['gia']; ?></td>
                                    <td>
                                        <?php echo $val['gia'] * $val['qty']; ?>
                                    </td>
                                    <td> 

                                        <a  href="javascript:;" class="btn  btn-xs btn-info updatecart"  data-key=<?php echo $key ?>> <i class="fa fa-refresh" style="color: white"></i></a>
                                         <a  href="remove-gio-hang.php?id=<?php echo $key ?>" class="btn  btn-xs btn-danger" onclick="return confirm('Bạn có muốn xóa k ? ')"; > <i class="fa fa-times" style="color: white"></i></a>
                                    </td>
                                    
                                </tr>
                                <?php $sum += $val['gia'] * $val['qty'] ?>
                            <?php $stt++;  endforeach ;$_SESSION['tongtien'] = $sum; ?>
                            <tr class="text-right">

                                <td colspan="9">
                                    <h3>Tổng tiền : <a href="" class="btn btn-info"><?php echo formatprice($sum) ?> đ</a></h3>

                                    <h3 style="margin-top: 15px;margin-bottom: 15px;"> Giảm giá  : <a href="" class="btn btn-info"><?php echo checksumcart($sum) ?> % </a></h3>
                                    <?php $_SESSION['sums'] =  $sum * (100 - checksumcart($sum)) / 100?>
                                    <h3>Tổng tiền : <a href="" class="btn btn-danger"><?php echo formatprice($sum * (100 - checksumcart($sum)) / 100) ?> đ</a></h3>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <section>
                    <div class="col-md-12" style="padding-bottom: 20px">
                        <div class="col-md-6" id="dienthongtin">
                            <form action="" method="POST">
                            <h3> Mời bạn điền thông tin thanh toán </h3>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input id="email" type="email" class="form-control" <?php echo isset($auth_us) ? 'readonly="readonly"' : '' ?> name="email" placeholder="Email" required="required" value="<?php echo isset($auth_us) ? $auth_us['email'] : '' ?>">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input id="name" type="text" class="form-control" name="name" placeholder="Mời bạn nhập tên" required="" value="<?php echo isset($auth_us) ? $auth_us['name'] : '' ?>">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input id="name" type="number" class="form-control" name="phone" placeholder="Mời bạn nhập số điện thoại" required="" value="<?php echo isset($auth_us) ? $auth_us['phone'] : '' ?>">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                    <input id="name" type="text" class="form-control" name="address" placeholder="Mời bạn nhập địa chỉ" required="" value="<?php echo isset($auth_us) ? $auth_us['address'] : '' ?>">
                                </div>
                                <div class="input-group">
                                    <textarea required="" class="form-control" name="comment" placeholder="Ghi chú" rows="2" cols="100"></textarea>
                                </div>
                                <div class="input-group">
                                    <input type="submit" name="" value="Xác nhận thông tin " class="form-control">
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <h3> Hình thức thanh toán </h3>
                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" style="padding-top: 10px">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
                                        Chuyển khoản qua ngân hàng
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" style="height: 0px;">
                                    <div class="panel-body">
                                        Bạn vui lòng chuyển tiền vào tài khoản  ABC của chúng tôi ! Chung tôi sẽ gủi món hàng trong thời gian ngắn nhất tới bạn !
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                       Thanh toán khi giao hàng
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Kiểm tra trước khi nhận hàng
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>

      <?php  require_once __DIR__ . "/include/footer.php"; ?>