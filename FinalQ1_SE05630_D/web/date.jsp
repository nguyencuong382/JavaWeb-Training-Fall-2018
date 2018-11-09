<%-- 
    Document   : date
    Created on : Nov 1, 2018, 3:17:05 PM
    Author     : Admin
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setAttribute("now", new Date());
        %>
        <p>Formatted Date (7): <fmt:formatDate pattern = "yyyy-MM-dd" 
                        value = "${now}"/></p>
        
        <input type="date" value="<fmt:formatDate pattern = "yyyy-dd-MM" 
                        value = "${now}"/>">

    </body>
</html>
