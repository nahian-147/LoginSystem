<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: nahian
  Date: 6/29/21
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>validating</title>
    <style>
        .error{
            color: red;
            text-align: center;
            font-family: "Cascadia Code";
        }
        .success{
            color: green;
            text-align: center;
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
    String gender = request.getParameter("gndr");
%>
<%  if(!pass1.equals(pass2)){ %>
    <h1 class="error">The Passwords do not match !! </h1>
<input class="error" type=button onClick="location.href='registerform.do'"  value='Go Back...'>

<%  }else if (pass1.length() < 8){ %>
    <h1 class="error" >Must be at least 8 characters long</h1>
<input class="error" type=button onClick="location.href='registerform.do'"  value='Go Back...'>
<%  }else if (pass1.length() < 8){ %>
<h1 class="error" >Must be at least 8 characters long</h1>
<input class="error" type=button onClick="location.href='registerform.do'"  value='Go Back...'>
<%  }else{ %>
    <h1 class="success">Success!!</h1>
<input class="success" type=button onClick="location.href='useracc.jsp'"  value='Go to Account'>
<%  } %>

<% System.out.println("inside validator"); %>
</body>
</html>
