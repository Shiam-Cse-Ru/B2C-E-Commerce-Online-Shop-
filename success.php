<html>
    <head>
        <title>PayPal Shopping Cart Example</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <!----in success.php page PayPal send $_Request array with payment status, transaction id , currency code and item number --->
        <div id="main">
            <h1 style=" margin-left: 75px;">PayPal Shopping Cart Example</h1>
            <div id="return">
                <h2>Payment Status </h2>
                <hr/>
                <?php if (!empty($_REQUEST)) { ?>
                    <h3 id='success'>Payment Successful</h3>
                <?php } else { ?>
                    <h3 id='fail'>something wrong</h3>
                <?php } ?>
                <P>Transaction Status - <?php
                    if (!empty($_REQUEST)) {
                        echo $_REQUEST['st'];
                    }
                    ?></P><P>Transaction Id -  <?php
                    if (!empty($_REQUEST)) {
                        echo$_REQUEST['tx'];
                    }
                    ?></P><div class='back_btn'><a  href='index.php' id= 'btn'><< Back to Products</a></div></div>
        </div>
</html>
