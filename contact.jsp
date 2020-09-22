<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" type="image/x-icon" href="images/favicon.ico" />
    <title>GYM</title>
    <link rel='stylesheet' href='css/fontello/css/fontello.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/shortcodes.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/core.animation.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
    <link rel='stylesheet' href='css/skin.css' type='text/css' media='all' />
    <style id='themerex-custom-style-inline-css' type='text/css'></style>
    <link rel='stylesheet' href='css/responsive.css' type='text/css' media='all' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!--<link rel='stylesheet' href='custom_tools/css/front.customizer.css' type='text/css' media='all'/>-->
    <script>
      //funcion
        function initMap() {
            // The location of Uluru
            var uluru = {
                lat: 6.8213425,
                lng: 80.0415854
            };
            // The map, centered at Uluru
            var map = new google.maps.Map(
                document.getElementById('map'), {
                    zoom: 14,
                    center: uluru
                });
            // The marker, positioned at Uluru
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>
    <!--Load the API from the specified URL
        * The async attribute allows the browser to render the page while the API loads
        * The key parameter will contain your own API key (which is not needed for this tutorial)
        * The callback parameter executes the initMap() function
        -->
    <script defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap">
    </script>
</head>

<body class="page body_style_fullscreen article_style_boxed top_panel_style_dark top_panel_opacity_solid top_panel_above menu_right sidebar_hide">
    <div class="modal fade" id="loginModal" role="dialog">
        <div class="modal-dialog modal-sm" style="margin-top: 25vh;">

            <!-- Modal content-->
            <div class="modal-content">
                <form method="post" action="LoginServlet">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Login</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="pass" class="form-control" placeholder="Password" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Login</button>

                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <div class="body_wrap">
        <div class="page_wrap">
            <div class="top_panel_fixed_wrap"></div>
            <header class="top_panel_wrap bg_tint_dark bg_type_image menu_bg_image menu_bg_image_2">
                <div class="menu_main_wrap logo_left">
                    <div class="content_wrap clearfix">
                        <div class="logo">
                            <span class="logo_shape">
                                    <a href="index.html">
                                        <img src="images/logo_light.png" class="logo_main" alt="">
                                        <img src="images/logo_light.png" class="logo_fixed" alt="">
                                        <span class="logo_slogan"> </span>
                            </a>
                            </span>
                        </div>
                        <a href="#" class="menu_main_responsive_button icon-menu-1"> </a>
                        <nav role="navigation" class="menu_main_nav_area menu_color_bg_1">
                            <ul id="menu_main" class="menu_main_nav">
                                <li class="menu-item">
                                    <a href="index.jsp">
                                        <span>Home</span>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="about.jsp">
                                        <span>About Us</span>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="contact.jsp">
                                        <span>Contact Us</span>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a data-toggle="modal" data-target="#loginModal">
                                        <span>Login</span>
                                    </a>
                                </li>

                                <li id="blob">
                                    <span>
                                            <span></span>
                                    </span>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>

            <div class="top_panel_style_dark page_top_wrap page_top_title page_top_breadcrumbs">

                <div class="content_wrap">
                    <h1 class="page_title">Contact Us</h1>
                </div>
            </div>

            <div class="page_content_wrap">
                <div class="content">
                    <article class="post_item post_item_single post_format_standard page">
                        <div class="post_content">

                            <section class="no_padding content_wrap">
                                <div class="container">
                                    <div class="row">
                                        <div class="sc_section">
                                            <div class="sc_content content_wrap">
                                                <h5 class="sc_undertitle style_3 aligncenter margin_top_none">Find Us On The Map</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                            <section class="no_padding">
                                <div class="container">
                                    <div class="row">
                                        <div style="height: 400px;  
                                                 width: 100%;" id="map"></div>
                                    </div>
                                </div>
                            </section>

                            <section class="darkblue_opacity_section contact_section bg_image_13">
                                <div class="container">
                                    <div class="row">
                                        <div class="sc_section overlay_padding_off bg_tint_none">
                                            <div class="sc_section_overlay">
                                                <div class="sc_section_content">
                                                    <div class="sc_content content_wrap">
                                                        <div class="sc_section bg_tint_dark aligncenter">
                                                            <h2 class="sc_title style_1">GET IN TOUCH</h2>
                                                            <h5 class="sc_undertitle style_4">Have a question for us?</h5>
                                                        </div>
                                                    </div>
                                                    <div class="sc_content content_wrap margin_top_middle">
                                                        <div class="columns_wrap sc_columns columns_nofluid sc_columns_count_2">
                                                            <div class="">
                                                                <div class="bg_tint_dark">
                                                                    <div class="column-1_2">
                                                                        <p>
                                                                            <strong>OPERATING HOURS:</strong>
                                                                        </p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>Monday to Friday 10:00 to 23:00.<br />Saturdays 12:00 to 00:00.<br />Sundays 14:00 to 22:00.</p>
                                                                        <p>Closed on public holidays.</p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>
                                                                            <strong>ADDRESS:</strong>
                                                                        </p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>500 South Capitol Avenue, Indianapolis, <br/>IN 46225</p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>
                                                                            <strong>TELEPHONE:</strong>
                                                                        </p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>+1 78 123 5678</p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>
                                                                            <strong>FAX:</strong>
                                                                        </p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>+1 78 123 5678</p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>
                                                                            <strong>EMAIL:</strong>
                                                                        </p>
                                                                    </div>
                                                                    <div class="column-1_2">
                                                                        <p>
                                                                            <a href="mailto:info@example.com">info@example.com</a>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                        </div>
                    </article>
                </div>
            </div>

        </div>

        <a href="#" class="scroll_to_top icon-up-dir" title="Scroll to top"></a>

        <div class="preloader">
            <div class="preloader_image"></div>
        </div>
    </div>


    <script type='text/javascript' src='js/vendor/jquery-1.11.3.min.js'></script>
    <script type='text/javascript' src='js/vendor/jquery-migrate.min.js'></script>

    <script type='text/javascript' src='js/custom/_main.js'></script>
    <script type='text/javascript' src='js/custom/_form_contact.js'></script>

    <script type='text/javascript' src='js/vendor/superfish.min.js'></script>
    <script type='text/javascript' src='js/vendor/jquery.slidemenu.min.js'></script>
    <script type='text/javascript' src='js/custom/core.utils.min.js'></script>
    <script type='text/javascript' src='js/custom/core.init.min.js'></script>
    <script type='text/javascript' src='js/custom/shortcodes.min.js'></script>
    <script type='text/javascript' src='http://maps.google.com/maps/api/js?sensor=false'></script>
    <script type='text/javascript' src='js/custom/core.googlemap.js'></script>

    <!--<script type='text/javascript' src='custom_tools/js/skin.customizer.js'></script>-->
    <!--<script type='text/javascript' src='custom_tools/js/front.customizer.js'></script>-->


</body>

</html>
