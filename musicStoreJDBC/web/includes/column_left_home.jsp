<%-- 
    Document   : column_left_home
    Created on : 3-Jul-2016, 1:40:39 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<aside id="sidebarA">
    <nav>
      <ul>
          <li><a class="current" href="<c:url value='/' />">Home</a></li>
          <li><a href="<c:url value='/catalog' />">Browse Catalog</a></li>
          <li><a href="<c:url value='/email' />">Join Email List</a></li>
          <li><a href="<c:url value='/customer_service' />">Customer Service</a></li>
      </ul>
    </nav>
</aside>
