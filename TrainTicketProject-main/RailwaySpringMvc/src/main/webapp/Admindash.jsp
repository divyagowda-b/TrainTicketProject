<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="Admindash.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class="mdi:alpha-t-box-outline"></i>
      <span class="logo_name">TicketBooking</span>
    </div>
      <ul class="nav-links">
        <li>
           <a href="Traindetails.jsp">
              <i class='bx bx-box' ></i>
              <span class="links_name">Train Details</span>
           </a>
        <li>
          <a href="user.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">User Registration</span>
          </a>
        </li>
        <li>
          <a href="Admin.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">Add Train</span>
          </a>
        </li>
        <li>
          <a href="delete.jsp">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Remove Train</span>
          </a>
        </li>
        <li>
          <a href="login.jsp">
            <i class='bx bx-heart' ></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>


    </nav>

    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total bookings</div>
            <div class="number">15</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
          <i class='bx bx-cart-alt cart'></i>
        </div>

      </div>

      <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">Recent Bookings</div>
          <div class="sales-details">
            <ul class="details">
              <li class="topic" style="text-align:center">Date</li>
              <li><a href="#">07 dec 2021</a></li>
              <li><a href="#">07 dec 2021</a></li>
              <li><a href="#">06 dec 2021</a></li>
              <li><a href="#">05 dec 2021</a></li>
              <li><a href="#">05 dec 2021</a></li>
            </ul>

            <ul class="details">
            <li class="topic" style="text-align:center">Ticket ID</li>
            <li><a href="#">BM_20170121_115</a></li>
            <li><a href="#">DM_20210222_114</a></li>
            <li><a href="#">MB_20210312_113</a></li>
            <li><a href="#">MD_20210522_112</a></li>
            <li><a href="#">PM_20210630_111</a></li>

            </ul>
            <ul class="details">
            <li class="topic" style="text-align:center">Total Ticket Price</li>
            <li style="text-align:center"><a href="#" >1200 </a></li>
            <li style="text-align:center"><a href="#">700</a></li>
            <li style="text-align:center"><a href="#">560</a></li>
            <li style="text-align:center"><a href="#">850</a></li>
            <li style="text-align:center"><a href="#">900</a></li>

            </ul>
          </div>
          <div class="button">
            <a href="#">See All</a>
          </div>
        </div>

    </div>
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>