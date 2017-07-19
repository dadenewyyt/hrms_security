<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
    //response.setHeader("Cache-Control","no-store"); //HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<link rel="shortcut icon" href="<c:url value="/images/favicon.ico" />"--%>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Dashen Bank | <sitemesh:write property='title'/></title>

    <!-- Bootstrap -->
    <spring:url value="/resources/bootstrap/dist/css/bootstrap.css" var="boostrapcss" htmlEscape="true"/>
    <link href="${boostrapcss}" rel="stylesheet">
    <!-- Font Awesome -->
    <spring:url value="/resources/font-awesome/css/font-awesome.min.css" var="fontAwsome" htmlEscape="true"/>
    <link href="${fontAwsome}" rel="stylesheet">
    <!-- NProgress -->
    <spring:url value="/resources/nprogress/nprogress.css" var="nprogress" htmlEscape="true"/>
    <link href="${nprogress}" rel="stylesheet">
    <!-- iCheck -->
    <spring:url value="/resources/iCheck/skins/flat/green.css" var="green" htmlEscape="true"/>
    <link href="${green}" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <spring:url value="/resources/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" var="bootstrapprogressbar" htmlEscape="true"/>
    <link href="${bootstrapprogressbar}" rel="stylesheet">
    <!-- JQVMap -->
    <spring:url value="/resources/jqvmap/dist/jqvmap.min.css" var="jqvmap" htmlEscape="true"/>
    <link href="${jqvmap}" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <spring:url value="/resources/bootstrap-daterangepicker/daterangepicker.css" var="daterangepicker" htmlEscape="true"/>
    <link href="${daterangepicker}" rel="stylesheet">

    <!-- Custom Theme Style -->
    <spring:url value="/resources/css/custom.min.css" var="customcss" htmlEscape="true"/>
    <link href="${customcss}" rel="stylesheet">
    <sitemesh:write property='head'/>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">

        <%@ include file="../template/side_menu.jsp" %>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">

                                <img src="${img}" alt="" />John Doe
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="javascript:;"> Profile</a></li>
                                <li>
                                    <a href="javascript:;">
                                        <span class="badge bg-red pull-right">50%</span>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="${img}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="${img}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="${img}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="${img}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <sitemesh:write property='body'/>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Dashen Bank SC <a href="https://colorlib.com">HRMS system</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>
<!-- jQuery -->
<spring:url value="/resources/jquery/dist/jquery.js" var="JqueryMin" htmlEscape="true"/>
<script src="${JqueryMin}"></script>
<!-- Bootstrap -->
<spring:url value="/resources/bootstrap/dist/js/bootstrap.js" var="BootstrapMin" htmlEscape="true"/><script src="${BootstrapMin}"></script>
<!-- FastClick -->
<spring:url value="/resources/fastclick/lib/fastclick.js" var="fastClick" htmlEscape="true"/>
<script src="${fastClick}"></script>
<spring:url value="/resources/nprogress/nprogress.js" var="nprogress" htmlEscape="true"/>
<script src="${nprogress}"></script>
<!-- Chart.js -->
<spring:url value="/resources/Chart.js/dist/Chart.js" var="Chart" htmlEscape="true"/>
<script src="${Chart}"></script>
<!-- gauge.js -->
<spring:url value="/resources/gauge.js/dist/gauge.js" var="Gauge" htmlEscape="true"/>
<script src="${Gauge}"></script>
<!-- bootstrap-progressbar -->
<spring:url value="/resources/bootstrap-progressbar/bootstrap-progressbar.js" var="bootstrapprogressbar" htmlEscape="true"/>
<script src="${bootstrapprogressbar}"></script>

<!-- iCheck -->
<spring:url value="/resources/iCheck/icheck.js" var="Icheck" htmlEscape="true"/>
<script src="${Icheck}"></script>
<!-- Skycons -->
<spring:url value="/resources/skycons/skycons.js" var="skycons" htmlEscape="true"/>
<script src="${skycons}"></script>
<!-- Flot -->
<spring:url value="/resources/Flot/jquery.flot.js" var="Flot" htmlEscape="true"/>
<script src="${Flot}"></script>
<spring:url value="/resources/Flot/jquery.flot.pie.js" var="FlotPie" htmlEscape="true"/>
<script src="${FlotPie}"></script>
<spring:url value="/resources/Flot/jquery.flot.time.js" var="FlotTime" htmlEscape="true"/>
<script src="${FlotTime}"></script>
<spring:url value="/resources/Flot/jquery.flot.stack.js" var="FlotStack" htmlEscape="true"/>
<script src="${FlotStack}"></script>
<spring:url value="/resources/Flot/jquery.flot.resize.js" var="FlotResize" htmlEscape="true"/>
<script src="${FlotResize}"></script>

<!-- Flot plugins -->
<spring:url value="/resources/flot.orderbars/js/jquery.flot.orderBars.js" var="jquery_flot_orderBars" htmlEscape="true"/>
<script src="${jquery_flot_orderBars}"></script>
<spring:url value="/resources/flot-spline/js/jquery.flot.spline.min.js" var="jquery_flot_spline" htmlEscape="true"/>
<script src="${jquery_flot_spline}"></script>
<spring:url value="/resources/flot.curvedlines/curvedLines.js" var="curvedLines" htmlEscape="true"/>
<script src="${curvedLines}"></script>
<!-- DateJS -->
<spring:url value="/resources/DateJS/build/date.js" var="date" htmlEscape="true"/>
<script src="${date}"></script>
<!-- JQVMap -->
<spring:url value="/resources/jqvmap/dist/jquery.vmap.js" var="jquery_vmap" htmlEscape="true"/>
<script src="${jquery_vmap}"></script>
<spring:url value="/resources/jqvmap/dist/maps/jquery.vmap.world.js" var="jquery_vmap_world" htmlEscape="true"/>
<script src="${jquery_vmap_world}"></script>
<spring:url value="/resources/jqvmap/examples/js/jquery.vmap.sampledata.js" var="jquery_vmap_sampledata" htmlEscape="true"/>
<script src="${jquery_vmap_sampledata}"></script>
<!-- bootstrap-daterangepicker -->
<spring:url value="/resources/moment/min/moment.min.js" var="moment" htmlEscape="true"/>
<script src="${moment}"></script>
<spring:url value="/resources/bootstrap-daterangepicker/daterangepicker.js" var="daterangepicker" htmlEscape="true"/>
<script src="${daterangepicker}"></script>
<spring:url value="/resources/jQuery-Smart-Wizard/js/jquery.smartWizard.js" var="jqueryWizard" htmlEscape="true"/>

<script src="${jqueryWizard}"></script>

<!-- Custom Theme Scripts -->
<spring:url value="/resources/js/custom.min.js" var="custom" htmlEscape="true"/>
<script src="${custom}"></script>

</body>
</html>
