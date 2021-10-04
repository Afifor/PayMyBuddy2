<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

    <title>PayMyBuddy2 - Home</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="#"> <img src="img/viendiou.png" id="logonavbar" alt="logobrand">
        PayMyBuddy</a>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/paymybuddy2/home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/paymybuddy2/profile">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/paymybuddy2/friends">Friends</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/paymybuddy2/transfer">Transfer</a>
            </li>

        </ul>
    </div>
</nav>
<div class="row">

    <main class="container-fluid">
        <div class="row" style="height: 100px"></div>

        <article class="row">
            <div class="col-sm-5" id="whatyoucando">
                <p>
                    Bienvenue ! Vous pouvez dès maintenant :
                </p>

                <ul>
                    <li>Ajouter des crédits sur votre compte PayMyBuddy ☺️</li>
                    <li>Ajouter de nouveaux amis!! ️😳</li>
                    <li>Envoyer de l'argent aux copains 🤑🤑🤑</li>
                </ul>
                <p>
                    Utilisez la barre de navigation pour découvrir les fonctionnalités du site 🤠
                </p>
            </div>
        </article>
        <div class="row">
            <p class="col-sm 3 text-center">Bonne navigation !</p>
        </div>

    </main>
</div>
<div class="container-fluid text-center">
    <f:form action="${pageContext.request.contextPath}/logout" method="POST">
        <input type="submit" value="Logout" class="btn"/>
    </f:form>
</div>
</body>
</html>