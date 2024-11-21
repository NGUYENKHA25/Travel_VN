<?php include "header.php" ?>
<!-- Product -->
<?php
        include "connect.php";
        $result = mysqli_query($conn, "SELECT * FROM tourviet_data WHERE id_tour = ".$_GET['id']);
        $product = mysqli_fetch_assoc($result);
        $imgLibrary = mysqli_query($conn, "SELECT * FROM tour_images WHERE tour_id = ".$_GET['id']);
        $product['image_url'] = mysqli_fetch_all($imgLibrary, MYSQLI_ASSOC);
?>
<section class="product">
    <div class="container">
      
        <div class="product-content row ">
            <div class="product-content-left row">
                <div class="product-content-left-big-img"> 
                     <img src="uploads/<?=$product['hinhanh']?>" >
                </div>
                
                <?php if(!empty($product['image_url'])){ ?>
                    <div class="product-content-left-small-img">
                        <ul>
                            <?php foreach($product['image_url'] as $img) { ?>
                                <li><img src="uploads/<?=$img['image_url']?>" /></li>
                            <?php } ?>
                        </ul>
                    </div>
                    <?php } ?>

                
            </div>
            <div class="product-content-right">
                <div class="product-content-right-product-name">
                    <h1>Tên địa điểm :<?=$product['tendiadiem']?> </h1>
                    <p><?=$product['matour']?></p>
                </div>
                <div class="product-content-right-product-price">
                    <p>Giá :<?=$product['giatour']?><sup>đ</sup></p>
                </div>
                <div class="product-content-right-product-time">
                    <p>Thời gian : <?=$product['thoigian']?></p>
                </div>
                <div class="quantity">
                    <p style="font-weight:bold;">Số Lượng Người</p>
                    <input type="number"  min="0" value="1">
                    <p style="color:darkolivegreen">Vui Lòng Chọn Số Người </p>
                </div>  
                <div class="product-content-right-product-button">
                    <button><i class="fa-solid fa-cart-flatbed-boxes"></i><p> <a href="booking.php">ĐẶT VÉ</a> </p></button>
                    <button><p>TÌM TRÊN TRANG</p></button>
                </div>
                <div class="product-content-right-product-icon">
                    <div class="product-conten-right-product-item">
                    <i class="fa-solid fa-phone-office">Hotline</i>
                    </div>
                    <div class="product-content-right-product-item">
                    <i class="fa-solid fa-comment-dots">Chat</i>
                    </div>
                    <div class="product-content-right-product-item">
                    <i class="fa-solid fa-envelopes-bulk">Mail</i>
                    </div>
                </div>
                <div class="product-content-right-bottom">
                    <div class="product-content-right-bottom-top">
                    &#8711;
                    </div>
                </div>
                <div class="product-content-right-product-content">
                <?=$product['gioithieu']?>
                </div>


            </div>
        </div>
    </div>

</section>

<!--         -->
<?php include "footer.php" ?>

<style>
    .container {
    display: grid;
    grid-template-columns: 9fr 0fr;
    margin-top: 150px;
}
    .row {
    display: flex;
    flex-wrap: wrap;
    }
    .product{
     
        padding: 0px 0;
    }
    
    .product-content-left{
        width: 50%;
    }
    .product-content-right{
        width: 50%;
    }
    .product-content-left-big-img{
        width: 80%;
        padding-right: 20px;
    }
    .product-content-left-big-img img {
        width: 100%;
    }
    .product-content-left-small-img{
        width: 20%;
    }
    .product-content-left-small-img img{
        width: 100%;
    }
    .product-content-right{
        width: 50%;
        padding-left: 20px;
    }
    .product-content-right-product-name h1 {
        font-family: var(--main-text-font);
        font-size: 25px;
    }
    .product-content-right-product-name p{
        color: white;
        font-size: 12px;
    }
    .product-content-right-product-price{
        margin: 12px 0 ;
        font-size: 20px;
        font-weight: bold;
        font-family: var(--main-text-font);
    }
    .product-content-right-product-time p{
        font-family: var(--main-text-font);
        font-size: 20px;
     
    }
    .size span{
        display: inline-block;
        padding: 3px 6px;
        border: 1px solid whitesmoke;
        margin: 12px 10px 12px 0;
        font-size: 12px;
        cursor: pointer;
    }
    .quantity{
        display: flex;
        margin-bottom: 20px;
    }
    .quantity input {
        width: 35px;
        padding-left: 3px;

    }
    .product-content-right-product-button button{
        width: 150px;
        height: 40px;
        display: block;
        margin: 20px 0 12px;
    }
    .product-content-right-product-button button:first-child{
        display: flex;
        justify-content: space-evenly;
        align-items: center;
        background-color: white;
        border: 2px solid black;
        cursor: pointer;
    }
    .product-content-right-product-button button:first-child:hover{
        background-color: black;
        color: whitesmoke;
    }
    .product-content-right-product-button button:last-child{
        border: 2px solid orange;
        color: orange;
        background-color: whitesmoke;
        cursor: pointer;
    }
    .product-content-right-product-icon{
        display: flex;
       
    }
    .product-content-right-product-icon-item {
        display: flex;
        margin-right: 4px;
        justify-content: center;
        align-items: center;
    }
    .product-content-right-product-icon-item i{
        font-size: 12px;
        margin-right: 6px;
    }
    .product-content-right-bottom{
        padding-top: 40px;
        border: 1px solid white;
        position: relative;

    }
    .product-content-right-bottom-top{
        position: absolute;
        width: 30px;
        height: 30px;
        border: 2px solid whitesmoke;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: white;
        top: -15px;
        left: 50%;

    }


</style>