<div class="wrapper" style="background-image: url('<?= base_url() ?>assets/img/etc/bg-registration-form-1.jpg');">
	<div class="inner">
		<div class="image-holder">
			<img src="<?= base_url() ?>assets/img/etc/registration-form-1-user.jpg" alt="">
		</div>
		<form action="<?= base_url() ?>auth/forgot_password" method="POST">
			<i class="zmdi zmdi-long-arrow-left" style="font-size: 15px"></i><a href="<?= base_url() ?>" style="text-decoration: none;color:#333;font-size:15px;font-family: Poppins-Regular;"> Back to Homepage</a><br><br>
			<h3>Forgot Password?</h3>
			<?= $this->session->flashdata('message'); ?><br>
			<div class="form-wrapper">
				<input type="text" placeholder="Email" name="email" class="form-control" required>
				<i class="zmdi zmdi-account"></i>
			</div>
			
			<h4 style="margin-top: 5px;">Don't have an account? <a href="<?= base_url() ?>auth/registerUser" style="text-decoration: none;color:#2874A6 ">Register Here!</a></h4>
			<h4>Login as Pengelola? <a href="<?= base_url() ?>auth/loginPengelola" style="text-decoration: none;color:#2874A6 ">Click Here!</a></h4>
			<button type="login" value="login" name="login">Reset Password
				<i class="zmdi zmdi-arrow-right"></i>
			</button>
		</form>
	</div>
</div>
</body>

</html>