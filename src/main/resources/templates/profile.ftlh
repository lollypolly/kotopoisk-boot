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
    <link rel="stylesheet" href="<@spring.url '/css/profile.css'/>">
</head>
<body>
<div class="d-flex">
    <div class="rainbow w-10">
        <a href="<@spring.url '/'/>">
            <img class="w-100" src="<@spring.url '/img/Cat.png'/>" style="transform: rotate(180deg);">
        </a>
        <div class="mt-5 ms-3 d-flex flex-column">
            <img src="<@spring.url '/img/paw.png'/>" width="30" height="40">
            <a href="#" class="left-menu-p">Мой профиль</a>
        </div>
        <div class="mt-3 ms-3 d-flex flex-column">
            <img src="<@spring.url '/img/heart.png'/>" width="30" height="40">
            <a href="<@spring.url '/compilations'/>" class="left-menu-p">Мой подборки</a>
        </div>
    </div>
    <div id="content" class="w-90">

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="<@spring.url '/js/profile.js'/>"></script>
</body>
</html>
