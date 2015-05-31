<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <div class="container">
            <h1>Lucky 7s</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation" ><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/displayLucky7">Lucky 7s</a></li>
                </ul>    
            </div>
            <div>
                <h1 style="text-align: center">Welcome to the Lucky 7's Game Page!</h1>
                <p style="text-align: center">
                    How much money would you like to begin betting with?
                </p>
                <form style="text-align: center" action="submitLucky7" method="POST">
                    <input type="text" name="money"/>
                <button type="submit" class="btn btn-primary">AMOUNT</button>
            </div>
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
