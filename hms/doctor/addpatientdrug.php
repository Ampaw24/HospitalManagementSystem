<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
 header('location:logout.php');
  } else{

if(isset($_POST['submit']))
{	
$drugId=$_SESSION['id'];
$docname=$_POST['medname'];
$patientname=$_POST['pname'];
$patienthealth=$_POST['phealth'];
$drugs=$_POST['drug'];
$date=$_POST['date'];
$patientmail = $_POST['pmail'];

$sql=mysqli_query($con,"insert into drug_prescribtion(patient_doctor,patient_name,patient_health, drug1,date_presc,patient_mail) values('$docname','$patientname','$patienthealth','$drugs','$date','$patientmail')");
if($sql)
{
echo "<script>alert('Prescription Sent info added Successfully');</script>";
header('location:addpatientdrug.php');

}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Doctor||Prescriptions</title>
		
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
<h1 class="mainTitle">Doctor|| Patient Prescription</h1>
</div>
<ol class="breadcrumb">
<li>
<span>Docto</span>
</li>
<li class="active">
<span>Add Prescription</span>
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
<h5 class="panel-title">Add Prescription</h5>
</div>
<div class="panel-body">
<form role="form" name="" method="post">


<div class="form-group">
<label for="doctorname">
Patient Name
</label>
<input type="text" name="pname" class="form-control"  placeholder="Patient Name" required="true">
</div>

<div class="form-group">
<label for="doctorname">
Health Condition
</label>
<input type="text" name="phealth" class="form-control"  placeholder="Patient Health Condition" required="true">
</div>

<div class="form-group">
<label for="doctorname">
Patient Mail
</label>
<input type="text" name="pmail" class="form-control"  placeholder="Patient Health Condition" required="true">
</div>

<div class="form-group">
<label for="doctorname">
Prescribe Drugs
</label>
<input type="text" name="drug" class="form-control"  placeholder="Prescribe Drug" required="true">
</div>

<div class="form-group">
<label for="doctorname">
Date of Prescribtion
</label>
<input type="date" name="date" class="form-control"  placeholder="Select Date" required="true">
</div>

<div class="form-group">
															<label for="supplier">
																Doctor Name
															</label>
							<select name="medname" class="form-control" required="true">
																<option value="">Add Name</option>
<?php $ret=mysqli_query($con,"select * from doctors");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['doctorName']);?>">
																	<?php echo htmlentities($row['doctorName']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>



<button type="submit" name="submit" id="submit" class="btn btn-warning" style="width: 100px;"> 
Add
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
