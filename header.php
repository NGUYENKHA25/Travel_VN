  <!-- phần đầu -->
    <head>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel ="preconnect" href="https://fontawesome.com/">
        <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
        <title>Du Lịch 3 Miền </title>
        <meta charset = "utf-8">
        <link rel="stylesheet" href="style/Main.css">
       
        

    </head>
<nav>
  <div class="logo">
    <img src="https://dulichviet.com.vn/images/logo.png" alt="logo">
  </div>
  <ul class="menu">
    <li><a href="index.php">Trang chủ</a></li>
    <li class="dropdown">
      <a href="#">Điểm đến</a>
      <ul class="dropdown-menu">
      <li><a href="diemden_Bac.php">Miền Bắc</a></li>
      <li><a href="diemden_Trung.php">Miền Trung</a></li>
      <li><a href="diemden_Nam.php">Miền Nam</a></li>
      </ul>
    </li>
    <li class="dropdown">
      <a href="#">Lễ Hội </a>
      <ul class="dropdown-menu">
  
        <li><a href="lehoibac.php">Lễ Hội Miền Bắc</a></li>
        <li><a href="lehoitrung.php">Miền Trung</a></li>
        <li><a href="lehoinam.php">Miền Nam</a></li>
      </ul>
    </li>
    <li class="dropdown">
      <a href="#">Đặt Vé </a>
      <ul class="dropdown-menu">
        <li><a href="tourmienbac.php">Miền Bắc</a></li>
        <li><a href="tourmientrung.php">Miền Trung</a></li>
        <li><a href="tourmiennam.php">Miền Nam</a></li>
      </ul>
    </li>
    <li><a href="camnang.php">Cẩm nang</a></li>
    <li class="dropdown">
      <a href="#">Người dùng </a>
      <ul class="dropdown-menu">
        <li><a href="Login.php">Đăng nhập</a></li>
        <li><a href="dangki.php">Đăng ký</a></li>
        <li><a href="dangxuat.php">Đăng xuất</a></li>
        <li><a href="./trangquanly/loginadmin.php">ADMIN </a></li>
      </ul>
    </li>
  </ul>
</nav>
<style>

nav {
  width: 1435px;
 
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
  background-color: #5e5e5e;
}

.menu {
  display: flex;
  justify-content: right;
  align-items: center;
  list-style: none;
  margin: 0;
  padding: 10px;
  font-size: 25px;
}

.menu li {
  margin-right: 20px;
}

.menu li:last-child {
  margin-right: 0;
}

.menu li a {
  text-decoration: none;
  color: #fff;
  transition: color 0.3s ease;
}

.menu li a:hover {
  color: #c2185b;
}

.dropdown {
  position: relative;
}

.dropdown-menu {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1;
  list-style: none;
  padding: 0;
  margin: 0;
  background-color: #92919b;
  border: 1px solid #ccc;
   font-size: 15px;
}

.dropdown:hover .dropdown-menu {
  display: block;
}

.dropdown-menu li {
  margin: 0;
}

.dropdown-menu li a {
  display: block;
  padding: 0px;
  color: #000;
  text-decoration: none;
  transition: background-color 0.3s ease;
}

.dropdown-menu li a:hover {
  background-color:#92919b ;
}

.logo img {
  height: 70px;
}
</style>