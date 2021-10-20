<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShopNowPage.aspx.cs" Inherits="GraduationThesis.ShopNowPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/ShopNowCSS.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/30ce915f18.js" crossorigin="anonymous"></script>
    <title>Shop Now</title>
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

        <div class="modal-shop">
            <a href="ShopPage.aspx">
                <i class="fas fa-door-open"></i>
                <h6>U changed ur mind?
                    <br />
                    Click me to go back to our shop!
                </h6>
            </a>
            <div class="modal">
                <h4>Please fill in the form and our team will deliver the product to your  home address as soon as possible</h4>
                <form>
                    <div class="inputBox">
                        <asp:TextBox ID="txt_nameandsurname13" runat="server" Required="required"></asp:TextBox>
                        <span>Name & Surname</span>
                    </div>
                    <div class="inputBox">
                        <asp:TextBox ID="txt_phone13" runat="server" Required="required"></asp:TextBox>
                        <span>Telephone Number</span>
                    </div>
                    <div class="inputBox">
                        <asp:TextBox ID="txt_address13" runat="server" Required="required"></asp:TextBox>
                        <span>Address</span>
                    </div>
                    <div class="inputBox">
                        <asp:TextBox ID="txt_email13" runat="server" Required="required"></asp:TextBox>
                        <span>E-mail</span>
                        <div class="inputBox">
                            <asp:TextBox ID="txt_subject13" runat="server" Required="required"></asp:TextBox>
                            <span>Subject</span>
                        </div>
                    </div>
                    <div class="inputBox">
                        <asp:TextBox ID="txt_product13" runat="server" Required="required"></asp:TextBox>
                        <span>Product Name</span>
                    </div>
                    <div class="inputBox">
                        <asp:TextBox ID="txt_productprice" runat="server" Required="required"></asp:TextBox>
                        <span>Product Price</span>
                    </div>
                    <div class="inputBox">
                        <asp:DropDownList ID="dropdownlist1" CssClass="MyDropDownList" runat="server">
                        </asp:DropDownList>
                        <span id="quantity">Quantity</span>
                    </div>
                    <div class="inputBox">
                        <asp:DropDownList ID="dropdownlist13" runat="server" CssClass="MyDropDownList">
                            <asp:ListItem Selected hidden>Payment method</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Bank Card</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <h3>
                        <asp:Label ID="confirm" runat="server" Text=""></asp:Label>
                    </h3>
                    <div class="inputBox">
                        <asp:Button ID="button11" CssClass="MyButton" runat="server" Text="Order" OnClick="button11_Click" />
                    </div>

                </form>
            </div>
        </div>

        <div class="content">
            <img src="img/background1.jpg" width="2150" height="1050" />
        </div>

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


    <script src="js/fixednav.js"></script>
    <script src="js/MobileView.js"></script>
</body>
</html>
