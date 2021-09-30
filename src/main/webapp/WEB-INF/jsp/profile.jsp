<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <title>PayMyBuddy - Profile</title>
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
        <article class="col-sm-6" id="addmoneytoyou">
            <form class="landingdivs col-sm-7" name="profileform" action="addamount" method="post">
            <p>Donc si jamais tu veux rajouter de l'argent sur ton compte, c'est ici que ça se passe !</p>
                <label for="iban" class="form-label">IBAN ?</label>
                <input type="text" name="iban" value="" class="form-control" id="iban">
                <label for="amount" class="form-label">Amount ?</label>
                <input type="number"  name="amount" value="" class="form-control" id="amount">
                <button type="submit" value="submit" class="btn btn-primary">Pay ! 😇</button>
            </form>
        </article>
    </section>
</main>

</body>

</html>