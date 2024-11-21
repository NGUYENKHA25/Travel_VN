<?php 
   session_start();
   session_destroy();
$user_id = isset($_COOKIE['username']) ? $_COOKIE['username'] : null;

setcookie('username', '', time() - (60*15));

 header('location:index.php');

?>