<%-- 
    Document   : header
    Created on : 3-Jul-2016, 1:24:02 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stephen's Music Store</title>
        <link rel="shortcut icon" href="<c:url value='/images/favicon.ico'/>">
        <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    </head>
    <body>
        <header>
            <img src="<c:url value='/images/logo.jpg'/>" alt="Music Store Logo" width="58">
            <h1>Stephen's Music Store</h1>
            <h2>Enjoy the Music!</h2>
        </header>
        <nav id="nav_bar">
            <ul>
                <li><a href="<c:url value='/admin'/>"> Admin</a></li>
                <li><a href="<c:url value='/user/deleteCookies'/>"> Delete Cookies</a></li>
                <li><a href="<c:url value='/order/showCart'/>"> Show Cart</a></li>
            </ul>
        </nav>
