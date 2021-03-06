<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Return Order Login Page</title>
                <link rel="stylesheet" href="/portal/css/bootstrap.min.css">
                <link href="https://fonts.googleapis.com/css?family=Oswald:400" rel="stylesheet">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

                <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
                <script src="/portal/js/bootstrap.min.js"></script>
            </head>

            <body>

                <div class="jumbotron" style="border-radius: 32px ;opacity: 85%; padding-top: 5% ; padding-bottom: 10%; padding-left: 35%; padding-right: 20%;">
                    <!-- <h1 class="text-danger">${sessionScope.error}</h1> -->
                    <div class="row">
                        <spring:url value="/home" var="homePageLink"></spring:url>
                        <div class="col-md-6 ">
                            <h2 class="text-info">ReturnX Login Portal</h2><br>
                            <spring:url value="/login" var="loginUrl"></spring:url>
                            <form:form method="post" modelAttribute="model" action="${loginUrl}">
                                <spring:bind path="userName">
                                    <div class="form-group ">
                                        <p>
                                            <label for="userName">Username</label>
                                            <form:input path="userName" type="text" class="form-control ${status.error ? 'is-invalid' : ''}" id="userName" placeholder="visitor" />
                                            <form:errors path="userName" class="invalid-feedback" />
                                    </div>
                                </spring:bind>
                                <spring:bind path="password">
                                    <div class="form-group ">
                                        <label for="password">Password</label>
                                        <form:input path="password" type="password" class="form-control ${status.error ? 'is-invalid' : ''}" id="password" placeholder="visitor" />
                                        <form:errors path="password" class="invalid-feedback" />
                                    </div>
                                </spring:bind>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </body>

            </html>