<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
 header('location:logout.php');
  } else{
	if(isset($_POST['submit']))
	{	
	$patient=$_POST['allpatient'];
	$allocatedbed=$_POST['allcbed'];
	if($sql)
	{
	echo "<script>alert('Bed Allocated ');</script>";
	header('location:paymenthistory.php');
	
	}
	}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Payment History</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
		<style>
			.payment-history-area {
    background: url(assets/images/admin.jpg);
    background-repeat: no-repeat;
    background-position: top center;
    background-size: cover;
    z-index: 1;
    position: relative;
    overflow: hidden;
	margin-top: 15px;
}
.payment-history-area::after {
    background: rgba(255,255,255, 0.8) none repeat scroll 0 0;
    position: absolute;
    content: "";
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
}
.deposite-content {
    position: relative;
}
.deposite-content table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
.deposite-content td, 
.deposite-content th {
  border: 1px solid #ccc;
  text-align: left;
  padding: 8px;
}
.deposite-content tr:nth-child(even) {
  background-color: #E9EBEC;
}
.diposite-box {
    width: 80%;
    margin: 0 auto;
    background: #f5f5f5;
    padding: 40px;
    margin-bottom: 30px;
    position: relative;
}
.diposite-box::after {
    position: absolute;
    content: "";
    left: 0;
    top: 0px;
    width: 100%;
    height: 5px;
    background: #E6922E;
}
.diposite-box h4 {
    display: inline-block;
    font-size: 26px;
    background: #E6922E;
    padding: 10px 30px;
    margin-bottom: 25px;
    border-radius: 3px;
    color:#fff;
}
.diposite-box span {
    float: right;
    font-size: 28px;
    color: #fff;
    background: #E6922E;
    padding: 10px 20px;
    border-radius: 3px;
    line-height: 32px;
}
		</style>
	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
				
						<?php include('include/header.php');?>
						
				<!-- end: TOP NAVBAR -->
			</div>
			<div class="payment-history-area bg-color fix area-padding-2">
            <div class="container">
               <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
                            <h3>Patients payment history</h3>
                            <p>Breakdown of last payments over some period.</p>
						</div>
					</div>
				</div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="deposite-content">
                            <div class="diposite-box">
                                <h4>July payment history</h4>
                                <span><i class="fa fa-money"></i></span>
                                <div class="deposite-table">
                                    <table>
                                        <tr>
                                            <th>Name</th>
                                            <th>Date</th>
                                            <th>Amount</th>
                                            <th>Currency</th>
                                        </tr>
                                        <tr>
                                            <td>Admond sayhel</td>
                                            <td>Jan 02, 2020</td>
                                            <td>$1000</td>
                                            <td>Bitcoin</td>
                                        </tr>
                                        <tr>
                                            <td>Jonshon</td>
                                            <td>Dec 12, 2019</td>
                                            <td>$5000</td>
                                            <td>USD</td>
                                        </tr>
                                        <tr>
                                            <td>Hopper</td>
                                            <td>Dec 22, 2019</td>
                                            <td>$4000</td>
                                            <td>Ripple</td>
                                        </tr>
                                        <tr>
                                            <td>Admond sayhel</td>
                                            <td>Jan 02, 2020</td>
                                            <td>$3000</td>
                                            <td>Bitcoin</td>
                                        </tr>
                                        <tr>
                                            <td>Anjel july</td>
                                            <td>Jan 05, 2020</td>
                                            <td>$500</td>
                                            <td>USD</td>
                                        </tr>
                                        <tr>
                                            <td>Lagisha</td>
                                            <td>Jan 12, 2020</td>
                                            <td>$5000</td>
                                            <td>Bitcoin</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="diposite-box">
                                <h4>June payment history</h4>
                                <span><i class="fa fa-book"></i></span>
                                <div class="deposite-table">
                                    <table>
                                        <tr>
                                            <th>Name</th>
                                            <th>Date</th>
                                            <th>Amount</th>
                                            <th>Currency</th>
                                        </tr>
                                        <tr>
                                            <td>Arnold</td>
                                            <td>Jan 04, 2020</td>
                                            <td>$1000</td>
                                            <td>USD</td>
                                        </tr>
                                        <tr>
                                            <td>Jhon Abra</td>
                                            <td>Jan 07, 2020</td>
                                            <td>$6000</td>
                                            <td>USD</td>
                                        </tr>
                                        <tr>
                                            <td>Lanisha</td>
                                            <td>Jan 13, 2020</td>
                                            <td>$5000</td>
                                            <td>USD</td>
                                        </tr>
                                        <tr>
                                            <td>Gongales</td>
                                            <td>Jan 12, 2020</td>
                                            <td>$2000</td>
                                            <td>USD</td>
                                        </tr>
                                        <tr>
                                            <td>Admond sayhel</td>
                                            <td>Jan 10, 2020</td>
                                            <td>$1000</td>
                                            <td>USD</td>
                                        </tr>
                                        <tr>
                                            <td>Remond</td>
                                            <td>Jan 02, 2020</td>
                                            <td>$3000</td>
                                            <td>USD</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>
			<!-- end: FOOTER -->
		
			<!-- start: SETTINGS -->
	<?php include('include/setting.php');?>
			
			<!-- end: SETTINGS -->
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
<?php } ?>