<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- Title -->
                <title>Payment Gateway</title>
                <link rel="stylesheet" href="style.css">

                <link href="https://fonts.googleapis.com/css?family=Oswald:400" rel="stylesheet">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

                <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
            </head>

            <body>
                <div id="particles-js"></div>
                <script src="particles.js"></script>
                <script src="app.js"></script>

                <div class="banner">

                    <!-- Image starts -->
                    <!-- <a class="navbar-brand" href="#"><img src="logo8.ico"></a> -->
                    <!-- <a class="navbar-brand" href="#"><img src="/img/bg1.jpg"></a> -->
                    <!-- Image ends -->


                    <nav class="navbar navbar-expand-lg navbar-light">

                        <!-- Image starts -->
                        <!-- <a class="navbar-brand" href="#"><img src="logo8.ico"></a> -->
                        <!-- <a class="navbar-brand" href="#"><img src="/img/bg1.jpg"></a> -->
                        <!-- Image ends -->

                        <a class="navbar-brand" href="#" style="font-size: 35px !important;margin-top:35px;">Returnx</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav" style="font-size: 24px !important;">
                            <ul class="navbar-nav">




                                <li class="nav-item">
                                    <a class="nav-link" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">About</a>
                                </li>

                            </ul>
                            <ul class="navbar-nav ml-auto">

                                <li class="nav-item">
                                    <a class="nav-link" href="#">Contact</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" href="/portal/login">Logout</a>
                                </li>

                            </ul>
                        </div>
                    </nav>

                    <!-- progreebar start -->

                    <div class="row">
                        <div class="col-lg">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped bg-warning " role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="col-lg">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped bg-info " role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="col-lg">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped bg-success progress-bar-animated " role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">Payment Status</div>
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

                                <div class="text-center">





                                    <h1 class="display-8 text-info" sytle="text-align:center"> ${payment.status}</h1>





                                </div>
                                <br><br>
                                <form action="/portal/login" method="get">
                                    <div class="text-center">
                                        <button class="btn btn-primary" type="submit">Logout</button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- form -->
                <!-- ........Footer......... -->
                <%@include file="../layout/footer.jsp"%>


                    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="jquery.slicknav.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#menu').slicknav();
        });
    </script> -->



                    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


                    <style>
                        <%@include file="/WEB-INF/css/style.css"%>
                    </style>
            </body>

            </html>