<%@page import="ecommenrse.ejb.model.entities.Image" %>
    <%@page import="ecommenrse.ejb.model.entities.Product" %>
        <%@page import="java.util.Base64" %>
            <%@page import="java.util.ArrayList" %>
                <%@page import="java.util.List" %>
                    <!DOCTYPE html>
                    <html lang="en">

                    <head>
                        <!-- basic -->
                        <meta charset="utf-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1">
                        <!-- mobile metas -->
                        <meta name="viewport" content="width=device-width, initial-scale=1">
                        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
                        <!-- site metas -->
                        <title>FowardTech</title>
                        <meta name="keywords" content="">
                        <meta name="description" content="">
                        <meta name="author" content="">
                        <!-- bootstrap css -->
                        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
                        <!-- style css -->
                        <link rel="stylesheet" type="text/css" href="css/style.css">
                        <!-- Responsive-->
                        <link rel="stylesheet" href="css/responsive.css">
                        <!-- fevicon -->
                        <link rel="icon" href="images/fevicon.png" type="image/gif" />
                        <!-- Scrollbar Custom CSS -->
                        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
                        <!-- Tweaks for older IEs-->
                        <link rel="stylesheet"
                            href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
                        <!-- fonts -->
                        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
                            rel="stylesheet">
                        <!-- font awesome -->
                        <link rel="stylesheet" type="text/css"
                            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
                        <!-- owl stylesheets -->
                        <link
                            href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext"
                            rel="stylesheet">
                        <link rel="stylesheet" href="css/owl.carousel.min.css">
                        <link rel="stylesheet" href="css/owl.theme.default.min.css">
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
                            media="screen">
                        <style>
                            ._logo {
                                padding: 0px;
                                margin: 0px;
                            }

                            .background-image {
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;
                                height: 100%;
                                background-size: cover;
                                /* Adjust background size as needed */
                                background-position: center center;
                                filter: brightness(0.5);
                            }
                        </style>
                    </head>

                    <body>
                        <!-- banner bg main start -->

                        <div class="banner_bg_main">
                            <div class="background-image" style="background-image: url(./images/back.png)"></div>
                            <!-- header top section start -->
                            <div class="container">

                                <div class="header_section_top">
                                    <div class="row">
                                        <div class="_logo">
                                            <div class="logo"><a href="index.html"><img
                                                        src="images/Foward Teck Logo 2.png" width="150px"></a></div>
                                        </div>
                                        <div class="col-sm-12">

                                            <div class="custom_menu">
                                                <ul>
                                                    <li><a href="#">Best Sellers</a></li>
                                                    <li><a href="#">Gift Ideas</a></li>
                                                    <li><a href="#">New Releases</a></li>
                                                    <li><a href="#">Today's Deals</a></li>
                                                    <li><a href="#">Customer Service</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- header top section start -->
                            <!-- logo section start -->
                            <div class="logo_section">
                                <div class="container">
                                    <div class="row">

                                    </div>
                                </div>
                            </div>
                            <!-- logo section end -->
                            <!-- header section start -->
                            <div class="header_section">
                                <div class="container">
                                    <div class="containt_main">
                                        <div id="mySidenav" class="sidenav">
                                            <a href="javascript:void(0)" class="closebtn"
                                                onclick="closeNav()">&times;</a>
                                            <a href="index.html">Home</a>
                                            <a href="electronic.html">Products</a>
                                            <a href="jewellery.html">Phones</a>
                                            <a href="jewellery.html">Laptops</a>
                                        </div>
                                        <span class="toggle_icon" onclick="openNav()"><img
                                                src="images/toggle-icon.png"></span>
                                        <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">All Category
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                        </div>
                                        <div class="main">
                                            <!-- Another variation with a button -->
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search this blog">
                                                <div class="input-group-append">
                                                    <button class="btn btn-secondary" type="button"
                                                        style="background-color: #f26522; border-color:#f26522 ">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="header_box">
                                            <div class="lang_box ">
                                                <a href="#" title="Language" class="nav-link" data-toggle="dropdown"
                                                    aria-expanded="true">
                                                    <img src="images/flag-uk.png" alt="flag" class="mr-2 "
                                                        title="United Kingdom"> English
                                                    <i class="fa fa-angle-down ml-2" aria-hidden="true"></i>
                                                </a>
                                                <div class="dropdown-menu ">
                                                    <a href="#" class="dropdown-item">
                                                        <img src="images/flag-france.png" class="mr-2" alt="flag">
                                                        French
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="login_menu">
                                                <ul>
                                                    <li><a href="#">
                                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                            <span class="padding_10">Cart</span></a>
                                                    </li>
                                                    <li><a href="#">
                                                            <i class="fa fa-user" aria-hidden="true"></i>
                                                            <span class="padding_10">Cart</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- header section end -->
                            <!-- banner section start -->
                            <div class="banner_section layout_padding">
                                <div class="container">
                                    <div id="my_slider" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <h1 class="banner_taital">Foward Teck <br>World Of Electronics!
                                                        </h1>
                                                        <div class="buynow_bt"><a href="#">Buy Now</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <h1 class="banner_taital">Get Start <br>Your Dream iPhone</h1>
                                                        <div class="buynow_bt"><a href="#">Buy Now</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <h1 class="banner_taital">Get Your Product <br>Your favorite
                                                            Laptops</h1>
                                                        <div class="buynow_bt"><a href="#">Buy Now</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#my_slider" role="button"
                                            data-slide="prev">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                        <a class="carousel-control-next" href="#my_slider" role="button"
                                            data-slide="next">
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- banner section end -->
                        </div>
                        <!-- banner bg main end -->
                        <!-- fashion section start -->
                        <div class="fashion_section">
                            <div id="main_slider" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="container">
                                            <h1 class="fashion_taital" style="color:blue">Electronics</h1>
                                            <div class="fashion_section_2">
                                                <div class="row">
                                                    <% List<Product> products = (List<Product>)
                                                            request.getAttribute("products");
                                                            for (int i = 0; i < products.size(); i++) { String
                                                                name=products.get(i).getName(); double
                                                                normalPrice=products.get(i).getNormalPrice(); double
                                                                currentPrice=products.get(i).getCurrentPrice(); Image
                                                                image=products.get(i).getImages().get(0); String
                                                                image_source="data:image/jpg;base64," +
                                                                Base64.getEncoder().encodeToString(image.getImage_source());
                                                                String title=image.getPath(); %>
                                                                <div class="col-lg-4 col-sm-4">
                                                                    <div class="box_main">
                                                                        <h4 class="shirt_text">
                                                                            <%=name%>
                                                                        </h4>
                                                                        <p class="price_text">Old Price <span
                                                                                style="color: #262626; text-decoration: line-through;">
                                                                                <%= normalPrice %>
                                                                            </span></p>
                                                                        <p class="price_text">Current Price <span
                                                                                style="color: #262626;">
                                                                                <%= currentPrice %>
                                                                            </span></p>
                                                                        <div class="tshirt_img"><img
                                                                                src="<%=image_source%>"
                                                                                title="<%=title%>"></div>
                                                                        <div class="btn_main">
                                                                            <div class="buy_bt"><a href="#">Buy Now</a>
                                                                            </div>
                                                                            <div class="seemore_bt"><a href="#">See
                                                                                    More</a></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <% } %>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                        <!-- fashion section end -->

                        <!-- footer section start -->
                        <div class="footer_section layout_padding">
                            <div class="container">
                                <div class="footer_logo"><a href="index.html"><img src="images/Foward Teck Logo 2.png"
                                            width="200px"></a></div>
                                <div class="input_bt">
                                    <input type="text" class="mail_bt" placeholder="Your Email" name="Your Email">
                                    <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
                                </div>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="#">Best Sellers</a></li>
                                        <li><a href="#">Gift Ideas</a></li>
                                        <li><a href="#">New Releases</a></li>
                                        <li><a href="#">Today's Deals</a></li>
                                        <li><a href="#">Customer Service</a></li>
                                    </ul>
                                </div>
                                <div class="location_main">Help Line Number : <a href="#">+27 640693714</a></div>
                            </div>
                        </div>
                        <!-- footer section end -->
                        <!-- copyright section start -->
                        <div class="copyright_section">
                            <div class="container">
                                <p class="copyright_text">� 2024 All Rights Reserved. Foward Teck</a></p>
                            </div>
                        </div>
                        <!-- copyright section end -->
                        <!-- Javascript files-->
                        <script src="js/jquery.min.js"></script>
                        <script src="js/popper.min.js"></script>
                        <script src="js/bootstrap.bundle.min.js"></script>
                        <script src="js/jquery-3.0.0.min.js"></script>
                        <script src="js/plugin.js"></script>
                        <!-- sidebar -->
                        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
                        <script src="js/custom.js"></script>
                        <script>
                            function openNav() {
                                document.getElementById("mySidenav").style.width = "250px";
                            }

                            function closeNav() {
                                document.getElementById("mySidenav").style.width = "0";
                            }
                        </script>
                    </body>

                    </html>