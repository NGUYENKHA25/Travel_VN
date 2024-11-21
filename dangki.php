<?php 
    require 'connect.php';
    if(isset($_POST['submit'])){
        //echo"da sm";
        //echo "<pre>";
       // print_r($_POST);

        $username = $_POST['username'];
        $matkhau = $_POST['matkhau'];
        $email = $_POST['email'];
		$fullname = $_POST['fullname'];
		$birthday = $_POST['birthday'];

        if(!empty($username) && !empty($password) && !empty($email) && !empty($fullname) && !empty($birthday)){
            $sql = "INSERT INTO `user_data` (`username`, `matkhau`,`email`,`fullname`,`birthday`) VALUES('$username', '$matkhau','$email','$fullname','$birthday') ";
            if($conn->query($sql)){
                echo 'Chúc mừng bạn đã đăng kí thành công';
            }
            else{
                echo 'lỗi';
            }
        }
        else{
            echo 'Bạn cần nhập đủ thông tin';
        }
    }    
?>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký</title>
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
	<h2> Đăng Kí </h2>
	<form action="" method="post">
		<div class="form-register">
		<label for="username">Tên đăng nhập</label>
		<input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập của bạn" required>

		<label for="password">Mật khẩu</label>
		<input type="password" id="password" name="password" placeholder="Nhập mật khẩu của bạn" required>

		<label for="email">Email</label>
		<input type="email" id="email" name="email" placeholder="Nhập email của bạn" required>

        <label for="fullname">Họ và tên </label>
		<input type="text" id="fullname" name="fullname" placeholder="Nhập tên của bạn" required>

        <label for="birthday">Ngày Sinh </label>
		<input type="date" id="birthday" name="birthday" placeholder="Nhập ngày sinh của bạn" required>

      

		<button type="submit" name="submit">Đăng Ký</button>
        <a href="Login.php" style="text-decoration:none">Đăng nhập ngay !</a>
		</div> 
	</form>
</body>
</html>
