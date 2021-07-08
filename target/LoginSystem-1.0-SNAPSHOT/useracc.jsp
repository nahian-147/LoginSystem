<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<html>
<head>
    <title>User</title>
    <style>
        h1{
            color: black;
            padding: 0.5%;
            font-family: "Cascadia Code";
            text-align: center;
        }
        h2,h4{
            font-family: "Cascadia Code";
            padding: 2%;
            text-align: center;
        }
        .container{
            color: grey;
            padding: 10%;
            height: 100%;
        }
        .content{
            width: 50%;
            background-color: #050c2b;
            color: aliceblue;
            padding: 5%;
            height: 60%;
            font-family: "Cascadia Code";
        }
    </style>
</head>
<body>

<%
    String pass1 = request.getParameter("psswrd1");
    String pass2 = request.getParameter("psswrd2");
    String uname = request.getParameter("uname");
    String dob = request.getParameter("dob");
    String email = request.getParameter("emladdrs");
    String gender = request.getParameter("gender");

    Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
    Date now = new Date();
    double days = (now.getTime()-date1.getTime())/(86400000);
    float years = (float) (days/365.241);

    String E[] = email.split("@");
    String domain = E[1];

    if(years >= 18){ %>

<div class="container">
    <h1> <%=uname%> !!! Welcome to <span style="color: #2b67c9">REVE</span> Systems! </h1>
    <div class="content">
        Name: <%=uname%><br>
        Age: <%=years%> years<br>
        E-mail: <%=email%><br>
        Domain: <%=domain%><br>
        Gender: <%=gender%><br>
    </div>
</div>

<% }else{ %>
    <h1>SORRY !!!</h1>
    <h4 style="color: #494949">Thank you for your interest in <span style="color: #2b67c9">REVE</span> Systems <br>but your current age <span style="color: darkred">Does Not Meet</span> our Account Creation policy !!!</h4>
    <h4 style="color: #494949">please try again <span style="color: green"><%=18-years%></span> years later.</h4>
    <h2>Thank You</h2>
<% } %>
</body>
</html>
