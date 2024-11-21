<?php
     session_start();
     ob_start();
    include('connect.php');
	  
    if(isset($_SESSION['username']) && isset($_SESSION['matkhau'])) 
    {
          header('Location:index.php');
    }
    if(isset($_POST['dangnhap'])) {
        $tendangnhap = $_POST['username'];
        $matkhau = $_POST['matkhau'];
     setcookie($tendangnhap , $matkhau , time()+(60*15) , "/");
       if(isset($_COOKIE[$tendangnhap])) {
          echo "cookie ".$tendangnhap . "đã tồn tại";
       }
       else {
           echo "cookie ".$tendangnhap . "không tồn tại";
       }
	if(isset($_POST['dangnhap'])){
		$user=$_POST['username'];
		$pass=$_POST['matkhau'];
		$sql="select * from user_data where username ='$user' and matkhau ='$pass' limit 1";
		$query=$conn->query($sql);
		$nums=$query->num_rows;
		if($nums>0){
			$_SESSION['username'] = $row['username'];
			$_SESSION['matkhau'] = $row['matkhau'];
			header('location:index.php');
		 }else{
	 	header('location:Login.php');
		}
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng Nhập</title>
	<style>
		form{
			padding: 20px;
			border: 1px solid #ccc;
			width: 300px;
			margin: 0 auto;
			font-family: Arial, sans-serif;
			background-color: #f9f9f9;
		}

		h2{
			text-align: center;
		}

		input[type=text], input[type=password], input[type=email]{
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}

		button[type=submit]{
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			width: 100%;
		}

		button[type=submit]:hover{
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<h2>Đăng Nhập </h2>
	<form action="" method="post">
		<div class="form-login">
		<label for="username">Tên đăng nhập</label>
		<input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập của bạn" required>

		<label for="password">Mật khẩu</label>
		<input type="password" id="password" name="password" placeholder="Nhập mật khẩu của bạn" required>


		<button type="submit" name="dangnhap">Đăng Nhập</button>
        <a href="dangki.php" style="text-decoration:none">Bạn chưa có tài khoản ? Đăng kí ngay !</a>
		</div>
	</form>
</body>
</html>
