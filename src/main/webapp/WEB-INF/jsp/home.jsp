<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">     <!--ATTENTION AU PASSAGE EN JSP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

    <title>PayMyBuddy - Home</title>
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
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()+response.encodeURL("/profile")%>">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()+response.encodeURL("/friends")%>">Friends</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()+response.encodeURL("/transfer")%>">Transfer</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()+response.encodeURL("/logout")%>"> Log out </a>
            </li>
        </ul>
    </div>
</nav>
<div class="row">

    <article class="container-fluid">

        <p>
            Bienvenue ! Vous pouvez dès maintenant :

        <ul>
        <li>Ajouter des crédits sur votre compte PayMyBuddy ☺️</li>
        <li>Ajouter de nouveaux amis!! ️😳</li>
        <li>Envoyer de l'argent aux copains   🤑🤑🤑</li>
        </ul>

        Utilisez la barre de navigation pour découvrir les fonctionnalités du site  🤠
        </p>

    </article>
</div>
</body>
</html>