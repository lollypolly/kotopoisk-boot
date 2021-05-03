<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Котопоиск</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="<@spring.url '/css/index.css'/>">
</head>
<body>
<div class="rainbow vh-50 d-flex flex-column justify-content-between">
    <nav class="navbar navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="<@spring.url '/img/Logo.png'/>" width="300" height="60"></a>
            <form class="d-flex">
                <a href="<@spring.url '/signIn'/>"><img src="<@spring.url '/img/sign_in.png'/>" alt="Войти" width="200" height="50"></a>
                <a href="<@spring.url '/signUp'/>"><img src="<@spring.url '/img/sign_up.png'/>" alt="Регистрация" width="200" height="50"></a>
            </form>
        </div>
    </nav>
    <div class="d-flex justify-content-center">
        <img src="<@spring.url '/img/Cat.png'/>" width="900" height="300">
    </div>
</div>
<div class="vh-50 d-flex justify-content-center">
    <h1 class="my-3">Котопоиск — отыщи своего</h1>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
