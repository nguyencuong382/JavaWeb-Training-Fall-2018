<%-- 
    Document   : showStudent.jsp
    Created on : Nov 5, 2018, 8:59:20 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <p>Student Id: <%=request.getAttribute("studentId")%> </p>
        
    </body>
</html>
