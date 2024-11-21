<?php
include "header.php";
?>
<?php

include "connect.php"; // kết nối cơ sở dữ liệu
?>

<div class="bodyhead">
    <h2 style="font-size: 50px; color: darkred;">Những lễ hội đặc trưng miền Trung</h2>
</div>
<div class="search-container">
  <form method="GET" action="search3.php">
    <input type="text" name="keyword" placeholder="Tìm kiếm...">
    <button type="submit">Tìm kiếm</button>
  </form>

<?php
// hàm phân trang
function paginate($page, $total_pages) {
    $pagination = "";

    // nếu không phải trang đầu tiên
    if ($page > 1) {
        $pagination .= "<a href='?page=" . ($page - 1) . "'><< Trang trước</a> ";
    }

    // hiển thị các trang giữa
    for ($i = 1; $i <= $total_pages; $i++) {
        if ($i == $page) {
            $pagination .= "<span>" . $i . "</span> ";
        } else {
            $pagination .= "<a href='?page=" . $i . "'>" . $i . "</a> ";
        }
    }

    // nếu không phải trang cuối cùng
    if ($page < $total_pages) {
        $pagination .= "<a href='?page=" . ($page + 1) . "'>Trang sau >></a>";
    }

    return $pagination;
}

// số sản phẩm trên mỗi trang
$limit = 3;

// lấy số trang từ URL
$page = isset($_GET["page"]) ? $_GET["page"] : 1;

// tính vị trí bắt đầu của các sản phẩm trên trang hiện tại
$start = ($page - 1) * $limit;

// lấy danh sách sản phẩm từ cơ sở dữ liệu
$sql = "SELECT * FROM lehoi where tenvung = 'VMT' LIMIT $start, $limit";
$result = mysqli_query($conn, $sql);

// lấy số sản phẩm từ cơ sở dữ liệu
$sql_count = "SELECT COUNT(*) AS count FROM lehoi where tenvung = 'VMT'";
$result_count = mysqli_query($conn, $sql_count);
$row_count = mysqli_fetch_assoc($result_count);
$total_items = $row_count["count"];

// tính số trang
$total_pages = ceil($total_items / $limit);

// <a href="detail.php?id=<?= $row['id'] 

// hiển thị sản phẩm



?>

<div class='product-grid'> <!--// mở div-->
        <?php
            while ($row = mysqli_fetch_assoc($result)) { ?>
                <div class='product'>
                    <strong><?= $row['tenlehoi'] ?></strong><br/>
                    <img src="imgs/<?=$row["hinhanh"] ?>" alt=' <?= $row["tenlehoi"] ?> '><br>
                    <p> <?=$row["noidung"]?> </p>  
                </div>
            
        <?php } ?>
    </div>
    <?php 
        // hiển thị phân trang
        echo "<div class='pagination'>" . paginate($page, $total_pages) . "</div>"; // mở div
    ?>


<?php include "footer.php" ?>

<style>
  /* CSS cho danh mục sản phẩm */
  search-container {
  display: flex;
  justify-content: center;
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
h2{
  margin-top: 150px;
  text-align: center;
}  
ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

/* CSS cho lễ hội */
.product-grid {
    display: flex;
    flex-wrap: wrap;
    margin-top: 100px;
}

.product {
    width: calc(66.66% - 100px);
    margin: 10px;
    /* background-color: #eee; */
    padding: 10px;
}

.product h3 {
    margin-top: 0;
}

/* CSS cho phân trang sản phẩm */
.pagination {
    margin-top: 20px;
    text-align: center;
}

.pagination a,
.pagination span {
    display: inline-block;
    padding: 5px 10px;
    margin-right: 5px;
    border: 1px solid #ccc;
}

.pagination a:hover {
    background-color: #ccc;
}

.pagination span {
    background-color: #ccc;
    color: #fff;
    font-weight: bold;
}

</style>