<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
 header('location:logout.php');
  } else{

if(isset($_POST['submit']))
{	
$invoiceid=$_SESSION['id'];
$payment=$_POST['payment'];
$name=$_POST['patname'];
$quantityl=$_POST['quantity'];
$currency=$_POST['currency'];
$unitprice=$_POST['price'];
$totalamount=$_POST['totalamount'];

$sql=mysqli_query($con,"insert into invoices(INVOICE_ID,PAYMENTMETHOD,CUSTOMER_NAME,TOTAL_AMOUNT,QUANTITY,CURRENCY,UNITPRICE) values('$invoiceid','$payment','$name','$totalamount','$quantityl','$currency','$unitprice')");
if($sql)
{
echo "<script>alert('Invoice added Successfully');</script>";
header('location:orderinvoice.php');

}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Invoice || Order Invoice</title>
		
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
		<link href="hms/account/invoice-system/css/style.css" rel="stylesheet">

	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#patemail").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
<div class="app-content">
<?php include('include/header.php');?>
						
<div class="main-content" >
<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
<section id="page-title">
<div class="row">
<div class="col-sm-8">
<h1 class="mainTitle">Invoice | Order Invoice</h1>
</div>
<ol class="breadcrumb">
<li>
<span>Invoice</span>
</li>
<li class="active">
<span>Order Invoice</span>
</li>

<li class="active">
<span>Order Invoice</span>
</li>
</ol>
</div>
</section>
<div class="container-fluid container-fullw bg-white">
<div class="row">
<div class="col-md-12">
<div class="row margin-top-30">
<div class="col-lg-8 col-md-12">
<div class="panel panel-white">
<div class="panel-heading">
<h5 class="panel-title">Order Invoice</h5>
</div>
<div class="panel-body">
<form role="form" method="post">

<div class="form-group">
<label for="doctorname">
Patient Name
</label>
<input type="text" name="patname" class="form-control"  placeholder="Enter Patient Name" required="true">
</div>
<div class="form-group">
<label for="fess">
 Patient Contact no
</label>
<input type="text" name="patcontact" class="form-control"  placeholder="Enter Patient Contact no" required="true" maxlength="10" pattern="[0-9]+">
</div>

<div class="form-group">

<div class="">
<label for="payment">
Method Of Payment
</label>

<select name="payment" class="form-control" required="true">
																<option>Select Method of Payment</option>
<?php $ret=mysqli_query($con,"select * from mop");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['mo']);?>">
																	<?php echo htmlentities($row['mo']);?>
																</option>
																<?php } ?>
																
															</select>


<select name="currency" class="form-control" required="true">
																<option value="">Select Currency</option>
<?php $ret=mysqli_query($con,"select * from currency");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['name']);?>">
																	<?php echo htmlentities($row['name']);?>
																</option>
																<?php } ?>
																
															</select>


</div>
</div>
<div class="form-group">
<label for="address">
Product Description
</label>
<textarea name="pataddress" class="form-control"  placeholder="Item name" required="true"></textarea>
</div>
<div class="form-group">
<label for="fess">
 Quantity
</label>
<input type="number" name="quantity" class="form-control"  placeholder="0" required="true">
</div>
<div class="form-group">
<label for="fess">
 Unit Price
</label>
<input type="text" name="price" class="form-control"  placeholder="0" required="true">
</div>
<div class="form-group">
<label for="fess">
 Amount
</label>
<input type="text" name="totalamount" class="form-control"  placeholder="0" required="true">
</div>
	

<button type="submit" name="submit" id="submit" class="btn btn-o btn-primary">
Generate Invoice
</button>
</form>
</div>
</div>
</div>
</div>
</div>
<div class="col-lg-12 col-md-12">
<div class="panel panel-white">
</div>
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
