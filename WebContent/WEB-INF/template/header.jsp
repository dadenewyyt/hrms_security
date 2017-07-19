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
