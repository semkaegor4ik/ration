<#include "security.ftlh">
<#macro header>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <style>
            :root {
                --black-color: #332F2F;
                --white-color: #FFFFFF;
                --gray-color: #F1F2F2;
                --brightGreen-color: #36D633;
                --orange-colour: #EC8032;
                --brightRed-color: #FABCC7;
                --brightYellow-color: #F4EB98;
                --lightOrange-color: #FFF0E5;
                --lightYellow-color: #FFFBE4;
                --lightGreen-color: #E9FDE6;
                --lightBlue-color: #EEF3FF;
                --lightPurple-color: #F3EDFF;
                --green-hover-color: #37e735;
            }

            * {
                margin: 0;
                box-sizing: border-box;
            }

            body {
                font-family: "Montserrat";
            }

            .wrapper {
                margin: 0 auto;
                padding: 0 0px;
            }
            .desktop-nav {
                display: flex;
                align-items: center;
                background: var(--gray-color);
                box-shadow: 0px 0px 12px 6px rgba(0, 0, 0, 0.13);
                padding: 20px 400px;
                position: fixed;
                z-index: 200;
                width: 100%;
            }

            .desktop-nav .menu-items {
                list-style: none;
                display: flex;
            }

            .desktop-nav .menu-items li {
                margin: 0 30px;
            }

            .desktop-nav .menu-items li a {
                text-decoration: none;
                color: #332F2F;
                font-weight: 300;
                font-size: 17px;
                line-height: 24px;
            }

            .login-item {
                font-weight: 300;
                font-size: 17px;
                line-height: 24px;
                position: absolute;
                right: 400px;
            }

            .login-item a {
                text-decoration: none;
                color: #332F2F;
            }

            .personal_area {
                margin: 0 5px;
            }

            .login-item img {
                vertical-align: middle;
            }

            .submenu {
                display: none;
                flex-direction: column;
                position: absolute;
            }

            .login-item ul {
                background: #FFFFFF;
                border: 1px solid rgba(169, 163, 163, 0.53);
                box-sizing: border-box;
                border-radius: 36px;
                list-style: none;
                white-space: nowrap;
                padding: 1em;
                height: 190px;
            }

            .login-item ul li {
                padding: 1em;
                text-align: center;
            }

            .desktop-nav .menu-items a:hover {
                color: var(--green-hover-color);
            }

            .logout_btn {
                position: absolute;
                left: 28px;
                width: 200px;
                background: var(--green-color);
                box-shadow: 0px 0px 16px 4px rgba(47, 255, 29, 0.3), 13px 13px 26px rgba(0, 0, 0, 0.25), inset -2px 5px 6px rgba(255, 244, 244, 0.41);
                border-radius: 100px;
                font-style: normal;
                font-weight: 300;
                font-size: 17px;
                line-height: 34px;
                color: var(--white-color);
                text-decoration: none;
                text-align: center;
                background: var(--brightGreen-color);
                font-family: "Montserrat";
                /*line-height: 88px;*/
                border: none;
                transition: background-color 400ms;
            }

            .logout_btn:hover {
                background: var(--green-hover-color);
            }

            <#if name != "unknown">
            .login-item:hover>.submenu {
                display: flex;
            }

            .submenu a:hover {
                color: var(--green-hover-color);
            }
            <#else>
            .desktop-nav a:hover {
                color: var(--green-hover-color);
            }
            </#if>

        </style>

    </head>
    <body>
    <div class="wrapper">
        <nav class="desktop-nav">
            <div class="logo">
                <a href="/">
                    <img src="https://cdn.discordapp.com/attachments/784876687376121916/798108262124748840/logo.png" alt="">
                </a>
            </div>

            <ul class="menu-items">
                <li>
                    <a href="/" class="active">Главная</a>
                </li>

                <li>
                    <a href="/ration" class="ration">Создать рацион</a>
                </li>

                <li>
                    <a href="/info" class="info">Информация</a>
                </li>
            </ul>

            <div class="login-item">
                <a href=""><img src="https://cdn.discordapp.com/attachments/784876687376121916/798109117666689074/icons8-----50_2.png"></a>
                <#if name != "unknown">
                    <a href="" class="personal_area">Личный кабинет</a>
                    <ul class="submenu">
                        <li><a href="/ration">Посмотреть рацион</a></li>
                        <li><a href="/edit_profile">Изменить настройки</a></li>
                        <form action="/logout" method="post">
                            <input class="logout_btn" type="submit" value="Выйти"/>
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                        </form>
                        <#--                        <li><a href="#">Выйти</a></li>-->
                    </ul>
                <#else>
                    <a href="/login" class="personal_area">Зарегистироваться/Войти</a>
                </#if>
            </div>
        </nav>
    </div>
    <#nested>
    </body>
    </html>
</#macro>