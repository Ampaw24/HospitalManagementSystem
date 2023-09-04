<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) {
 header('location:logout.php');
  } else{
	if(isset($_POST['submit']))
{	




}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Nurse || Manage Bed</title>
		
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
	* {
  margin: 0;
  padding: 0; }

body {
  font-family: "Poppins", sans-serif;
  font-size: 14px;
  background-color: #ffffff;
}
  @media only screen and (max-width: 767px) {
    body {
      margin-top: 80px; } }

h2,
h3,
h4,
h5,
h6 {
  color: #000000;
  line-height: 1.3;
  font-weight: 700;
  font-family: "Ubuntu", sans-serif; }

p {
  color: #787878;
  font-size: 14px;
  line-height: 2;
  font-weight: 400; }

a {
  -webkit-transition: all 500ms ease 0s;
  transition: all 500ms ease 0s;
  text-decoration: none;
  outline: 0 solid transparent;
  color: #fbf5f5;
  font-weight: 600;
  font-size: 12px; }
  a:hover, a:focus {
    -webkit-transition: all 500ms ease 0s;
    transition: all 500ms ease 0s;
    text-decoration: none;
    outline: 0 solid transparent;
    color: #000000;
    font-weight: 600;
    font-size: 12px; }

ul,
ol {
  margin: 0; }
  ul li,
  ol li {
    list-style: none; }

img {
  height: auto;
  max-width: 100%; }

/* Spacing */
.mt-15 {
  margin-top: 15px !important; }

.mt-30 {
  margin-top: 30px !important; }

.mt-50 {
  margin-top: 50px !important; }

.mt-70 {
  margin-top: 70px !important; }

.mt-100 {
  margin-top: 100px !important; }

.mb-15 {
  margin-bottom: 15px !important; }

.mb-30 {
  margin-bottom: 30px !important; }

.mb-50 {
  margin-bottom: 50px !important; }

.mb-70 {
  margin-bottom: 70px !important; }

.mb-100 {
  margin-bottom: 100px !important; }

.ml-15 {
  margin-left: 15px !important; }

.ml-30 {
  margin-left: 30px !important; }

.ml-50 {
  margin-left: 50px !important; }

.mr-15 {
  margin-right: 15px !important; }

.mr-30 {
  margin-right: 30px !important; }

.mr-50 {
  margin-right: 50px !important; }

/* Height */
.height-400 {
  height: 400px !important; }

.height-500 {
  height: 500px !important; }

.height-600 {
  height: 600px !important; }

.height-700 {
  height: 700px !important; }

.height-800 {
  height: 800px !important; }

/* Section Padding */
.section-padding-80 {
  padding-top: 80px;
  padding-bottom: 80px; }

.section-padding-80-0 {
  padding-top: 80px;
  padding-bottom: 0; }

.section-padding-0-80 {
  padding-top: 0;
  padding-bottom: 80px; }

/* Section Heading */
.section-heading {
  margin-bottom: 50px;
  position: relative;
  z-index: 1; }
  .section-heading h2 {
    font-size: 30px;
    margin-bottom: 0;
    text-transform: capitalize;
    font-weight: 600; }
  .section-heading.text-left {
    text-align: left !important; }

/* Miscellaneous */
.bg-img {
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat; }

.bg-white {
  background-color: #ffffff !important; }

.bg-dark {
  background-color: #000000 !important; }

.bg-transparent {
  background-color: transparent !important; }

.font-bold {
  font-weight: 700; }

.font-light {
  font-weight: 300; }

.bg-overlay,
.bg-overlay-white {
  position: relative;
  z-index: 2;
  background-position: center center;
  background-size: cover; }
  .bg-overlay:hover,
  .bg-overlay-white:hover {
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    content: ""; }

.bg-overlay:hover {
  background-color: rgba(0, 0, 0, 0.5); }

.bg-overlay-white:hover {
  background-color: rgba(255, 255, 255, 0.9); }

/* ScrollUp */
#scrollUp {
  background-color: #ff084e;
  border-radius: 0;
  bottom: 60px;
  box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.3);
  color: #ffffff;
  font-size: 24px;
  height: 40px;
  line-height: 40px;
  right: 60px;
  text-align: center;
  width: 40px; }
  @media only screen and (max-width: 767px) {
    #scrollUp {
      bottom: 30px;
      right: 30px; } }
		.essence-btn {
  display: inline-block;
  min-width: 170px;
  height: 50px;
  color: #ffffff;
  border: none;
  border-radius: 0;
  padding: 0 40px;
  text-transform: uppercase;
  font-size: 12px;
  line-height: 50px;
  background-color: #0315ff;
  letter-spacing: 1.5px;
  font-weight: 600; }
  .essence-btn:hover, .essence-btn:focus {
    color: #ffffff;
    background-color: #dc0345; }
			.breadcumb_area {
  position: relative;
  z-index: 1;
  width: 100%;
  height: 140px; }
  .checkout_details_area form label {
  font-size: 12px;
  text-transform: uppercase;
  font-weight: 600; }
  .checkout_details_area form label span {
    color: #0315ff; }
.checkout_details_area form .form-control {
  height: 42px;
  border: 1px solid #ebebeb;
  background-color: transparent;
  border-radius: 0; }
.checkout_details_area form .nice-select {
  border-radius: 0;
  border: 1px solid #ebebeb; }
  .checkout_details_area form .nice-select .list {
    width: 100%;
    border-radius: 0; }

.order-details-confirmation {
  width: 100%;
  border: 2px solid #ebebeb;
  padding: 40px; }
  @media only screen and (max-width: 767px) {
    .order-details-confirmation {
      margin-top: 100px;
      padding: 20px; } }
  .order-details-confirmation .order-details-form li {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -ms-grid-row-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    margin-bottom: 0;
    font-size: 12px;
    text-transform: uppercase;
    padding: 20px 0;
    border-bottom: 2px solid #ebebeb;
    font-weight: 600; }
  .order-details-confirmation .card-header h6 a {
    display: block;
    font-size: 14px;
    text-transform: uppercase; }
    .order-details-confirmation .card-header h6 a i {
      color: #9f9f9f; }
  .order-details-confirmation .card {
    border: none; }
  .order-details-confirmation .card-header {
    background-color: transparent;
    border-bottom: none; }
  .order-details-confirmation .card-body p {
    font-size: 12px;
    line-height: 2;
    color: #9f9f9f; }

		</style>
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
<h1 class="mainTitle">Cash Payment || Take Cash Payment</h1>
</div>
<ol class="breadcrumb">
<li>
<span>Payment</span>
</li>
<li class="active">
<span>Take Cash Payment</span>
</li>
</ol>
</div>
</section>
<div class="container-fluid container-fullw bg-white">
<div class="row">
<div class="col-md-12">
	
</div>
    <!-- ##### Checkout Area Start ##### -->
    <div class="checkout_area section-padding-80">
        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-page-heading mb-30">
                            <h5>Billing Address</h5>
                        </div>

                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="first_name">First Name <span>*</span></label>
                                    <input type="text" class="form-control" id="first_name" value="" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="last_name">Last Name <span>*</span></label>
                                    <input type="text" class="form-control" id="last_name" value="" required>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="company">Company Name</label>
                                    <input type="text" class="form-control" id="company" value="">
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="country">Country <span>*</span></label>
                                    <select class="w-100" id="country">
                                        <option value="usa">United States</option>
                                        <option value="uk">United Kingdom</option>
                                        <option value="ger">Germany</option>
                                        <option value="fra">France</option>
                                        <option value="ind">India</option>
                                        <option value="aus">Australia</option>
                                        <option value="bra">Brazil</option>
                                        <option value="cana">Canada</option>
                                    </select>
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="street_address">Address <span>*</span></label>
                                    <input type="text" class="form-control mb-3" id="street_address" value="">
                                    <input type="text" class="form-control" id="street_address2" value="">
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="postcode">Postcode <span>*</span></label>
                                    <input type="text" class="form-control" id="postcode" value="">
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="city">Town/City <span>*</span></label>
                                    <input type="text" class="form-control" id="city" value="">
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="state">Province <span>*</span></label>
                                    <input type="text" class="form-control" id="state" value="">
                                </div>
                                <div class="col-12 mb-3">
                                    <label for="phone_number">Phone No <span>*</span></label>
                                    <input type="number" class="form-control" id="phone_number" min="0" value="">
                                </div>
                                <div class="col-12 mb-4">
                                    <label for="email_address">Email Address <span>*</span></label>
                                    <input type="email" class="form-control" id="email_address" value="">
                                </div>

                                <div class="col-12">
                                    <div class="custom-control custom-checkbox d-block mb-2">
                                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                                        <label class="custom-control-label" for="customCheck1">Terms and conitions</label>
                                    </div>
                                    <div class="custom-control custom-checkbox d-block">
                                        <input type="checkbox" class="custom-control-input" id="customCheck3">
                                        <label class="custom-control-label" for="customCheck3">Subscribe to our newsletter</label>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-5 ml-lg-auto">
                    <div class="order-details-confirmation">

                        <div class="cart-page-heading">
                            <h5>Your Order</h5>
                            <p>The Details</p>
                        </div>

                        <ul class="order-details-form mb-4">
                            <li><span>Product</span> <span>Total</span></li>
                            <li><span>Cocktail Yellow dress</span> <span>$59.90</span></li>
                            <li><span>Subtotal</span> <span>$59.90</span></li>
                            <li><span>Shipping</span> <span>Free</span></li>
                            <li><span>Total</span> <span>$59.90</span></li>
                        </ul>

                        <div id="accordion" role="tablist" class="mb-4">
                            <div class="card">
                                <div class="card-header" role="tab" id="headingOne">
                                    <h6 class="mb-0">
                                        <a data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne"><i class="fa fa-circle-o mr-3"></i>Paypal</a>
                                    </h6>
                                </div>

                                <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so dales. Phasellus sagittis auctor gravida. Integ er bibendum sodales arcu id te mpus. Ut consectetur lacus.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingTwo">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-circle-o mr-3"></i>cash on delievery</a>
                                    </h6>
                                </div>
                                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quis in veritatis officia inventore, tempore provident dignissimos.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingThree">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree"><i class="fa fa-circle-o mr-3"></i>credit card</a>
                                    </h6>
                                </div>
                                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse quo sint repudiandae suscipit ab soluta delectus voluptate, vero vitae</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingFour">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour"><i class="fa fa-circle-o mr-3"></i>direct bank transfer</a>
                                    </h6>
                                </div>
                                <div id="collapseFour" class="collapse show" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est cum autem eveniet saepe fugit, impedit magni.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <a href="#" class="btn essence-btn">Save Order</a>
                    </div>
                </div>
            </div>
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