<#include "security.ftlh">
<#macro header>
    <html lang="en">
    <head>
        <meta charset="utf-8">

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
              crossorigin="anonymous">
        <style>
            .blog-header, nav {
                background-color: black;
            }

            .blog-header-logo {
                text-align: center;
                color: #ffbf29;
                font-size: 50px;
                text-decoration: none;
            }

            .blog-header-logo:hover {
                text-decoration: none;
            }

            .col-4 {
                text-align: center;
                margin: auto;
            }

            .p-2 {
                font-size: 30px;
            }
        </style>
    </head>
    <body>
    <header class="blog-header py-3">

        <div class="col-4">
            <a class="blog-header-logo" href="/">Ресторан "Восточный"</a>
        </div>

    </header>
    <div class="nav-scroller">
        <nav class="nav d-flex justify-content-between">
            <a class="p-2 text-muted" href="/menu/Мясо">Меню</a>
            <a class="p-2 text-muted" href="/personal_area">Личный кабинет</a>
            <a class="p-2 text-muted" href="/basket">Корзина</a>
            <#if isAdmin>
                <a class="p-2 text-muted" href="/user">Список пользователей</a>
                <a class="p-2 text-muted" href="/dish_add">Добавить блюдо</a>
                <a class="p-2 text-muted" href="/remove_dish/Мясо">Удалить блюдо</a>
            </#if>
        </nav>
    </div>
    <#nested>
    </body>
    </html>
</#macro>