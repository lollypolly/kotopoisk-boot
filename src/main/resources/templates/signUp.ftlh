<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Регистрация</title>
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
    <img class="ellipse1" src="<@spring.url '/img/Ellipse1.png'/>">
    <div class="w-100 d-flex justify-content-center" style="height: 35vh;">
        <a href="<@spring.url '/'/>" style="z-index: 2;">
            <img src="<@spring.url '/img/Cat.png'/>" width="1000" style="transform: rotate(180deg);"/>
        </a>
    </div>
    <div class="w-100 d-flex flex-column align-items-center justify-content-center" style="height: 65vh; position: relative; z-index: 2;">
        <h1>Добро пожаловать на</h1>
        <img src="<@spring.url '/img/Logo.png'/>" width="300" height="60">
        <form class="my-3" action="<@spring.url '/signUp'/>" method="post">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required>
            </div>
            <div class="mb-3">
                <label for="exampleInputNickname1" class="form-label">Имя пользователя</label>
                <input type="text" class="form-control" id="exampleInputNickname1" aria-describedby="nicknameHelp" name="nickname" required>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Пароль</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword2" class="form-label">Повторите пароль</label>
                <input type="password" class="form-control" id="exampleInputPassword2" name="password-repeat" required>
            </div>
            <div class="my-3 w-100 d-flex justify-content-center">
                <button type="submit" style="border: none; background-color: #FFF5F7;">
                    <img src="<@spring.url '/img/sign_up_purple.png'/>" alt="Регистрация" width="175" height="50"></button>
            </div>
        </form>
        <p>Уже есть аккаунт? <a style="color: blueviolet;" href="<@spring.url '/signIn'/>">Войти</a></p>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
</body>
</html>
