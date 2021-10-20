<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="GraduationThesis.ContactPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/ContactPageCSS.css" rel="stylesheet" />
    <title>Contact Page</title>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
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
                    <li><a href="ServicesPage.aspx">Services</a></li>
                    <li><a href="ContactPage.aspx" class="active">Contact</></a></li>
                </ul>
                <div class="burger">
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
            </nav>
        </header>


        <section class="contact">
            <div class="content">
                <h2>Contact Us</h2>
                <p>
                    Do you have any questions about our location, our services, our promotions or maybe you would like to make an appointment for service on your device?
                    <br />
                    <br />
                    &#x21e9; <span>Please feel free to get in touch with us, we are available for you always.</span> &#x21e9;
                </p>
            </div>
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Address</h3>
                            <p>Boris Trajkovski 72<br />
                                Skopje, North Macedonia<br />
                                PostCode 1000</p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Phone Number</h3>
                            <p>02 3111 110</p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>E-mail</h3>
                            <p>bojanwever@gmail.com</p>
                        </div>
                    </div>
                </div>
                <div class="contactForm">
                    <form>
                        <h2>Send Message</h2>
                        <h3>
                            <asp:Label ID="confirm" runat="server" Text=""></asp:Label>
                        </h3>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_name" runat="server" Required="required"></asp:TextBox>
                            <span>Name</span>
                        </div>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_surname" runat="server" Required="required"></asp:TextBox>
                            <span>Surname</span>
                        </div>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_email" runat="server" Required="required"></asp:TextBox>
                            <span>E-mail</span>
                        </div>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_phone" runat="server" Required="required"></asp:TextBox>
                            <span>Phone Number</span>
                        </div>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_subject" runat="server" Required="required"></asp:TextBox>
                            <span>Subject</span>
                        </div>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_message" runat="server" Required="required" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            <span>Type your Message</span>
                        </div>

                        <asp:Button ID="btn_send" runat="server" Text="Send" OnClick="btn_send_Click" />
                    </form>
                </div>
            </div>
        </section>

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

    </form>
    <script src="js/policy.js"></script>
    <script src="js/MobileView.js"></script>
    <script src="js/fixednav.js"></script>
</body>
</html>
