<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServicesPage.aspx.cs" Inherits="GraduationThesis.ServicesPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/ServicesPageCSS.css" rel="stylesheet" />
    <link rel="shortcut icon" href="img/PGICON.png" />
    <title>PromoGram Services</title>
</head>
<body>
    <form id="form1" runat="server">
         <header class="header" id="header">
  <nav class="nav">
    <div class="logo">
      <h1>Promo<span>Gram</span></h1>
    </div>
    <ul class="nav-links">
      <li><a href="HomePage.aspx">Home</a></li>
      <li><a href="ShopPage.aspx">Shop</a></li>
      <li><a href="ServicesPage.aspx" class="active">Services</a></li>
      <li><a href="ContactPage.aspx">Contact</a></li>
    </ul>
    <div class="burger">
      <div class="line1"></div>
      <div class="line2"></div>
      <div class="line3"></div>
    </div>
  </nav>
</header>

<!--services content(text)-->
<div class="content">
  <h2>Welcome to our online service</h2>
  <p>Are you tired of waiting in the crowds to leave your technological device on service?<br/> <br/>
    &#x21e9; <span>Make an online appointment for servicing your technological device</span> &#x21e9; </p>
</div>

<!--Brands of servicing-->
<section>
<div class="container">
  <div class="brands">
  <h3>Brands of mobile phones that we service:</h3>
  <h4>If you own one of the following brands of mobile devices and you have any problems with them, we can help you!</h4>
    <ol class="mobile-brands">
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.htc.com/us/" target="_blank"><span>1.</span> HTC</a></li>
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.zte.com.cn/global/" target="_blank"><span>2.</span> ZTE</a></li>
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.apple.com/" target="_blank"><span>3.</span> Apple</a></li>
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.nokia.com/" target="_blank"><span>4.</span> Nokia</a></li>
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.meizu.com/en" target="_blank"><span>5.</span> Meizu</a></li>
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="http://www.azumi-mobile.com/es/" target="_blank"><span>6.</span> Azumi</a> </li>
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.huawei.com/en/" target="_blank"><span>7.</span> Huawei</a></li>
      <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.blackberry.com/us/en" target="_blank"><span>8.</span> Blackberry</a> </li>
    </ol>
  </div>

  <div class="container_3">
      <h1>Make an appointment</h1>

    <div class="contactform">
        <div class="select-brand">
            <form>
             <h3>
                 <asp:Label ID="confirm" runat="server" Text=""></asp:Label>
            </h3>
               <asp:DropDownList ID="dropdownlist" runat="server">
                <asp:ListItem selected hidden>Please choose your brand</asp:ListItem>
                <asp:ListItem Value="HTC" class="listitem">HTC</asp:ListItem>
                <asp:ListItem Value="ZTE" class="listitem">ZTE</asp:ListItem>
                <asp:ListItem Value="Apple" class="listitem">Apple</asp:ListItem>
                <asp:ListItem Value="Nokia" class="listitem">Nokia</asp:ListItem>
                <asp:ListItem Value="Meizu" class="listitem">Meizu</asp:ListItem>
                <asp:ListItem Value="Azumi" class="listitem">Azumi</asp:ListItem>
                <asp:ListItem Value="Huawei" class="listitem">Huawei</asp:ListItem>
                <asp:ListItem Value="Blackberry" class="listitem">Blackberry</asp:ListItem>
                <asp:ListItem Value="CPS" class="listitem">CPS</asp:ListItem>
                <asp:ListItem Value="Poly" class="listitem">Poly</asp:ListItem>
                <asp:ListItem Value="Jabra" class="listitem">Jabra</asp:ListItem>
                <asp:ListItem Value="Gigaset" class="listitem">Gigaset</asp:ListItem>
                <asp:ListItem Value="Hyundai MIB" class="listitem">Hyundai MIB</asp:ListItem>
                <asp:ListItem Value="Grandstream" class="listitem">Grandstream</asp:ListItem>
                <asp:ListItem Value="Adva Networking" class="listitem">Adva Networking</asp:ListItem>
                <asp:ListItem Value="Ribao Technology" class="listitem">Ribao Technology</asp:ListItem>
            </asp:DropDownList>
            </div>
      <div class="inputBox">
        <asp:TextBox ID="txt_model" runat="server" Required="required"></asp:TextBox>
        <span>Device Model</span>
      </div>
      <div class="inputBox">
        <asp:TextBox ID="txt_nameandsurname" runat="server" Required="required"></asp:TextBox>
        <span>Your Name and Surname</span>
      </div>
      <div class="inputBox">
         <asp:TextBox ID="txt_email" runat="server" Required="required"></asp:TextBox>
        <span>Your e-mail</span>
      </div>
        <div class="inputBox">
         <asp:TextBox ID="txt_subject" runat="server" Required="required"></asp:TextBox>
           <span>Subject</span>
           </div>
                <div class="inputBox">
            <asp:DropDownList ID="appointments_dropdownlist" runat="server" CssClass="MyDropDownList"></asp:DropDownList>
          <span id="appointments">Please choose your appointment  term:</span>
        </div>
      <div class="inputBox">
         <asp:TextBox ID="txt_problem" runat="server" Required="required" TextMode="MultiLine" Rows="3"></asp:TextBox>
        <span>Please specify the problem of the device</span>
      </div>
        <asp:Button ID="btn_send" runat="server" Text="Make An Appointment" OnClick="btn_send_Click" />
    </form>
    </div>
  </div>

  <div class="brands">
     <h3>Brands of other technological devices we service:</h3>
      <h4>We also service the following manufacturers of technological devices and banknote counting machines:</h4>
       <ol class="mobile-brands">
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.cps.world/" target="_blank"><span>1.</span> CPS</a></li>
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.poly.com/us/en" target="_blank"><span>2.</span> Poly</a></li>
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.jabra.com/" target="_blank"><span>3.</span> Jabra</a></li>
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.gigaset.com/hq_en/" target="_blank"><span>4.</span> Gigaset</a></li>
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.hyundaimib.com/" target="_blank"><span>5.</span> Hyundai MIB</a></li>
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="http://www.grandstream.com/" target="_blank"><span>6.</span> Grandstream</a></li>
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.adva.com/" target="_blank"><span>7.</span> Adva Networking</a></li>
         <li class="list-item" data-tooltip="Click to learn more for this brand"><a href="https://www.ribaotechnology.com/" target="_blank"><span>8.</span> Ribao Technology</a></li>
       </ol>
  </div>
</div>
</section>
<div class="popup hide__popup">
  <div class="popup__content">
    <div class="popup__close">
      <svg>
        <use xlink:href="img/sprite.svg#icon-cross"></use>
      </svg>
    </div>
    <div class="popup__left">
      <div class="popup-img__container">
        <img src="img/appointment.jpg" alt="" class="popup__img"/>
      </div>
    </div>
    <div class="popup__right">
      <div class="right__content">
        <h1><span>Important information</span>  about our policy!</h1>
        <p>Please have in mind that you can make an appoinment only in our working hours, which are:</p>
        <h2>Monday-Friday: 08:00AM - 16:00PM</h2>
        <h3>After making your appointment you will receive a confirmation e-mail for a specific time to leave the device.</h3>
        <p class="average">On average, your devices are ready in a day. <span>(Depending on the problem)</span></p>
      </div>
    </div>
  </div>
</div>

  <!--arrow for navigation-->
<a href="#header" class="goto-top scroll-link">
  <svg>
    <use xlink:href="img/sprite.svg#icon-arrow-up"></use>
  </svg>
</a>

<!--footer-->

<footer id="footer" class="footer">
  <div class="container_2">
    <div class="footer__top">
      <div class="footer-top__box">
        <h3>Quick access</h3>
        <a href="HomePage.aspx">Home</a>
        <a href="ShopPage.aspx">Shop</a>
        <a href="ServicesPage.aspx">Services</a>
        <a href="ContactPage.aspx">Contact</a>
      </div>
      <div class="footer-top__box">
        <h3>Information</h3>
        <a href="https://www.facebook.com/PromotelDOOSkopje" target="_blank">Facebook Page</a>
<!--What We Do Modal-->
        <p id="wwd">What We Do</p>
        <div class="modal-container" id="modal_container">
          <div class="modal">
            <h1>Currently PromoGram does:</h1>
            <ul>
              <li><span>1.</span>We offer a large selection of telecommunications solutions.</li>
              <li><span>2.</span>We perform service, repair and distribution on many technological devices and banknote counting machines.</li>
              <li><span>3.</span>We sell online many types of devices such as phones, routers, modems and all kinds of telecommunications equipment.</li>
            </ul>
            <button id="close">
              Close
            </button>
          </div>
        </div>
<!--Privacy Policy Modal-->
        <p id="pp">Privacy Policy</p>
        <div class="modal-container2" id="modal_container2">
          <div class="modal">
            <h1>Our privacy policy rules are:</h1>
            <ul>
              <li><span>1.</span>We need your personal information so that we can provide our services to you.</li>
              <li><span>2.</span>We collect information only when you place an order or fill out our contact form.</li>
              <li><span>3.</span>Our site is reviewed on a regular basis for security vulnerabilities, so your personal data is safe with us.</li>
            </ul>
            <button id="close2">
              Close
            </button>
          </div>
        </div>

        <p id="cookies" data-tooltip="This website does not use cookies">Cookies</p>
      </div>

      <div class="footer-top__box">
        <h3>Get in touch</h3>
        <div class="">
          <span>
            <svg>
              <use xlink:href="img/sprite.svg#icon-location"></use>
            </svg>
            Blvd. Boris Trajkovski 72
          </span>
        </div>
        <div class="">
          <span>
            <svg>
              <use xlink:href="img/sprite.svg#icon-envelop"></use>
            </svg>
            bojanwever@gmail.com
          </span>
        </div>
        <div class="">
          <span>
            <svg>
              <use xlink:href="img/sprite.svg#icon-phone"></use>
            </svg>
            02 3111110
          </span>
        </div>
        <div class="">
          <span>
            <svg>
              <use xlink:href="img/sprite.svg#icon-paperplane"></use>
            </svg>
            1000 Skopje, North Macedonia
          </span>
        </div>
      </div>
    </div>
  </div>
</footer>




<script src="js/policy.js"></script>
<script src="js/popup.js"></script>
<script src="js/MobileView.js"></script>
<script src="js/fixednav.js"></script>
</form>
</body>
</html>
