<%@ page language="java" %>
<%
    String errorMessage = (String) session.getAttribute("errorMessage");
%>
<html>
<head>
    <style>
        h1{
            color: black;
            padding: 0.5%;
            font-family: "Cascadia Code";
            text-align: center;
        }
        h2{
            font-family: "Cascadia Code";
            padding: 2%;
            text-align: center;
        }
        .formPalatte{
            background-color: lightgray;
            color: black;
            font-family: "Cascadia Code";
            padding: 2%;
            width: min-content;
            border-radius: 5px;
        }
        .formelmnt{
            padding: 2%;
            width: min-content;
        }
        label{
            padding: 1%;
            width: min-content;
        }
        input{
            color: black;
            font-family: "Cascadia Code";
            padding: 1%;
            border-radius: 5px;
            width: min-content;
        }
        button{
            background-color: black;
            color: aliceblue;
            padding: .5%;
            border-radius: 5px;
            font-family: "Cascadia Code";
            width: min-content;
        }
    </style>
    <script>
        function validateform(){
            var uname=document.form.uname.value;
            var password1=document.form.psswrd1.value;
            var password2=document.form.psswrd2.value;
            var dob=document.form.dob.value;
            var gender=document.form.gender.value;

            if (uname==null || uname==""){
                alert("Name can't be blank !");
                return false;
            }else if(password1.length < 8){
                alert("Password Must be at least 8 Characters long !");
                return false;
            }else if(dob==null || dob==""){
                alert("Date of Birth can not be Empty !");
                return false;
            }else if(gender==null || gender=="") {
                alert("Please Enter your Gender !");
                return false;
            }
        }
    </script>
</head>
<body>
<h1>WELCOME TO <span style="color: #2b67c9">REVE</span> SYSTEMS !</h1>
    <% if (!(errorMessage ==null) && !(errorMessage.trim().length() ==0)) { %>

    <h2><%=errorMessage%></h2>
    <%
        }
    %>
    <h2>Sign Up Now !!!</h2>
    <div align="center">
        <form name="form" class="formPalatte" action="signup.do" method="post" onsubmit="return validateform()">

            <div class="formelmnt">
                <label for="uname">User Name</label> <br>
                <input type="text" id="uname" name="uname"> <br>
            </div>
            <div class="formelmnt">
                <label for="emladdrs">E-mail Address</label> <br>
                <input type="email" id="emladdrs" name="emladdrs"> <br>
            </div>
            <div class="formelmnt">
                <label for="psswrd1">Password</label> <br>
                <input type="password" id="psswrd1" name="psswrd1"> <br>
            </div>
            <div class="formelmnt">
                <label for="psswrd2">Re-type Password</label> <br>
                <input type="password" id="psswrd2" name="psswrd2"> <br>
            </div>
            <div class="formelmnt">
                <label for="dob">Date Of Birth</label> <br>
                <input type="date" id="dob" name="dob"> <br>
            </div>
            <div class="formelmnt">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div> <br>
            <div class="formelmnt">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
</body>
</html>