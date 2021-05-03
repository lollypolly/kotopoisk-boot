<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Авторизация</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<@spring.url '/css/signIn.css'/>">
</head>
<body>
<div class="vh-100 rainbow">
    <img class="ellipse" src="<@spring.url '/img/Ellipse.png'/>">
    <div class="w-100 d-flex flex-column align-items-center justify-content-center" style="height: 65vh; position: relative; z-index: 2;">
        <h1 class="my-3">С возвращением</h1>
        <form class="my-3" action="<@spring.url '/signIn'/>" method="post">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Пароль</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember-me">
                <label class="form-check-label" for="exampleCheck1">Запомнить меня</label>
            </div>
            <div class="my-3 w-100 d-flex justify-content-center">
                <button type="submit" style="border: none; background-color: #FFF5F7;">
                    <img src="<@spring.url '/img/sign_in_purple.png'/>" alt="Войти" width="200" height="50"></button>
            </div>
        </form>
        <p>Еще нет аккаунта? <a style="color: blueviolet;" href="<@spring.url '/signUp'/>">Регистрация</a></p>
    </div>
    <div class="w-100 d-flex justify-content-center" style="height: 35vh;">
        <a class="d-flex flex-column justify-content-end" href="<@spring.url '/'/>" style="z-index: 2">
            <img src="<@spring.url '/img/Cat.png'/>" width="1000"/>
        </a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
</body>
</html>
