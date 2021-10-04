<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
              crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet">
        <title>PayMyBuddy - Profile</title>
    </head>
    <title>PayMyBuddy2 - Friends</title>
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
        <article class="col-sm-9 landingdivs">
            <%--@elvariable id="addFriendForm" type="java"--%>
            <f:form action="addfriend" name="friendform" method="post" modelAttribute="addFriendForm">
            <legend>Chercher un ami par son pseudonyme</legend>
            <label for="username">Ajouter un ami :</label>
            <f:input type="text" path="username" value="" name="username" id="username"/>
                <button type="submit" value="submit" class="btn btn-primary">Ajouter en ami ! 😇</button>
            </f:form>
        </article>
    </section>
    <section class="row">
        <article class="landingdivs col-sm-9">
            <table class="table table-dark">
                <thead>
                <tr>
                    <th scope="col">ID Connection</th>
                    <th scope="col">Ami</th>
                </tr>
                </thead>
                <tbody>
                <e:ForEach items="${user.connections}" var="connection">
                <tr>
                    <th scope="row">${user.connection.id}</th>
                    <td>${user.connections.user2}</td>
                </tr>
                </e:ForEach> <!--TODO: Finir d'implémenter ça -->
                </tbody>
            </table>
        </article>
    </section>
</main>

</body>
</html>
