<?php
session_start();
if (isset($_SESSION['admin'])) {
    header('location:home.php');
}
?>

<!DOCTYPE HTML>
<html>
<head>
    <title>Admin Login - eVotePro</title>
    <link rel="icon" type="image/x-icon" sizes="32x32" href="../images/favicon.png">
    <link rel="stylesheet" href="../dist/css/style.css">
    <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <?php include 'includes/header.php'; ?>
    <div class="background-overlay">
        <div class="login-box-left">
            <div class="login-head">
                <b>Nebatech VotePro</b>
            </div>
            <div class="login-logo">
                <img class="login-logo-icon" src="../images/vote_logo.png" alt="VotePro Logo">
            </div>
        </div>
        <div class="login-box-right">
            <div class="welcome-text">
                <b>Welcome back</b>
            </div>
            <div class="login-box-container">
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
                    <button type="submit" class="btn-sign-in btn-block" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
                </form>
            </div>
            <?php
            if (isset($_SESSION['error'])) {
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
    <?php include 'includes/scripts.php'; ?>
</body>
</html>