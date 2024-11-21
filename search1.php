<?php 
include('connect.php');
include('header.php'); ?>
 <h1 style="justify-content: center;">Kết Quả Tìm Kiếm </h1>
<?php
// Xử lý tìm kiếm
if(isset($_GET['keyword'])) {
	$keyword = $_GET['keyword'];
	
	// Định nghĩa câu truy vấn tìm kiếm
	$query = "SELECT * FROM diemden_data WHERE 
	                id_gt LIKE '%$keyword%' OR 
					
				
					tendiemden LIKE '%$keyword%'";
					
	// Thực thi câu truy vấn
	$result = mysqli_query($conn, $query);
	
	// Hiển thị kết quả tìm kiếm
	if(mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
            echo "<div class='tour'>";
		
			echo " <img src='img/".$row['hinhanh'] . "'>";
			echo "<p> Tên Địa Điểm:" .$row['tendiemden'] . "</p>";
			echo "<p> Nội Dung:" . $row['noidung'] . "</p>";
			echo "</div>";
		}
	} else {
		echo "Không tìm thấy điểm đến  nào";
	}

}


mysqli_close($conn);

?>
<input type="button" value="Quay lại" onclick="location.href='diemden_Bac.php'">
<?php include('footer.php'); ?>
<style>

    .tour {
  background-color: #fff;
  margin: 20px;
  padding: 20;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0,0,0,0.15);
}

.tour img {
  width: 100%;
  max-width: 400px;
  border-radius: 5px;
}

.tour h2 {
  font-size: 24px;
  margin-bottom: 5px;
}

.tour p {
  font-size: 16px;
  margin-bottom: 10px;
}

</style>