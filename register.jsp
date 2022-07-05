<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Marital an Wedding Category Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
</head>
<body>
<!-- ============================  Navigation Start =========================== -->
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner navbar-inner_1">
        <div class="container">
           <div class="navigation">
             <nav id="colorNav">
			   <ul>
				<li class="green">
				  <a href="#" class="icon-home"></a>
				  <ul>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="index.jsp">Logout</a></li>
				  </ul>
				</li>
			   </ul>
             </nav>
           </div>
           <a class="brand" href="index.jsp"><img src="images/logo.png" alt="logo"></a>
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
 
		 <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"></a>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        <ul class="nav navbar-nav nav_1">
		            <li><a href="index.jsp">Home</a></li>
		            <li><a href="about.html">About</a></li>
		    		<li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Matches<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="matches.html">New Matches</a></li>
		                <li><a href="viewed-profile.html">Who Viewed my Profile</a></li>
		                <li><a href="viewed-not_contacted.html">Viewed & not Contacted</a></li>
		                <li><a href="members.html">Premium Members</a></li>
		                <li><a href="shortlisted.html">Shortlisted Profile</a></li>
		              </ul>
		            </li>
					<li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="search.html">Regular Search</a></li>
		                <li><a href="profile.html">Recently Viewed Profiles</a></li>
		                <li><a href="search-id.html">Search By Profile ID</a></li>
		                <li><a href="faq.html">Faq</a></li>
		                <li><a href="shortcodes.html">Shortcodes</a></li>
		              </ul>
		            </li>
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Messages<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="inbox.html">Inbox</a></li>
		                <li><a href="inbox.html">New</a></li>
		                <li><a href="inbox.html">Accepted</a></li>
		                <li><a href="sent.html">Sent</a></li>
		                <li><a href="upgrade.html">Upgrade</a></li>
		              </ul>
		            </li>
		            <li class="last"><a href="contact.html">Contacts</a></li>
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.html"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Register</li>
     </ul>
   </div>
   <div class="services">
   	  <div class="col-sm-6 login_left">
	     <form method="post" action="registration.jsp" >
			<div class="form-group">
		      <label for="edit-name">Email <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="email" class="form-text required">
		    </div>
		    <div class="form-group">
		      <label for="edit-pass">Password <span class="form-required" title="This field is required.">*</span></label>
		      <input type="password" id="edit-pass" name="pass" class="form-text required">
		    </div>
	  	    <div class="form-group">
		      <label for="edit-name">First Name <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="fname" class="form-text required">
		    </div>
			<div class="form-group">
		      <label for="edit-name">Last Name <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="lname" class="form-text required">
		    </div>	

			<div class="form-group form-group1">
                <label class="col-sm-2 control-lable" for="sex">Gender : </label>
                <div class="col-sm-10">
                    <div class="radios">
				        <label for="radio-01" class="label_radio">
				            <input type="radio" name="gender" value="Male"> Male
				        </label>
				        <label for="radio-02" class="label_radio">
				           <input type="radio" name="gender" value="Female"> Female
				        </label>
	                </div>
                </div>
                <div class="clearfix"> </div>
             </div>
			 
                <div class="form-group">
		      <label for="edit-pass">DOB <span class="form-required" title="This field is required.">*</span></label>
		      <input type="date" name="dob" size="60" class="form-text required">
                </div>
		    
                <div class="col-sm-12 form_box1">
                    <div class="select-block1">
				    <label>Height <span class="form-required" title="This field is required.">*</span></label>
						<select name="height" class="form-control">
							<option>Please Select</option>
							<option value="4' 0">4' 0" (1.22 mts)</option>
							<option value="4' 1">4' 1" (1.24 mts)</option>
							<option value="4' 2">4' 2" (1.28 mts)</option>
							<option value="4' 3">4' 3" (1.31 mts)</option>
							<option value="4' 4">4' 4" (1.34 mts)</option>
							<option value="4' 5">4' 5" (1.35 mts)</option>
							<option value="4' 6">4' 6" (1.37 mts)</option>
							<option value="4' 7">4' 7" (1.40 mts)</option>
							<option value="4' 8">4' 8" (1.42 mts)</option>
							<option value="4' 9">4' 9" (1.45 mts)</option>
							<option value="4' 10">4' 10" (1.47 mts)</option>
							<option value="4' 11">4' 11" (1.50 mts)</option>
							<optgroup label="&nbsp;"></optgroup>
							<option value="5' 0">5' 0" (1.52 mts)</option>
							<option value="5' 1">5' 1" (1.55 mts)</option>
							<option value="5' 2">5' 2" (1.58 mts)</option>
							<option value="5' 3">5' 3" (1.60 mts)</option>
							<option value="5' 4">5' 4" (1.63 mts)</option>
							<option value="5' 5">5' 5" (1.65 mts)</option>
							<option value="5' 6">5' 6" (1.68 mts)</option>
							<option value="5' 7">5' 7" (1.70 mts)</option>
							<option value="5' 8">5' 8" (1.73 mts)</option>
							<option value="5' 9">5' 9" (1.75 mts)</option>
							<option value="5' 10">5' 10" (1.78 mts)</option>
							<option value="5' 11">5' 11" (1.80 mts)</option>
							<optgroup label="&nbsp;&nbsp;"></optgroup>
							<option value="6' 0">6' 0" (1.83 mts)</option>
							<option value="6' 1">6' 1" (1.85 mts)</option>
							<option value="6' 2">6' 2" (1.88 mts)</option>
							<option value="6' 3">6' 3" (1.91 mts)</option>
							<option value="6' 4">6' 4" (1.93 mts)</option>
							<option value="6' 5">6' 5" (1.96 mts)</option>
							<option value="6' 6">6' 6" (1.98 mts)</option>
							<option value="6' 7">6' 7" (2.01 mts)</option>
							<option value="6' 8">6' 8" (2.03 mts)</option>
							<option value="6' 9">6' 9" (2.06 mts)</option>
							<option value="6' 10">6' 10" (2.08 mts)</option>
							<option value="6' 11">6' 11" (2.11 mts)</option>
							<optgroup label="&nbsp;&nbsp;&nbsp;"></optgroup>
							<option value="7' 0">7' 0 (2.13 mts) plus</option>
						</select>
                </div>
            </div>
            <div class="clearfix"> </div>
			<div><br></div>
			
			<div class="col-sm-12 form_box1">
                <div class="select-block1">
				    <label>Marital Status <span class="form-required" title="This field is required.">*</span></label>
						<select name="mstatus" class="form-control">
							<option>Please Select</option>	                    
							<option value="Single">Single</option>
							<option value="Married">Married</option>							
							<option value="Divorced">Divorced</option>
							<option value="Widowed">Widowed</option>												
						</select>
                </div>
            </div>
            <div class="clearfix"> </div> 
			<div><br></div>
			
			<div class="col-sm-12 form_box1">
                <div class="select-block1">
				    <label>Mother Tongue <span class="form-required" title="This field is required.">*</span></label>
						<select name="mtongue" class="form-control">
							<option>Please Select</option>	                    
                                                        <option value="Hindi /Madhya Pradesh">Hindi /Madhya Pradesh</option>
							<option value="Hindi">Hindi</option>
							<option value="Punjabi">Punjabi</option>
							<option value="Bihari/Maithili/Magahi">Bihari/Maithili/Magahi</option>
							<option value="Rajasthani/ Jaipuri">Rajasthani/ Jaipuri</option>
							<option value="Haryanvi">Haryanvi</option>
							<option value="Himachali/Pahari">Himachali/Pahari</option>
							<option value="Kashmiri/Dogri">Kashmiri/Dogri</option>
							<option value="Sindhi">Sindhi</option>
							<option value="Urdu">Urdu</option>					
						</select>
                </div>
            </div>
            <div class="clearfix"> </div>
			<div><br></div>			
			
			<div class="col-sm-12 form_box1">
                <div class="select-block1">
				    <label>Caste <span class="form-required" title="This field is required.">*</span></label>
                    <select name="caste" class="form-control">
	                    <option>Please Select</option>	                    
                                    <option value="sharma">Sharma</option>
                                    <option value="jain">Jain</option>
                                    <option value="garg">garg</option>
                                    <option value="Dev">Dev</option>
                                    <option value="Chauhan">Chauhan</option>
                                    <option value="Gupta">Gupta</option>
                                    <option value="Khan">Khan</option>
                                    <option value="Kumawat">Kumawat</option>
                                    <option value="Sain">Sain</option>
                                    <option value="soni">soni</option>
                                    <option value="saini">saini</option>	
                                    <option value="jaroli">jaroli</option>
                                    <option value="bhadu">bhadu</option>
                    </select>
                </div>
            </div>
            <div class="clearfix"> </div>
			<div><br></div>
			
			<div class="col-sm-12 form_box1">
                <div class="select-block1">
				    <label>Religion <span class="form-required" title="This field is required.">*</span></label>
						<select name="religion" class="form-control">
							<option>Please Select</option>
							<option value="Hindu">Hindu</option>
							<option value="Muslim">Muslim</option>
							<option value="Sikh">Sikh</option>
							<option value="Christian">Christian</option>
							<option value="Buddhist">Buddhist</option>
							<option value="Jain">Jain</option>
							<option value="Parsi">Parsi</option>									
						</select>
                </div>
            </div>
            <div class="clearfix"> </div>
			<div><br></div>            
			 
			<div class="col-sm-12 form_box1">
                <div class="select-block1">
				    <label>City <span class="form-required" title="This field is required.">*</span></label>
						<select name="city" class="form-control">
							<option>city</option>	                    
                                                        <option value="Bikaner">Bikaner</option>
							<option value="Jaipur">Jaipur</option>
							<option value="Alwar">Alwar</option>
							<option value="Jodhpur">Jodhpur</option>
							<option value="Kota">Kota</option>	
							<option value="Mumbai">Mumbai</option>
							<option value="Banglore">Bangalore</option>
							<option value="Hyderabad">Hyderabad/Secunderabad</option>
							<option value="Pune">Pune/ Chinchwad</option>
							<option value="Chennai">Chennai/ Madras</option>
							<option value="Kolkata">Kolkata</option>							
						</select>
                </div>
            </div>
            <div class="clearfix"> </div>
			<div><br></div>			
			
			<div class="col-sm-12 form_box1">
                <div class="select-block1">
                    <label>State <span class="form-required" title="This field is required.">*</span></label>
			<select name="state" class="form-control">
                            <option>state</option>	                    
                            <option value="Rajasthan">Rajasthan</option>
				<option value="Gujrat">Gujrat</option>
				<option value="Uttar Pradesh">Uttar Pradesh</option>
				<option value="Maharastra">Maharastra</option>
				<option value="Madhya Pradesh">Madhya Pradesh</option>						
			</select>
                </div>
            </div>
            <div class="clearfix"> </div>
			<div><br></div>
            <div class="form-group">
		<label for="edit-name">Occupation <span class="form-required" title="This field is required.">*</span></label>
		<input type="text" id="edit-name" name="occupation" size="60"class="form-text required">
            </div>
            <div class="form-group">
		<label for="edit-name">Mobile No. <span class="form-required" title="This field is required.">*</span></label>
		<input type="text" id="edit-name" name="mob" class="form-text required">
            </div>
			
		<div class="form-actions">
				<input type="submit" id="edit-submit" value="Submit" class="btn_1 submit">
		</div>
            </form>
	  </div>
	  <div class="col-sm-6">
	     <ul class="sharing">
			<li><a href="#" class="facebook" title="Facebook"><i class="fa fa-boxed fa-fw fa-facebook"></i> Share on Facebook</a></li>
		  	<li><a href="#" class="twitter" title="Twitter"><i class="fa fa-boxed fa-fw fa-twitter"></i> Tweet</a></li>
		  	<li><a href="#" class="google" title="Google"><i class="fa fa-boxed fa-fw fa-google-plus"></i> Share on Google+</a></li>
		  	<li><a href="#" class="linkedin" title="Linkedin"><i class="fa fa-boxed fa-fw fa-linkedin"></i> Share on LinkedIn</a></li>
		  	<li><a href="#" class="mail" title="Email"><i class="fa fa-boxed fa-fw fa-envelope-o"></i> E-mail</a></li>
		 </ul>
	  </div>
	  <div class="clearfix"> </div>
   </div>
  </div>
</div>
<div class="map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3150859.767904157!2d-96.62081048651531!3d39.536794757966845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1408111832978"> </iframe>
</div>
<div class="footer">
    	<div class="container">
    		<div class="col-md-4 col_2">
    			<h4>About Us</h4>
    			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris."</p>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Help & Support</h4>
    			<ul class="footer_links">
    				<li><a href="#">24x7 Live help</a></li>
    				<li><a href="contact.html">Contact us</a></li>
    				<li><a href="#">Feedback</a></li>
    				<li><a href="faq.html">FAQs</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Quick Links</h4>
    			<ul class="footer_links">
    				<li><a href="privacy.html">Privacy Policy</a></li>
    				<li><a href="terms.html">Terms and Conditions</a></li>
    				<li><a href="services.html">Services</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Social</h4>
    			<ul class="footer_social">
				  <li><a href="#"><i class="fa fa-facebook fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-twitter fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-google-plus fa1"> </i></a></li>
				  <li><a href="#"><i class="fa fa-youtube fa1"> </i></a></li>
			    </ul>
    		</div>
    		<div class="clearfix"> </div>
    		<div class="copy">
		       <p>Copyright © 2015 Marital . All Rights Reserved  | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
	        </div>
      </div>
</div>
</body>
</html>	