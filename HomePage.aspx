<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GraduationThesis.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PromoGram Home Page</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
       <link rel="shortcut icon" href="img/PGICON.png" />
       <link rel="stylesheet" href="css/HomePageCSS.css" />
</head>
<body>
    <form id="form1" runat="server">
<header class="header" id="header">
<nav class="nav">
  <div class="logo">
    <h1>Promo<span>Gram</span></h1>
  </div>
  <ul class="nav-links">
    <li><a href="HomePage.aspx" class="active">Home</a></li>
    <li><a href="ShopPage.aspx">Shop</a></li>
    <li><a href="ServicesPage.aspx">Services</a></li>
    <li><a href="ContactPage.aspx">Contact</a></li>
  </ul>
  <div class="burger">
    <div class="line1"></div>
    <div class="line2"></div>
    <div class="line3"></div>
  </div>
</nav>
</header>

<!--SECTION AND CONTAINER-->
<section>
  <div class="container">

<!--  FIRST MODAL  -->
<button id="location" type="button">
  <i class="fa fa-map-marker" id="sign" aria-hidden="true"></i>
    </button>
<div class="modal-container" id="modal_container">
   <div class="modal">
    <h1>Our address is Blvd. Boris Trajkovski 71 Skopje, North Macedonia.</h1>
    <p id="google_maps"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2966.208786422099!2d21.452661615444093!3d41.97432687921473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x135414390d67f683%3A0x28a72ea91a3cb056!2z0J_RgNC-0LzQvtGC0LXQuyDQlNCe0J4!5e0!3m2!1smk!2smk!4v1619113251252!5m2!1smk!2smk" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>
    <button id="close" type="button">
      Close
    </button>
   </div>
</div>

<!--    SECOND MODAL  -->

    <button id="telephone" type="button">
      <i class="fa fa-phone" id="call" aria-hidden="true"></i>
    </button>
    <div class="modal-content" id="modal_content">
      <div class="modal-phone">
        <h1>Our telephone numbers are:</h1>
        <p id="phone_numbers">Service: 02 3130493 <br /> Office: 02 3111110</p>
        <button id="close_content" type="button">
          Close
        </button>
      </div>
    </div>

<!--  THIRD MODAL  -->

    <button id="email" type="button">
      <i class="fa fa-envelope-o" id="email_sign" aria-hidden="true"></i>
    </button>
    <div class="modal-content2" id="modal_content2">
      <div class="modal-email">
        <h1>Our e-mail address is:</h1>
        <p id="e_mail">Service: service@promotel.com.mk <br /> <br />Office: info@promotel.com.mk</p>
        <button id="close_content2" type="button">
          Close
        </button>
      </div>
    </div>

<!--    LEFT SIDEBAR (BANNERS)  -->

    <aside id="sidebar">
      <h3>Daily Promotions:</h3> <br />
      <a href="ShopPage.aspx"><img src="img/small-bannerI.gif" alt="promotion banner" width="300px" height="200px" /></a> <br />
      <a href="ShopPage.aspx"><img src="img/tellurl-banner.gif" alt="promotion banner" width="300px" height="200px"/></a> <br />
      <a href="ShopPage.aspx"><img src="img/huawei-bannerI.gif" alt="promotion banner" width="300px" height="200px"/></a> <br />
    </aside>

<!--  ABOUT PROMOGRAM AND SLIDESHOW   -->

    <div class="content">
      <h2>PromoGram Shop and Service</h2>
      <p>We are a private company that is found in 2018 year. <br />
        The team that is guiding the company is more than 25 years present in this sector and we have vast experience in this bussiness. <br />
        We currently work with many brands including Telekom and A1. <br />
        Our services cover the whole country, but we also cooperate with Republic of Serbia, Kosovo and Albania. <br />
        We are the main service providers of many world brands such as: <br />
        <span class="brands">Nokia, Huawei, Zte, HTC, Apple</span> and many more.
      </p>
      <a href="https://promotel.mk/about-us/" class="more" target="_blank">Read More</a>
    </div>
    <div id="slider">
      <figure>
        <img src="img/PromoNapredStranicno.jpg" alt="Promo" height="400px" width="700px"/>
        <img src="img/PromoParking.jpg" alt="parking" height="400px" width="700px"/>
        <img src="img/PromoNapred.jpg" alt="napred" height="400px" width="700px"/>
        <img src="img/PromoMasa.jpg" alt="Masa" height="400px" width="700px"/>
        <img src="img/PromoNapredStranicno.jpg" alt="Promo" height="400px" width="700px"/>
      </figure>
    </div>
  </div>
</section>

<hr />

<!--SERVICES SECTION-->

<div class="services">
  <div class="box">
    <div class="icon">01</div>
    <div class="services-content">
      <h3>Telecommunications equipment</h3>
      <p>PromoGram offers a large selection of telecommunications solutions for small, medium and large enterprises from world-renowned manufacturers of telephone systems, network equipment and various specific solutions.</p>
      <a href="ShopPage.aspx">Learn more</a>
    </div>
  </div>
  <div class="box">
    <div class="icon">02</div>
    <div class="services-content">
      <h3>Service /<br /> Distribution</h3>
      <p>We perform service, repair and distribution to your home address on the following devices: <span class="brands">ZTE, Huawei, Apple, HTC, BlackBerry, Nokia, Gigaset, Meizu</span> and many more. If you want to make an appointment please click here. <i class="fa fa-arrow-down" aria-hidden="true"></i></p>
      <a href="ServicesPage.aspx">Learn more</a>
    </div>
  </div>
  <div class="box">
    <div class="icon">03</div>
    <div class="services-content">
      <h3>Promotions /<br /> Contact</h3>
      <p>Every day in the week, we have different products on promotion. <br /> So hurry up and don't miss the chance of buying something or servicing your device with discount. <br />
      Get in touch with us right here! <i class="fa fa-arrow-down" aria-hidden="true"></i></p>
      <a href="ContactPage.aspx">Learn more</a>
    </div>
  </div>
</div>

<!--FOOTER-->

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
        <div class="modal-container3" id="modal_container3">
          <div class="modal3">
            <h1>Currently PromoGram does:</h1>
            <ul>
              <li><span>1.</span>We offer a large selection of telecommunications solutions.</li>
              <li><span>2.</span>We perform service, repair and distribution on many technological devices and banknote counting machines.</li>
              <li><span>3.</span>We sell online many types of devices such as phones, routers, modems and all kinds of telecommunications equipment.</li>
            </ul>
            <button id="close3" type="button">
              Close
            </button>
          </div>
        </div>

        <!--Privacy Policy Modal-->
        <p id="pp">Privacy Policy</p>
        <div class="modal-container4" id="modal_container4">
          <div class="modal4">
            <h1>Our privacy policy rules are:</h1>
            <ul>
              <li><span>1.</span>We need your personal information so that we can provide our services to you.</li>
              <li><span>2.</span>We collect information only when you place an order or fill out our contact form.</li>
              <li><span>3.</span>Our site is reviewed on a regular basis for security vulnerabilities, so your personal data is safe with us.</li>
            </ul>
            <button id="close4" type="button">
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



    </form>
 <script src="policy.js"></script>
<script src="js/JavaScript.js"></script>
<script src="js/fixednav.js"></script>
<script src="js/MobileView.js"></script>
<script src="js/wwdpp.js"></script>
</body>
</html>
