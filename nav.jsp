<%-- 
    Document   : nav
    Created on : Feb 3, 2023, 11:38:27 PM
    Author     : ACER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <style>
            body{
                font-family: Nunito, Verdana, sans-serif;
            }
            .a{
                font-size: 30px;
                color:  #E50914;
                font-family: Nunito, Verdana, sans-serif;
                font-weight: bolder;

            }
            .b{
                font-size: 20px;
                color: red;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img alt="" width="100px" class="d-inline-block align-text-top">
                </a>
                <c:if test="${acc!=null}">
                    <span class="a">Wellcome <b style="color: #FFB903"> ${acc.fullname}</b> to booking Motel Room system !</span>
                    <a class="b" href="login"><b>Log out</b></a>
                </c:if>
                <c:if test="${acc==null}">
                    <a href="login"><b>Log in</b></a>
                </c:if>
            </div>
        </nav>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
