<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>PayMyBuddy - Signup</title>
</head>
<body>
<div class="container text-center">
    <div class="row">
        <div style="height: 200px;"></div>
    </div>
    <img src="img/PmBlogo.png" id="logo">
    <div class="row">
        <f:form action="register" method="post" modelAttribute="registerForm" class="col-sm-3 landingdivs text-center" >
            <h1>PayMyBuddy</h1>
            <div>
                <label for="InputUsername" class="form-label" >Username</label>
                <f:input path="username" type="username" class="form-control" id="InputUsername" placeholder="Choose your username" required="required"/>
            </div>
            <div>
                <label for="InputEmail" class="form-label">Email</label>
                <f:input path="email" type="email" class="form-control" id="InputEmail" placeholder="blabla@blablamail.fr" required="required"/>
            </div>
            <div>
                <label for="InputPassword" class="form-label">Password</label>
                <f:input path="password" type="password" class="form-control" id="InputPassword" placeholder="🤠🤠🤠🤠" required="required"/>
            </div>
            <button type="submit" class="btn btn-primary">Sign Up !!</button>
        </f:form>
    </div>
</div>
</body>
</html>
