

<?php

include "connect.php"; // kết nối cơ sở dữ liệu
include "header.php";
?>

<?php $result = mysqli_query($conn,"SELECT * FROM `diemden_data` WHERE id_gt= 'TMB' ") ;
      $product = mysqli_fetch_assoc($result);
 ?>
<body>
 <div class="banner"> <img src="img/1.jpg" > </div>
 <div class="search-container">
  <form method="GET" action="search1.php">
    <input type="text" name="keyword" placeholder="Tìm kiếm...">
    <button type="submit">Tìm kiếm</button>
  </form>
</div>

    <div class="container">
       
        <div id="main">
            <div id="left">
                <ul>
                    <?php

                        while ($row = mysqli_fetch_assoc($result)) { ?>
                        <li>
                        
                            <img src="img/<?=$row["hinhanh"] ?>" alt=' <?= $row["tendiemden"] ?> '></a><br>
                            <strong><?= $row['tendiemden'] ?></strong><br/>
                            <p style="font-size: 18px;"> <?= $row["noidung"]?> </p> 
                        </li>    
                            
                        
                    <?php } ?>
                </ul>
            </div>
            <div id="right">
                <h2>Những nơi đáng chú ý</h2>
                <ul>
                <li> <a href="">20 Hòn đảo đẹp Việt Nam đẹp “làn nước trong xanh” nhất định đi</a> </li>
                    <li> <a href="">Top 10 địa điểm du lịch Việt Nam yên bình “đi trốn” ồn ào</a> </li>
                    <li><a href="">19 Khu Du Lịch Sinh Thái Nổi Tiếng Tại Việt Nam</a></li>
                    <li><a href="">Top 10+ Con Đường Đẹp Nhất Việt Nam Không Thể Bỏ Lỡ</a></li>
                </ul>
            </div>
        </div>
    </div>
 </body>
<?php include "footer.php"; ?>
 
<style>
.search-container {
  display: flex;
  
  margin-top: 20px;
}

.search-container input[type="text"] {
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size:16px;
  width: 300px;
  margin-right: 10px;
}

.search-container button[type="submit"] {
  padding: 10px;
  background-color: #4CAF50;
  border: none;
  color: white;
  border-radius: 5px;
  font-size: 16px;
}

    
.banner img{
    width: 100%;
    height: 300px;
}
.container{

    width: 1435px ;
    margin-top: 100px;
}    
body{
    
    
   
    font-size: 13px;
    width: 1435px;
    margin: 0px auto;
}
#main #left{
  
    width: 900px;
    float: left;  
    min-height: 500px; 
}
#main #right {
    width: 435px;
    float: left;
    min-height: 500px;
    margin-left: 50px;
}


#main #left ul{
    margin: 0;
    padding: 0;
}
#main #left ul li{
    list-style: none;
    clear: left;
    border-bottom: 2px solid #ccc;
    float: left;
    margin-bottom: 20px;
    font-size: 20px;
}

#main #left ul li img{
    float: left;
    margin-right: 10px;
    margin-bottom: 20px;
    height: 150px;
    width: 250px;
}
#main #left ul li h2{
    font-size: 20px;
    margin-top: 0px;
}
#main{
    font-size: 15px;
    width: 1435px;
    margin-top: 10px;
}
</style>
