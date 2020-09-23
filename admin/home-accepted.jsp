<%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.Connection"%>
            <%@page import="database.DBCon"%>
                <!DOCTYPE html>
                <html lang="en-US">
                <%
        String uname = null;
        //        session = request.getSession();
        if (session.getAttribute("username") == null) {
            response.sendRedirect("../index.jsp");
        } else {
            uname = session.getAttribute("username").toString();
        }

    %>

                    <head>
                        <metaa charset="UTF-8" />
                        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                        <meta name="format-detection" content="telephone=no">
                        <link rel="icon" type="image/x-icon" href="../images/favicon.ico" />
                        <title>GYM</title>
                        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->

                        <link rel='stylesheet' href='../css/core.portfolio.css' type='text/css' media='all' />
                        <link rel='stylesheet' href='../css/fontello/css/fontello.css' type='text/css' media='all' />
                        <link rel='stylesheet' href='../css/shortcodes.css' type='text/css' media='all' />
                        <link rel='stylesheet' href='../css/core.animation.css' type='text/css' media='all' />
                        <link rel='stylesheet' href='../css/style.css' type='text/css' media='all' />
                        <link rel='stylesheet' href='../css/skin.css' type='text/css' media='all' />
                        <style id='themerex-custom-style-inline-css' type='text/css'></style>
                        <link rel='stylesheet' href='../css/responsive.css' type='text/css' media='all' />
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                        <!--<link rel='stylesheet' href='custom_tools/css/front.customizer.css' type='text/css' media='all'/>-->
                        <style>
                            table .customtable th {
                                width: 33% !important;
                                background-color: brown;
                                text-align: center;
                            }
                            
                            .activepage {
                                background-color: black !important;
                            }
                            
                            table .customtable th a {
                                color: white !important;
                            }
                            
                            table .customtable :hover {
                                background-color: black;
                                color: brown !important;
                            }
                        </style>
                    </head>

                    <body class="single single-courses layout_single-courses body_style_fullscreen page-template-courses article_style_boxed top_panel_style_dark top_panel_opacity_solid top_panel_above menu_right sidebar_hide">

                        <div class="body_wrap">
                            <div class="page_wrap">
                                <div class="top_panel_fixed_wrap"></div>
                                <header class="top_panel_wrap bg_tint_dark bg_type_image">
                                    <div class="menu_main_wrap logo_left">
                                        <div class="content_wrap clearfix">
                                            <div class="logo">
                                                <span class="logo_shape">
                                    <a href="home-pending.jsp">
                                        <img src="../images/logo_light.png" class="logo_main" alt="">
                                        <img src="../images/logo_light.png" class="logo_fixed" alt="">
                                        <span class="logo_slogan"> </span>
                                                </a>
                                                </span>
                                            </div>
                                            <div class="search_wrap search_style_regular" title="Open/close search form">
                                                <div class="dropdown show">
                                                    <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <%= uname%>
                                                    </a>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                        <a style="width: 100%;" class="btn btn-primary dropdown-item">
                                            Log Out
                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="#" class="menu_main_responsive_button icon-menu-1"> </a>
                                            <nav role="navigation" class="menu_main_nav_area menu_color_bg_1">
                                                <ul id="menu_main" class="menu_main_nav">
                                                    <li class="menu-item">
                                                        <a href="">
                                                            <span>Reservations</span>
                                                        </a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="home-users.jsp">
                                                            <span>Users</span>
                                                        </a>
                                                    </li>
                                                    <!-- <li class="menu-item">
                                        <a href="#">
                                            <span>Contact Us</span>
                                        </a>
                                    </li> -->
                                                    <!-- <li class="menu-item">
                                        <a data-toggle="modal" data-target="#loginModal">
                                            <span>Login</span>
                                        </a>
                                    </li> -->

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

                                <div class="page_content_wrap">
                                    <div>
                                        <br>
                                        <div class="sc_table">
                                            <table>
                                                <tr class="customtable">
                                                    <th><a href="home-pending.jsp">Pending Reservations</a></th>
                                                    <th class="activepage"><a href="home-accepted.jsp">Accepted Reservations</a></th>
                                                    <th><a href="home-declined.jsp">Declined Reservations</a></th>
                                                </tr>

                                            </table>

                                        </div>
                                        <article class="post_item post_item_single_courses post_featured_center has-post-thumbnail">
                                            <section class="content_wrap">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="sc_section bg_tint_none">
                                                            <div class="sc_content content_wrap">
                                                                <div class="sc_section bg_tint_none aligncenter">
                                                                    <h2 class="sc_title style_3">Accepted Reservations</h2>
                                                                </div>
                                                                <div class="sc_table style_1">
                                                                    <br/>
                                                                    <table>
                                                                        <tbody>
                                                                            <tr>
                                                                                <th>Username</th>
                                                                                <th>Date</th>
                                                                                <th>Time</th>
                                                                                <th>Trainer</th>
                                                                                <th>Action</th>
                                                                            </tr>
                                                                            <%      DBCon obj_DB_Connection = new DBCon();
                                                                Connection connection = obj_DB_Connection.get_connection();
                                                                PreparedStatement ps = null;
                                                                ResultSet rs = null;
                                                                String sql = "select * from reservations where `status`='approved'";
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                ps = connection.prepareStatement(sql);
                                                                rs = ps.executeQuery();
                                                                while (rs.next()) {
                                                            %>
                                                                                <tr>
                                                                                    <td>
                                                                                        <%= rs.getString(3)%>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%= rs.getString(6)%>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%= rs.getString(7)%>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%= rs.getString(5)%>
                                                                                    </td>
                                                                                    <td>
                                                                                        <form method="post" action="../DeclineReservation">
                                                                                            <input type="hidden" name="req_id" value="<%= rs.getString(1)%>">
                                                                                            <button type="submit" class="btn btn-danger">Decline</button>
                                                                                        </form>
                                                                                    </td>
                                                                                </tr>
                                                                                <%
                                                                }
                                                            %>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>

                                        </article>

                                    </div>
                                </div>
                            </div>

                            <!-- <a href="#" class="scroll_to_top icon-up-dir" title="Scroll to top"></a> -->

                            <div class="preloader">
                                <div class="preloader_image"></div>
                            </div>
                        </div>


                        <script type='text/javascript' src='../js/vendor/jquery-1.11.3.min.js'></script>
                        <script type='text/javascript' src='../js/vendor/jquery-migrate.min.js'></script>

                        <script type='text/javascript' src='../js/custom/_main.js'></script>

                        <script type='text/javascript' src='../js/vendor/superfish.min.js'></script>
                        <script type='text/javascript' src='../js/vendor/jquery.slidemenu.min.js'></script>
                        <script type='text/javascript' src='../js/custom/core.utils.min.js'></script>
                        <script type='text/javascript' src='../js/custom/core.init.min.js'></script>
                        <script type='text/javascript' src='../js/custom/shortcodes.min.js'></script>

                        <!--<script type='text/javascript' src='custom_tools/js/skin.customizer.js'></script>-->
                        <!--<script type='text/javascript' src='custom_tools/js/front.customizer.js'></script>-->


                    </body>

                </html>
