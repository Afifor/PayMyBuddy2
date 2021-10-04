<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
              crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet">
        <title>PayMyBuddy - Profile</title>
    </head>
    <title>PayMyBuddy2 - Transfert</title>
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
<main class="container">
    <section class="row">
        <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
            <option selected>Open this select menu</option>
            <option value="1"></option>
            <option value="2"></option>
            <option value="3"></option>
        </select>
    </section>
</main>

</body>
</html>
