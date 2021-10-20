<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="ShopPage.aspx.cs" Inherits="GraduationThesis.ShopPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/ShopPageCSS.css" rel="stylesheet" />
    <!--  favicon -->
    <link rel="shortcut icon" href="img/PGICON.png" />
    <!--  glide carousel -->
    <link rel="stylesheet" href="glide-3.4.1/dist/css/glide.core.min.css" />
    <link rel="stylesheet" href="glide-3.4.1/dist/css/glide.theme.min.css" />
    <title>PromoGram Shop</title>
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
                    <li><a href="ShopPage.aspx" class="active">Shop</a></li>
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

        <div class="content">
            <h2>Welcome to our online shop</h2>
            <p>
                You are on the right place to get your new technology device at the best price!<br />
                <br />
                &#x21e9; <span>Every week we provide to our customers three products on discount</span> &#x21e9;
            </p>
        </div>

        <div class="hero">
            <div class="glide" id="glide_1">
                <div class="glide__track" data-glide-el="track">
                    <ul class="glide__slides">
                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Introducing the new model from Meizu:</h1>
                                    <asp:Label ID="Label3" runat="server" Text="Meizu Pro 7, Black"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label14" runat="server" CssClass="MyLabelButton" Text=""></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button13" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button13_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Meizu_Pro7_Black.png" alt="meizu" class="banner_01" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>The last model from the Lite Series:</h1>
                                    <asp:Label ID="Label4" runat="server" Text="Huawei P40 Lite, White"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label15" runat="server" CssClass="MyLabelButton" Text="150&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button14" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button14_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Huawei-P40-lite.png" height="450" alt="Huawei" class="banner_02" />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Introducing the new generation of Iphone:</h1>
                                    <asp:Label ID="Label5" runat="server" Text="Iphone 12 Pro, Blue"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label16" runat="server" CssClass="MyLabelButton" Text="800&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button15" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button15_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Iphone_12.png" alt="Iphone" class="banner_03" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Introducing the brand new from Nokia:</h1>
                                    <asp:Label ID="Label6" runat="server" Text="Nokia 8, Navy Blue"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label17" runat="server" CssClass="MyLabelButton" Text="150&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button16" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button16_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Nokia_8.png" height="450" width="500" alt="Nokia 8" class="banner_04" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>The last model from the wireless headphones:</h1>
                                    <asp:Label ID="Label7" runat="server" Text="Tellur Wireless Headphones, Blue"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label18" runat="server" CssClass="MyLabelButton" Text="20&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button17" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button17_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Tellur_Blue1.png" alt="Tellur Headphones" class="banner_05" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Introducing the updated U11 model from HTC:</h1>
                                    <asp:Label ID="Label8" runat="server" Text="HTC U11, Olive Green"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label19" runat="server" CssClass="MyLabelButton" Text="300&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button18" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button18_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Htc_U11_Black.png" height="450" width="500" alt="Htc U11" class="banner_06" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>The latest from the legendary BB series:</h1>
                                    <asp:Label ID="Label9" runat="server" Text="Blackberry Bold 9000, Black"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label20" runat="server" CssClass="MyLabelButton" Text="80&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button19" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button19_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/blackberry-bold.png" height="450" alt="BB Bold" class="banner_07" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Last router from Tenda in stock:</h1>
                                    <asp:Label ID="Label10" runat="server" Text="Tp Link Router, White"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label21" runat="server" CssClass="MyLabelButton" Text="15&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button20" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button20_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Tp-Link-White1.png" height="450" alt="BB Bold" class="banner_08" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Introducing the new generation of Kis series:</h1>
                                    <asp:Label ID="Label11" runat="server" Text="Zte Kis 2 Max, Black"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label22" runat="server" CssClass="MyLabelButton" Text="120&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button21" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button21_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Zte_KisMax_Black2.png" height="450" width="500" alt="BB Bold" class="banner_09" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Last modem from Motorola in stock:</h1>
                                    <asp:Label ID="Label12" runat="server" Text="Motorola Modem, Black"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label23" runat="server" CssClass="MyLabelButton" Text="80&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button22" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button22_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Motorola_Modem_Black.png" height="450" alt="BB Bold" class="banner_10" />
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="glide__slide">
                            <div class="hero__center">
                                <div class="hero__left">
                                    <h1>Introducing the Mate 20 from Huawei:</h1>
                                    <asp:Label ID="Label13" runat="server" Text="Huawei Mate 20, Lightblue"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label24" runat="server" CssClass="MyLabelButton" Text="250&euro;"></asp:Label>
                                    <br />
                                    <p>Trending from mobile and headphones</p>
                                    <asp:Button ID="Button23" runat="server" CssClass="hero__btn" Text="SHOP NOW" OnClick="Button23_Click" />
                                </div>
                                <div class="hero__right">
                                    <div class="hero__img-container">
                                        <img src="products/Huawei_Mate20.png" height="450" alt="BB Bold" class="banner_11" />
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="glide__bullets" data-glide-el="controls[nav]">
                    <button class="glide__bullet" data-glide-dir="=0"></button>
                    <button class="glide__bullet" data-glide-dir="=1"></button>
                    <button class="glide__bullet" data-glide-dir="=2"></button>
                    <button class="glide__bullet" data-glide-dir="=3"></button>
                    <button class="glide__bullet" data-glide-dir="=4"></button>
                    <button class="glide__bullet" data-glide-dir="=5"></button>
                    <button class="glide__bullet" data-glide-dir="=6"></button>
                    <button class="glide__bullet" data-glide-dir="=7"></button>
                    <button class="glide__bullet" data-glide-dir="=8"></button>
                    <button class="glide__bullet" data-glide-dir="=9"></button>
                    <button class="glide__bullet" data-glide-dir="=10"></button>
                </div>
                <div class="glide__arrows" data-glide-el="controls">
                    <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                        <svg>
                            <use xlink:href="img/sprite.svg#icon-arrow-left2"></use>
                        </svg>
                    </button>
                    <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                        <svg>
                            <use xlink:href="img/sprite.svg#icon-arrow-right2"></use>
                        </svg>
                    </button>
                </div>
            </div>
        </div>

        <!--NEW ARRIVALS-->
        <main id="main">
            <section class="section collection" id="collection">
                <div class="container_2">
                    <div class="collection__container">
                        <div class="collection__box">
                            <div class="img__container">
                                <img src="products/Tenda_AC7_1200_Black.png" alt="collection" class="collection_02" />
                            </div>
                            <div class="collection__content">
                                <div class="collection__data">
                                    <span>Introducing new arrivals</span>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="Tenda Router AC7, Black"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label25" runat="server" CssClass="MyLabelButton1" Text="50&euro;"></asp:Label>
                                    <br />
                                    <asp:Button ID="Button11" runat="server" CssClass="shopnow" Text="SHOP NOW" OnClick="Button11_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="collection__box">
                            <div class="img__container">
                                <img src="products/GigasetDX800.png" alt="collection" class="collection_01" />
                            </div>
                            <div class="collection__content">
                                <div class="collection__data">
                                    <span>Introducing new arrivals</span>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Gigaset Phone DX 800, Silver"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label26" runat="server" CssClass="MyLabelButton1" Text="350&euro;"></asp:Label>
                                    <br />
                                    <asp:Button ID="Button12" runat="server" CssClass="shopnow" Text="SHOP NOW" OnClick="Button12_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <div class="popup hide__popup">
            <div class="popup__content">
                <div class="popup__close">
                    <svg>
                        <use xlink:href="img/sprite.svg#icon-cross"></use>
                    </svg>
                </div>
                <div class="popup__left">
                    <div class="popup-img__container">
                        <img src="img/newsletter-background.jpg" alt="" class="popup__img" />
                    </div>
                </div>
                <div class="popup__right">
                    <div class="right__content">
                        <h1>Get Discount <span>30%</span> Off</h1>
                        <p>Sign up to our newsletter and save 30% for your next purchase!</p>
                        <form>
                            <asp:TextBox ID="email_textbox" CssClass="popup__form" placeholder="Please enter your e-mail" runat="server">
                            </asp:TextBox>
                            <asp:RegularExpressionValidator ID="validator1" runat="server" ErrorMessage="Invalid character, your e-mail address must contain @" ControlToValidate="email_textbox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <h3>
                                <asp:Label ID="confirm" runat="server" Text=""></asp:Label>
                            </h3>
                            <asp:Button ID="subscribe" runat="server" Text="Subscribe" type="button" OnClick="subscribe_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <a href="#header" class="goto-top scroll-link">
            <svg>
                <use xlink:href="img/sprite.svg#icon-arrow-up"></use>
            </svg>
        </a>

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
                            <div class="modal1">
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
                            <div class="modal1">
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

    </form>
    <script src="glide-3.4.1/dist/glide.min.js"></script>
    <script src="js/MobileView.js"></script>
    <script src="js/popup.js"></script>
    <script src="js/fixednav.js"></script>
    <script src="js/slider.js"></script>
    <script src="js/policy.js"></script>
</body>
</html>
