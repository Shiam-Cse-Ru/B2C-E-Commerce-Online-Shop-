<?php include('header.php'); ?>
<?php include('admin/connect.php'); 
//Start session
session_start();
//Unset the variables stored in session
unset($_SESSION['id']);
?>
<body>
    <?php
    include('navtop.php');
    ?>
    <div id="background">

        <div id="page">
            <?php include ('nav_sidebar.php');?>
            <div id="content">
                <div class="hero-unit-table">
                    <div id="header">
                        

                    </div>
                    <div id="body">

                        <h3>PriyoShop &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp We Accept Cash On Delivery</h3>
                        <div class="payment">
                         <img src="online-payment.png">                     
                            </div>
                        <hr>

                        <div class="row-fluid">
                            <div class="span12">

                                <div class="row-fluid">
  <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h3 style="color:#52B3D9">Pay Cash by Credit or Debit Card!</h3>
    <h5 style="color:#52B3D9">Get your product delivered at your home after paid cash to our paypal account.</h5>
  </div>
</div>
 <hr class="m-y-2">
                                   <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h3 style="color:#52B3D9">Pay Cash on Delivery after receiving your product at your home!</h3>
    <h5 style="color:#52B3D9">Get your product delivered at your home and then pay cash to our delivery person. No advance payment is required.</h5>
  </div>
</div>
 <hr class="m-y-2">
                                 <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h3 style="color:#52B3D9">Enjoy the easy payment option of bKash!</h3>
   <h5 style="color:#52B3D9;padding-left:20px;"> Payment process</h5>
  <ul style="color:#52B3D9;padding-left:20px;">
      <li>Go to bKash Mobile Menu by dialing *247#</li>
       <li>Choose 'Payment</li>
        <li>Enter the Account Number; 01717864118</li>
         <li>Enter Bill Amount</li>
          <li>Enter a reference against your payment (Your Name/Phone Number)</li>
           <li>Enter the counter number: 1</li>
            <li>Now enter your bKash PIN to confirm Done!</li>
             <li>You will receive a confirmation message from bKash</li>
             <li>Please, bKash pay to 01728386978</li>
  </ul>
  </div>
</div>
 <hr class="m-y-2">
 <img src="bKashProcess.png">
                                   
                                   
                                </div>
                            </div>
                        </div>
                    </div>






                </div>
                <div id="footer">
<?php include('footer.php'); ?>
                </div>
            </div>
        </div>
    </div>
    <?php 
    include('footer_bottom.php');
    ?>
</body>



</html>