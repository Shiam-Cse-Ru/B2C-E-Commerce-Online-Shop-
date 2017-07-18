<?php
include('admin/connect.php');
include('session.php');
$get_id=$_GET['id'];

            
                        function createRandomPassword() {
                    $chars = "abcdefghijkmnopqrstuvwxyz023456789";
                    srand((double)microtime()*1000000);
                    $i = 0;
                    $pass = '' ;
                    while ($i <= 7) {
                        $num = rand() % 33;
                        $tmp = substr($chars, $num, 1);
                        $pass = $pass . $tmp;
                        $i++;
                    }
                    return $pass;
                }
                $confirmation = createRandomPassword();
                        

/* mysql_query("update order_details set status='Pending',transaction_code='$confirmation',modeofpayment='Online' where MemberID='$get_id'")or die(mysql_error());
 */


?>

<?php include('header.php'); ?>

<body>
    <?php
    include('navtop.php');
    ?>
    <div id="background">
  

        <div id="page">
            <div id="sidebar">
                <a href="user_index.php" class="logo"><img src="images/logo.gif" alt=""></a>
                <ul>
                    <li>
                        <span><a href="user_index.php"><i class="icon-home icon-large"></i>Home</a></span>
                    </li>
                    <li>
                        <span><a href="user_school.php"><i class=" icon-th-large icon-large"></i>Products</a></span>
                    </li>

                    <li>
                        <span><a href="user_about.php"><i class="icon-info-sign icon-large"></i>&nbsp;About US</a></span>
                    </li>

                    <li>
                        <span><a href="user_contact.php"><i class="icon-phone-sign icon-large"></i>Contact US</a></span>
                    </li>


                </ul>
                <?php include('sidebar.php'); ?>
                <div class="newsletter">

                </div>
            </div>
            <div id="content">
                <div class="hero-unit-table">
                    <div id="header">
                        

                    </div>
                    <div id="body">
                        <h3>Payment <pre style="color:green;font-size:20px;margin-left:-29px;">                       Your TK will be converted to Dollar</pre></h3>

                        <div class="hero-unit-table">

                    <table>
                    <tr>
                    <td>
                        <form action="https://www.sandbox.paypal.com/cgi-bin/webscr"  method="post">
                            <input type="hidden" name="cmd" value="_xclick" />
                           
                           
                                
                               <?php
                                    $cart_table = mysqli_query($dbcon,"select  * from order_details where memberID='$ses_id'") or die(mysqli_error());
                                    $cart_count = mysqli_num_rows($cart_table);
                                   $user_tbl= mysqli_query($dbcon,"select * from tb_member where memberID='$ses_id'") or die(mysqli_error());
                                     $user_tbl= mysqli_fetch_array($user_tbl);

                                    while ($cart_row = mysqli_fetch_array($cart_table)) {
                                        $order_id = $cart_row['orderid'];
                                        $product_id = $cart_row['productID'];
                                        $product_query = mysqli_query($dbcon,"select * from tb_products where productID='$product_id'") or die(mysqli_error());
                                        $product_row = mysqli_fetch_array($product_query);
                                        ?>
                         <?php include 'currency.php'; ?>
                           <input type="hidden" name="amount" value="<?php echo $currency ?>" />
                           <input type="hidden" name="item_number" value="<?php $confirmation; ?>" />

                           <?php } ?>
                             <input type="hidden" name="item_name"  value="<?php echo $product_row['name']; ?>" />
                           <input type="hidden" name="business" value="<?php echo $user_tbl['Email']; ?>" />
                                   
                          


                            <input type="hidden" name="currency_code" value="USD" />
                            <input type="hidden" name="lc" value="US" />
                            
                            <input type="image" src="img/paypal.jpg" border="0" name="submit" alt="Make payments with PayPal - it's fast, free and secure!" style="margin-left:150px;" class="img-rounded" />
                            <img alt="fdff" border="0" src="img/paypal.jpg" width="1" height="1" />
                            <!-- Payment confirmed -->
                            <input type="hidden" name="return" value="https://tameraplazainn.x10.mx/savingreservation.php?confirmation<?php echo $confirmation; ?>" />
                            <!-- Payment cancelled -->
                            <input type="hidden" name="rm" value="2" />
                             <input type="hidden" name="cancel_return" value="http://localhost/online_shop/index.php">
                            <input type="hidden" name="return" value="http://localhost/online_shop/success.php">
                    
                    
                        </form>
                        </td>
                        <td>
                    <form action='https://sandbox.2checkout.com/checkout/purchase' method='post'>
  <input type='hidden' name='sid' value='901320960' />
  <input type='hidden' name='mode' value='2CO' />
  <input type='hidden' name='li_0_type' value='product' />
  <input type='hidden' name='li_0_name' value="<?php echo $product_row['name']; ?>" />
      <?php
                                    $cart_table = mysqli_query($dbcon,"select  * from order_details where memberID='$ses_id'") or die(mysqli_error());
                                    $cart_count = mysqli_num_rows($cart_table);
                                    while ($cart_row = mysqli_fetch_array($cart_table)) {
                                        $order_id = $cart_row['orderid'];
                                        $product_id = $cart_row['productID'];
                                        $product_query = mysqli_query($dbcon,"select * from tb_products where productID='$product_id'") or die(mysqli_error());
                                        $product_row = mysqli_fetch_array($product_query);
                                        ?>
                         
                          <input type='hidden' name='li_0_price' value="<?php echo $currency; ?>" />

                           <?php } ?>
 
  <input type='hidden' name='card_holder_name' value='' />
  <input type='hidden' name='street_address' value='123 Test Address' />
  <input type='hidden' name='street_address2' value='Suite 200' />
  <input type='hidden' name='city' value='Columbus' />
  <input type='hidden' name='state' value='OH' />
  <input type='hidden' name='zip' value='43228' />
  <input type='hidden' name='country' value='USA' />
  <input type='hidden' name='email' value='shsiam_cse_ru@yahoo.com' />
  <input type='hidden' name='phone' value='614-921-2450' />
  <input name='submit' type='submit' value='Checkout' />
<input type="image" src="img/checkout.png" border="0" name="submit" alt="Make payments with PayPal - it's fast, free and secure!" style="margin-left:-120px;" class="img-rounded" />
<img alt="fdff" border="0" src="img/checkout.png" width="1" height="1" />
</form>
</td>
 </tr> 
        </table> 
                  <br>  <br>  <br>  <br>  <br>        
                    </div>
                    </div>
                    <br>
                    <div id="footer">
<?php include('footer_user.php'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php include('footer_bottom.php'); ?>
</body>
</html>



                        
                               