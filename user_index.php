<?php include('session.php'); ?>
<?php
include('admin/connect.php');
include('header.php');

?>
<html>
<head>
    
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
</head>
<body>
    <?php
    include('navtop.php');
    ?>
         <?php
        include ('navbarfixed.php');
        ?>

        <div id="page">

          <?php include ('nav_sidebar2.php');?>

            <div id="content">
                <div class="hero-unit-table">                        <!-- image slider -->
                                  <div id="wowslider-container1">
<div class="ws_images"><ul>
        <li><img src="data1/images/1.jpg" alt="1" title="1" id="wows1_0"/></li>
        <li><img src="data1/images/2.jpg" alt="2" title="2" id="wows1_1"/></li>
        <li><img src="data1/images/3.jpg" alt="3" title="3" id="wows1_2"/></li>
        <li><img src="data1/images/4.jpg" alt="4" title="4" id="wows1_3"/></li>
        <li><img src="data1/images/5.jpg" alt="5" title="5" id="wows1_4"/></li>
        <li><img src="data1/images/6.jpg" alt="6" title="6" id="wows1_5"/></li>
        <li><a href="http://wowslider.com"><img src="data1/images/7.jpg" alt="http://wowslider.com/" title="7" id="wows1_6"/></a></li>
        <li><img src="data1/images/8.jpg" alt="8" title="8" id="wows1_7"/></li>
    </ul></div>
    <div class="ws_bullets"><div>
        <a href="#" title="1"><span><img src="data1/tooltips/1.jpg" alt="1"/>1</span></a>
        <a href="#" title="2"><span><img src="data1/tooltips/2.jpg" alt="2"/>2</span></a>
        <a href="#" title="3"><span><img src="data1/tooltips/3.jpg" alt="3"/>3</span></a>
        <a href="#" title="4"><span><img src="data1/tooltips/4.jpg" alt="4"/>4</span></a>
        <a href="#" title="5"><span><img src="data1/tooltips/5.jpg" alt="5"/>5</span></a>
        <a href="#" title="6"><span><img src="data1/tooltips/6.jpg" alt="6"/>6</span></a>
        <a href="#" title="7"><span><img src="data1/tooltips/7.jpg" alt="7"/>7</span></a>
        <a href="#" title="8"><span><img src="data1/tooltips/8.jpg" alt="8"/>8</span></a>
    </div></div>

<div class="ws_shadow"></div>

</div>  
                    <!-- end slider -->

                    <div id="body">

                        <div class="body">
                           <ul>
                                <li>
                                
                                    <a class="figure" href="#pic1" data-toggle = "modal"><img class = "image-rounded" src="pics/WOMEN SWEATSHIRTS/sweetshirt1.jpg" alt=""></a>
                                </li>
                                <li>
                                    <a class="figure" href="#pic2" data-toggle = "modal" ><img class = "image-rounded" src="pics/JEANS/jeans.jpg" alt=""></a>

                                </li>
                                <li>
                                    <a class="figure" href="#pic3" data-toggle = "modal" ><img class = "image-rounded" src="pics/TSHIRT/tshirt.jpg" alt=""></a>

                                </li>
                                <li>
                                    <a class="figure"  href="#pic4" data-toggle = "modal" ><img class="img-rounded" src="pics/WOMEN SWEATSHIRTS/sweetshirt.jpg" alt=""></a>         
                                </li>

                            </ul>
                            <ul>
                                <li>
                                
                                    <a class="figure" href="#pic5" data-toggle = "modal"><img class = "image-rounded" src="pics/JEANS/diesel.jpg" alt=""></a>
                                </li>
                                <li>
                                    <a class="figure" href="#pic6" data-toggle = "modal" ><img class = "image-rounded" src="pics/TSHIRT/tshirt7 - Copy.jpg" alt=""></a>

                                </li>
                                <li>
                                    <a class="figure" href="#pic7" data-toggle = "modal" ><img class = "image-rounded" src="pics/MEN FORMAL SHIRTS/shirt.jpg" alt=""></a>

                                </li>
                                <li>
                                    <a class="figure"  href="#pic8" data-toggle = "modal" ><img class="img-rounded" src="pics/BLAZERS/b.jpg" alt=""></a>         
                                </li>

                            </ul>
                            
                             
                        </div>

                    </div>
                    <div id="footer">
                        <?php include('footer_user.php'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
</body>
</html>
