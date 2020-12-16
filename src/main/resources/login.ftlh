<#import "parts/header.ftlh" as h>
<@h.header>
    <style>
        .text
        {
            font-size: 30px;
        }
        .form
        {
            padding: 0;
        }
        .container1
        {
            margin: 10px;
            font-size: 20px;
        }
        .button
        {
            margin: 10px;
            text-decoration: none;
            outline: none;
            display: inline-block;
            background-color: #29a7f0;
            padding: 20px 30px;
            margin: 10px 20px;
            border-radius: 10px;
            font-family: 'Noto Serif', serif;
            font-size: 20px;
            letter-spacing: 2px;
            background-size: 200% auto;
            box-shadow: 0 0 20px rgba(0,0,0,.1);
            transition: .5s;
        }
    </style>
    <p class="text">Вход:</p>
<form action="/login" method="post" class="form">
    <div class="container1"><label> User Name : <input type="text" name="username"/> </label></div>
    <div class="container1"><label> Password: <input type="password" name="password"/> </label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <div><input type="submit" class="button" value="Войти"/></div>
</form>
<button class="button"><a href="/registration">Регистрация</a></button>
</@h.header>