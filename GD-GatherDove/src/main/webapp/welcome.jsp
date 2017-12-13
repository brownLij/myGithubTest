<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="<%=request.getContextPath()%>/icon/dove.ico">

	<title>Welcome Gather Dove</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/signin.css">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div id="header_area">
					<header class="center_content">
						<div class="logo pull-left"><a href="/GD-GatherDove"><img src="./images/logo4.png" id="logo4" alt="GATHER DOVE" /></a></div>
							<ul id="menu" class="header_right pull-right">
								<li><a href="/GD-GatherDove/About">About</a></li>
								<li><a data-toggle="modal" data-target="#log_in_popup">Login</li>
								<li><a data-toggle="modal" data-target="#sign_up_popup">Sign-Up</a></li>
								<li id="top-cart-frame" style="display: none;"></li>
							</ul>
					</header>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="home_banner_area">
					<div class="home_banner center_content text-center">
						<div class="home_banner_form">
							<div class="middle_info">
								<h1>Welcome to Gather Dove</h1>
								<h4>Enter the activation code to log your free time!</h4>
								<div class="search_box header_search">
									<form class="form-inline" action="#">                                 
										<div class="form-group">
											<input class="text-center form-control" placeholder="Enter the activation code" id="Searchactivation" />
										</div>
										<button type="search" class="btn btn-default">search</button>
									</form>
								</div>
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<div class="learning_btn_area">
												<div class="learning_btn_box center-block text-center"><a data-toggle="modal" data-target="#myModal" class="learning_btn">Initiate your own activity</a></div>
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

	<div class="popup_area modal fade" id="sign_up_popup" role="dialog">
		<div class="popup_holder modal-dialog">
			<!-- Close btn TBD -->
			<div class="close_btn" data-dismiss="modal"></div>
			<h2>Sign Up</h2>
			<form action="Register" method="post" id="su-register-form" name="su-form_register" class="form-horizontal" autocomplete="off">
				<div class="register_form">
					<section id="suPhase1">
						<div class="text_field"><input placeholder="First Name" id="su-first-name" type="text" name="firstName" oninvalid="InvalidMsg(this);" class="form-control" maxlength="75" title="First Name is a required field" required data-msg-required="Please enter your first name" autocomplete="off" /></div>
						<div class="text_field"><input placeholder="Last Name" id="su-last-name" type="text" name="lastName" class="form-control" oninvalid="InvalidMsg(this);" maxlength="75" title="Last Name is a required field" required data-msg-required="Please enter your last name" autocomplete="off"></div>
						<div class="text_field"><input placeholder="User Name" id="su-last-name" type="text" name="userName" class="form-control" oninvalid="InvalidMsg(this);" maxlength="75" title="Last Name is a required field" required data-msg-required="Please enter your last name" autocomplete="off"></div>
						<div class="text_field"><input id="su-btn-signup-continue" type="button" value="Continue" /></div>
					</section>
					<section id="suPhase2" style="display:none;">
						<div id="su-register-error-msg" class="alert-content" style="display:none;"></div>
						<div class="text_field"><input placeholder="Email" id="su-email" type="email" name="email" oninvalid="InvalidEmailMsg(this);" class="form-control ltr-text" maxlength="320" title="Email Address" required data-msg-required="Please enter your email address" data-msg-email="Please enter a valid email address" autocomplete="off" /></div>
						<div class="text_field"><input placeholder="phone number" id="su-phone-number" type="text" name="phone" oninvalid="Invalid(this);" class="form-control ltr-text" maxlength="320" title="Phone number" pattern="[0-9]{11-36}" required data-msg-required="Please enter your phone number" data-msg-email="Please enter a valid phone number" autocomplete="off" /></div>
						<div class="text_field"><input placeholder="Password" id="su-password" type="password" name="passWord" oninvalid="InvalidMsg(this);" class="form-control ltr-text" title="Password is a required field" data-original-title="Password length should be at least 6 characters contains Latin characters or numbers only" pattern="[0-9a-zA-Z]{6,32}" required data-msg-required="Please enter password" autocomplete="off" /> <a id="suShowAndHidePassword" class="show_btn">Show</a></div>
						<div class="text_field"><input placeholder="Confirm Password" id="su-confirm-password" type="password" name="ConfirmPassword" title="Confirm Password" class="form-control ltr-text" autocomplete="off" /><a id="suShowAndHideConfirmationPassword" class="show_btn">Show</a></div>

						<div class="text_field"><input id="su-btn-register" type="submit" value="Register" title="Register Now" data-loading-text="Please wait..." /></div>
						<div id="su-register-validation-summary"></div>
					</section>
				</div>
			</form>
		</div>
	</div>
	
	<div class="popup_area modal fade" id="log_in_popup" role="dialog">
		<div class="popup_holder modal-dialog">
			<!-- Close btn TBD -->
			<div class="close_btn" data-dismiss="modal"></div>
			<h2>Log in</h2>
			<form id="su-register-form" name="su-form_register" class="form-horizontal" autocomplete="off">
				<div class="login_form">					
						<div class="text_field"><input placeholder="User Name" id="login-username" type="text" name="userName" class="form-control" oninvalid="InvalidMsg(this);" maxlength="75" title="Last Name is a required field" required data-msg-required="Please enter your user name" autocomplete="off"></div>
						<div id="su-register-error-msg" class="alert-content" style="display:none;"></div>
						<div class="text_field"><input placeholder="Password" id="login-password" type="password" name="passWord" oninvalid="InvalidMsg(this);" class="form-control ltr-text" title="Password is a required field" data-original-title="Password length should be at least 6 characters contains Latin characters or numbers only" pattern="[0-9a-zA-Z]{6,32}" required data-msg-required="Please enter password" autocomplete="off" /></div>
						
						<div class="text_field"><input id="su-btn-signIn" type="button" value="LogIn" title="LogIn Now" data-loading-text="Please wait..." /></div>
				</div>
			</form>
		</div>
	</div>
</div>	

<script>
function InvalidMsg(textbox) {
	if (textbox.value == '') {
		textbox.setCustomValidity('Please complete the required information');
		return false;
		}else {
			textbox.setCustomValidity('');
			return true;
		}
	}
	
$('#su-btn-signup-continue').on('click', function(){
	if ((InvalidMsg(document.getElementById('su-first-name'))) && (InvalidMsg(document.getElementById('su-last-name')))) {
		$('#suPhase1').hide('fast');
		$('#suPhase2').show('fast');
	}
});

$('#suShowAndHidePassword').on('click',function(){
	if($('#su-password').attr('type')=='password'){
		$('#su-password').attr('type','text');
		$('#suShowAndHidePassword').html('Hide');
	}else{
		$('#su-password').attr('type', 'password');
		$('#suShowAndHidePassword').html('Show');
	}
});

$('#suShowAndHideConfirmationPassword').on('click', function () {

	if ($('#su-confirm-password').attr('type') == 'password') {
		$('#su-confirm-password').attr('type', 'text');
		$('#suShowAndHideConfirmationPassword').html('Hide');

	} else {
		$('#su-confirm-password').attr('type', 'password');
		$('#suShowAndHideConfirmationPassword').html('Show');
	}
});

function checkLogin(){
	$.ajax({
	url: "login",
	type: "POST",
	data: {"userName":$("#login-username").val(),"passWord":$("#login-password").val()},
	dataType: "json",
	async: true,
	success: function (result) {
		if(result.code==1){
			location.href="GD-GatherDove/index.jsp";
		}else{
			$("#errorplace").show();
		}
	},
	error: function () {
		console.log("error");
	}
	});
}

$('#su-btn-signIn').on('click', function(){
	$.ajax({
		url: "login",
		type: "POST",
		data: {"userName":$("#login-username").val(),"passWord":$("#login-password").val()},
		dataType: "json",
		async: true,
		success: function (result) {
			if(result.code==1){
				location.href="GD-GatherDove/signIn.jsp";
			}else{
				$("#errorplace").show();
			}
		},
		error: function () {
			console.log("error");
		}
		});
});

</script>

</body>
</html>