<?php
  	session_start();
  	if(isset($_SESSION['admin'])){
    	header('location:home.php');
  	}
?>
<?php include 'includes/header.php'; ?>
<!--<body class="hold-transition login-page">
<div class="login-box">
  	<div class="login-logo">
  		<b>eVotePro</b>
  	</div>
  
  	<div class="login-box-body">
    	<p class="login-box-msg">Sign in to start your session</p>

    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="username" placeholder="Username" required>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
        		</div>
      		</div>
    	</form>
  	</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p> 
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>-->

<!DOCTYPE HTML>
<html>
	<head>
		<title> </title>
		<link rel="stylesheet" href="../dist/css/style.css">
		<link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
	</head>
	<?php include 'includes/header.php'; ?>
<body>
<div class="background-overlay">
	<div class="login-box-left">
		<div class="login-head">
			<b>Nebatech VotePro</b>
		</div>
		<div class="login-logo">
			<img class="login-logo-icon" src="../images/vote_logo.png">
		</div>
	</div>
	<div class="login-box-right">
		<div class="welcome-text">
			<b>Welcome back</b>
		</div>

		<div class="login-box-container" style="margin-top: 50px;">
			<div class="login-logo">
				<b>Admin</b>
			</div>
			<p class="login-box-msg">Sign in to start your session</p>

			<form action="login.php" method="POST">
				<div class="form-group has-feedback">
					<input type="text" class="form-group-user" name="username" placeholder="Username" required>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
			<div class="form-group has-feedback">
				<input type="password" class="form-group-user" name="password" placeholder="Password" required>
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
				<div class="row">
					<div class="col-xs-4s">
						<button type="submit" class=" btn-sign-in btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
					</div>
				</div>
			</form>
		</div>
		<?php
			if(isset($_SESSION['error'])){
				echo "
					<div class='callout callout-danger text-center mt20'>
						<p>".$_SESSION['error']."</p> 
					</div>
				";
				unset($_SESSION['error']);
			}
		?>
	</div>
	<footer class="login-footer">
    	<strong>Copyright &copy; 2024 <a href="https://www.nebatech.com">Nebatech Software Solution</a></strong> <b>All rights reserved</b>
	</footer>
</div>
<?php include 'includes/scripts.php' ?>
</body>
</html>