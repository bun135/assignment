<%-- 
    Document   : index
    Created on : Feb 3, 2023, 11:38:27 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title class="p1">Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            body{
                background-image: url("img/hihi.png");
                background-repeat: no-repeat;
                background-position: center;
                background-attachment: fixed;
            }
            .p1{
                font-family: Arial, Helvetica, sans-serif;
                font-weight: bolder;
            }
            .p2{
                font-family: Tahoma, Verdana, sans-serif;
                font-weight: bolder;
            }
            .text-center a{
                text-decoration: none;
            }
            .col a{
                text-decoration: none;
            }
            .p3{
                color: black;
                font-family: Tahoma, Verdana, sans-serif;
                font-weight: bolder;

            }
            .p4{
                color: darkturquoise;
                font-family: Tahoma, Verdana, sans-serif;
                font-weight: bolder;

            }
            p{
                color: white;
                font-family: Tahoma, Verdana, sans-serif;

            }
        </style>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>

        <h1 style="text-align: center; font-size: 50px; color: black; margin-top: 12%" class="p1">Motel Room Login</h1>
        <div class="container">
            <div class="row justify-content-center mt-4">
                <div class="col-4">
                    <form action="login" method="post">
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="form2Example1"><span class="p2">Email address</span></label>
                            <input type="email" name="email" id="form2Example1" class="form-control" />
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="form2Example2"><span class="p2">Password</span></label><input type="password" name="password" id="form2Example2" class="form-control" />
                        </div>
                        <div><p style="color: red">${mes}</p></div>
                        <!-- 2 column grid layout for inline styling -->
                        <div class="row mb-4">
                            <div class="col d-flex justify-content-center">
                                <!-- Checkbox -->
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                                    <label class="form-check-label" for="form2Example31"><span class="p2">Remember me</span></label>
                                </div>
                            </div>

                            <div class="col">
                                <!-- Simple link -->
                                <a href="#!"><span class="p3">Forgot password?</span></a>
                            </div>
                        </div>

                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary btn-block mb-4"><span class="p2">Sign in</span></button>

                        <!-- Register buttons -->
                        <div class="text-center">
                            <p>Not a member ? <a href="register.jsp"><span class="p4">Register</span></a></p>
                            <p>or sign up with:</p>
                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-facebook-f"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-google"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-twitter"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="fab fa-github"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
