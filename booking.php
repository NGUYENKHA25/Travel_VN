<!DOCTYPE html>
<html>
<head>
	<title>Đặt vé</title>
	<style>
		body {
			background-color: #f1f1f1;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}

		h1 {
			text-align: center;
			margin-top: 50px;
		}

		form {
			background-color: #fff;
			box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
			display: flex;
			flex-direction: column;
			align-items: center;
			padding: 20px;
			margin: 50px auto;
			width: 50%;
		}

		label {
			display: block;
			font-weight: bold;
			margin: 10px 0;
		}

		input[type="text"],
		input[type="number"] {
			padding: 10px;
			width: 100%;
			border: none;
			border-radius: 4px;
			box-shadow: 0 2px 4px 0 rgba(0,0,0,0.2);
			margin-bottom: 20px;
		}

		button[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			border: none;
			border-radius: 4px;
			font-size: 16px;
			padding: 10px;
			cursor: pointer;
		}

		button[type="submit"]:hover {
			background-color: #008CBA;
		}
	</style>
</head>
<body>
	<h1>Đặt vé</h1>
	<form method="post" >
		<label for="fullname">Họ và tên:</label>
		<input type="text" name="fullname" id="fullname" required>

		<label for="phone">Số điện thoại:</label>
		<input type="text" name="phone" id="phone" required>

		<label for="email">Email:</label>
		<input type="text" name="email" id="email" required>

		<label for="num_people">Số người đi:</label>
		<input type="number" name="num_people" id="num_people" required>

		<button type="submit" name="submit">Đặt vé</button>
	</form>
</body>
</html>
<?php 
	session_start();
	
	// Nếu nhấn nút đặt vé, xử lý thông tin đặt vé
	if (isset($_POST['submit'])) {
  
		$fullname = $_POST['fullname'];
        $email =$_POST['email'];
		$phone = $_POST['phone'];
		$num_people = $_POST['num_people'];
		
    include 'connect.php';

		// Lấy giá tour từ bảng tourviet_data
		$sql = "SELECT * FROM tourviet_data WHERE id_tour=1";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
		$tour_price = $row['giatour']; // Giá tour được lấy từ cột "price" của bảng "tourviet_data"

		// Tính tổng giá tiền
		$total_price = $num_people * $tour_price;

		// Lưu thông tin đặt vé vào cơ sở dữ liệu
		$sql2 = "INSERT INTO booking (fullname, phone, email,num_people, total_price)
				VALUES ('$fullname', '$phone','$email', '$num_people', '$total_price')";

		if ($conn->query($sql2) === TRUE) {
			// Nếu chèn dữ liệu thành công, hiển thị thông báo đặt vé thành công
			$_SESSION['booking_success'] = true;
			header("Location: success.php");
		} else {
			echo "Lỗi: " . $conn->error;
			// Nếu chèn dữ liệu thất bại, có thể điều hướng đến trang thông báo lỗi
		}

		$conn->close();
	}
?>
