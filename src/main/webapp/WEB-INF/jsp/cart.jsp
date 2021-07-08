<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <title>Confirm Order</title>
                    <link rel="stylesheet" href="style.css">

                    <link href="https://fonts.googleapis.com/css?family=Oswald:400" rel="stylesheet">
                    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                        crossorigin="anonymous">

                    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap"
                        rel="stylesheet">
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
                        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
                        crossorigin="anonymous">
                </head>

                <body>
                    <div id="particles-js"></div>
                    <script src="particles.js"></script>
                    <script src="app.js"></script>

                    <div class="banner">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <!-- <a class="navbar-brand" href="#"><img src="logo8.ico"></a> -->
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNav" style="font-size: 24px !important;">
                                <ul class="navbar-nav">

                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#footer">About</a>
                                    </li>

                                </ul>
                                <ul class="navbar-nav ml-auto">

                                    <li class="nav-item">
                                        <a class="nav-link" href="#footer">Contact</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/portal/login">Logout</a>
                                    </li>

                                </ul>
                            </div>
                        </nav>

                        <!-- progreebar start -->

                        <div class="row">
                            <div class="col-lg">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-warning " role="progressbar"
                                        style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-info progress-bar-animated "
                                        role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0"
                                        aria-valuemax="100">Order Summary
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-success" role="progressbar"
                                        style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- progress bar ends -->
                    </div>

                    <!-- form -->
                    <div class="container">
                        <div>
                            <br>
                            <br>
                            <br>
                        </div>

                        <div class="row justify-content-md-center">
                            <div class="col-md-8">
                                <div class="jumbotron" style="border-radius: 32px ;opacity: 85%;">
                                    <h1 class="display-8">Your Cart Summary </h1>
                                    <br><br>

                                    <!-- <form method="post"> -->
                                    <form action="/portal/paymentStatus" method="get">
                                        <div class="container">
                                            <!-- first Name -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Customer Name:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right">${model.userName}</p1>
                                                </div>
                                            </div>
                                            <!-- for comp name -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Component Name:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right">${model.componentName}</p1>
                                                </div>
                                            </div>
                                            <!-- comp type -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Component Type:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right">${model.componentType}</p1>
                                                </div>
                                            </div>
                                            <!-- Quantity -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Quantity:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right">${model.quantity}</p1>
                                                </div>
                                            </div>
                                            <!-- processing charge -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Processing Charge:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right">${response.processingCharge}</p1>
                                                </div>
                                            </div>
                                            <!-- packaging delivery charge -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Packaging and Delivery
                                                        Charge:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right">${response.packagingAndDeliveryCharge}
                                                    </p1>
                                                </div>
                                            </div>
                                            <!-- Date of delivery -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Expected Date of
                                                        Delivery:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <!-- <p1 sytle="text-align:right">${response.dateOfDelivery} </p1> -->
                                                    <p1 sytle="text-align:right">${fn:substring(response.dateOfDelivery,
                                                        0, 10)} </p1>

                                                </div>
                                            </div>
                                            <!-- Card limit -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Your Card Limit:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right">${model.cardLimit} </p1>
                                                </div>
                                            </div>
                                            <!-- Total -->
                                            <div class="row">
                                                <div class="col-sm">
                                                    <label for="Name" sytle="text-align:left">Total Charge:</label>
                                                </div>
                                                <div class="col-sm">
                                                    <p1 sytle="text-align:right" style="font-weight: bold">
                                                        ${response.processingCharge+response.packagingAndDeliveryCharge}
                                                    </p1>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <br>

                                        <!-- Alldiv ends -->


                                        <!-- Payment Status -->
                                        <!-- <h1 class="display-8 text-info" sytle="text-align:center" > ${payment.status}</h1> -->
                                        <!-- Payment Status -->

                                        <div class="text-center">
                                            <button class="btn btn-info" type="submit"style="text-align:center">Proceed To Payment</button>
                                        </div>
                                    </form>



                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- form -->
                    <!-- ........Footer......... -->
                    <footer>
                        <div class="container">
                            <div class="sec aboutus">
                                <h2>About us</h2>
                                <p>Created By:<br>
                                    Adyasha Tarasia<br>
                                    Abhishek Kumar Verma<br>
                                    Satvik Samb Saxena<br>
                                    Amit Samant<br>
                                </p>
                                <ul class="sci">
                                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                    <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                    <li><a href=""><i class="fa fa-instagram"></i></a></li>
                                    <li><a href=""><i class="fa fa-youtube-play"></i></a></li>
                                </ul>
                            </div>
                            <div class="sec quickLinks">
                                <h2>Quick Links</h2>
                                <ul>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Help</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                            <div class="sec contact">
                                <h2>Contact Info</h2>
                                <ul class="info">
                                    <li>
                                        <span><i class="fa fa-map-marker"></i></span>
                                        <span>101 Rajiv Chowk,<br>
                                            New Delhi<br>India</span>
                                    </li>
                                    <li>
                                        <span><i class="fa fa-phone"></i></span>
                                        <p><a href="">+91 9412345678</a><br>

                                    </li>
                                    <li>
                                        <span><i class="fa fa-envelope"></i></span>
                                        <p><a href="mailto:rickvellinga2408@gmail.com">returnorderportal@gmail.com</a>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </footer>
                    <div class="copyrightText">
                        <p>Copyright © 2021 Cognizant. All Rights Reserved. </p>
                    </div>

                    <style>
                        <%@include file="/WEB-INF/css/style.css"%>
                    </style>

                    



                    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                        crossorigin="anonymous"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                        crossorigin="anonymous"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                        crossorigin="anonymous"></script>



                </body>

                </html>