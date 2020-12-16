<#import "parts/header.ftlh" as h>
<@h.header>
    <style>
        .container1 {

        }
        .form {
            top: 50%;
            left: 50%;
            border: 1px solid;
            border-radius: 1%;
        }
        .text
        {
            font-size: 30px;
        }
        .container2
        {
            margin: 10px;
        }
    </style>
    <div class="container1">
        <form action="/registration" method="post" class="form">
            <div class="container2"><label class="text"> User Name : <input type="text" name="username"/> </label></div>
            <div class="container2"><label class="text"> Password: <input type="password" name="password"/> </label></div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div><input type="submit" value="Зарегистрироваться"/></div>
        </form>
    </div>
</@h.header>