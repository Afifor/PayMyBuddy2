<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">     <!--ATTENTION AU PASSAGE EN JSP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

    <title>PayMyBuddy2 - Error</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light afifnavbar">
    <a class="navbar-brand" href="#"> <img src="img/viendiou.png" style="height: 50px;" alt="logobrand" id="logonav">
        PayMyBuddy</a>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav" id="listnav">
            <li class="nav-item active">
                <a class="nav-link" href="<%=request.getContextPath()+response.encodeURL("/home")%>">Home</a>
            </li>
        </ul>
    </div>
</nav>
<div class="row">

    <article class="container-fluid">

        <img src="img/error.png" alt="nofraj" id="chienaztecas">

    </article>
</div>
</body>
</html>