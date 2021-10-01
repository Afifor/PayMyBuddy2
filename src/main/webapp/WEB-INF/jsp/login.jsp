<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>PayMyBuddy - Login</title>
</head>
<body class="text-center">
<div class="container">
    <div class="row">
        <div style="height: 200px;"></div>
    </div>
    <img src="img/PmBlogo.png" alt="logo" id="logo">
    <div class="row">
        <form name="loginform" action="login" method='POST' class="col-sm-3 landingdivs">
            <h1>PayMyBuddy</h1>
            <div>
                <label for="username" class="form-label">Username</label>
                <input type='text' name='username' value='' class="form-control" id="username">
            </div>
            <div>
                <label for="password" class="form-label">Password</label>
                <input type='password' name='password' class="form-control" id="password">
            </div>
            <button type="submit" value="submit" class="btn btn-primary">Login</button>
        </form>
        <a href=" <%=request.getContextPath()+response.encodeURL("/signup")%> ">No account ?</a>
        <!-- <%=request.getContextPath()+response.encodeURL("/signup")%>-->
    </div>
</div>
</body>
</html>

