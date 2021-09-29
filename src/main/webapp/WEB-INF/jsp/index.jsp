<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<head>
    <link href="css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <title>PayMyBuddy Home</title>
</head>
<body>
    <img src="img/PmB.png" id="logobig">
    <p>
        Bienvenue sur Pay my Buddy !
        La toute nouvelle solution de transfert d'argent entre amis !
    </p>
    <div class="row">
        <div class="col-sm-3" id="inscription">
            <p>
                Je ne suis pas inscrit à cette application web incroyable !
            </p>
            <button onclick="window.location.href = '<%=request.getContextPath()+response.encodeURL("/signup")%>' " class="btnbg btn btn-primary">Je m'inscris !</button>
        </div>
        <div class="col-sm-3" id="connexion">
            <p>
                Je suis déjà inscrit voyons !
            </p>
            <button onclick="window.location.href = '<%=request.getContextPath()+response.encodeURL("/login")%>' " class="btn btn-primary btnbg">Je me connecte</button>
        </div>
    </div>
</body>
</html>