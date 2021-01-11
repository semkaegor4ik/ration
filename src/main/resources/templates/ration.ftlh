<#import "header.ftlh" as h>
<#include "security.ftlh">
<@h.header>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Рацион</title>

        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500;600;700&display=swap" rel="stylesheet" />

        <style>
            /*Colors*/

            :root {
                --black-color: #332F2F;
                --white-color: #FFFFFF;
                --gray-color: #F1F2F2;
                --brightGreen-color: #36D633;
                --orange-colour: #ff7d1f;
                --brightRed-color: #FABCC7;
                --brightYellow-color: #F4EB98;
                --lightOrange-color: #FFF0E5;
                --lightYellow-color: #FFFBE4;
                --lightGreen-color: #E9FDE6;
                --lightBlue-color: #EEF3FF;
                --lightPurple-color: #F3EDFF;
                --orange-hover-color: #ff7d1f;
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

            a.ration_btn {
                position: absolute;
                width: 310px;
                height: 72.21px;
                left: 790px;
                top: 3100px;
                background: #EC8032;
                box-shadow: 0px 0px 16px 4px rgba(251, 202, 27, 0.3), 13px 13px 26px rgba(0, 0, 0, 0.25), inset -2px 5px 6px rgba(255, 244, 244, 0.41);
                border-radius: 100px;
                font-family: Montserrat;
                font-style: normal;
                font-weight: 600;
                font-size: 20px;
                line-height: 72.21px;
                text-decoration: none;
                text-align: center;
                color: var(--white-color);
                transition: background-color 400ms;
                z-index: 1;
            }

            a.ration_btn:hover {
                background: var(--orange-hover-color);
            }
            /* Title Section */

            .recipe-container {
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            .recipe-container .title h1 {
                position: absolute;
                width: 646px;
                height: 61px;
                left: 637px;
                top: 230px;
                font-family: Montserrat;
                font-style: normal;
                font-weight: bold;
                font-size: 48px;
                line-height: 61px;
                color: #332F2F;
            }


            /* Breakfast Section */

            .breakfast {
                position: absolute;
                width: 1106px;
                height: 731px;
                left: 407px;
                top: 430px;
                background: #FFFFFF;
                box-shadow: 0px 0px 60px -5px rgba(79, 76, 76, 0.35);
                border-radius: 40px;
            }

            .breakfast .rectangle-container .rectangle1 {
                position: absolute;
                width: 390px;
                height: 512px;
                left: 60px;
                top: 160px;
            }

            .breakfast .ingredients {
                position: absolute;
                width: 390px;
                height: 512px;
                left: 60px;
                top: 160px;
                z-index: 1;
            }

            .breakfast .rectangle-container .rectangle2 {
                position: absolute;
                width: 540px;
                height: 512px;
                left: 500px;
                top: 160px;
            }

            .breakfast .recipe {
                position: absolute;
                width: 540px;
                height: 512px;
                left: 500px;
                top: 160px;
                z-index: 1;
            }

            .breakfast h1 {
                position: absolute;
                width: 261px;
                height: 73px;
                left: 420px;
                top: 45px;
                font-family: Montserrat;
                font-style: normal;
                font-weight: bold;
                font-size: 56px;
                line-height: 73px;
                color: #332F2F;
            }

            p {
                font-family: Montserrat;
                font-style: normal;
                font-size: 28px;
                line-height: 40px;
                color: #332F2F;
                text-align: center;
                padding-left: 1em;
                padding-right: 1em;
            }

            .recipe_text{
                padding-top: 0.3em;
                font-weight: bold;
            }

            .ingredients_text{
                padding-top: 0.3em;
                font-weight: bold;
            }

            /* Lunch Section */

            .lunch {
                position: absolute;
                width: 1106px;
                height: 731px;
                left: 407px;
                top: 1330px;
                background: #FFFFFF;
                box-shadow: 0px 0px 60px -5px rgba(79, 76, 76, 0.35);
                border-radius: 40px;
            }

            .lunch .rectangle-container .rectangle1 {
                position: absolute;
                width: 390px;
                height: 512px;
                left: 60px;
                top: 160px;
            }

            .lunch .ingredients {
                position: absolute;
                width: 390px;
                height: 512px;
                left: 60px;
                top: 160px;
                z-index: 1;
            }

            .lunch .rectangle-container .rectangle2 {
                position: absolute;
                width: 540px;
                height: 512px;
                left: 500px;
                top: 160px;
            }

            .lunch .recipe {
                position: absolute;
                width: 540px;
                height: 512px;
                left: 500px;
                top: 160px;
                z-index: 1;
            }

            .lunch h1 {
                position: absolute;
                width: 261px;
                height: 73px;
                left: 450px;
                top: 50px;
                font-family: Montserrat;
                font-style: normal;
                font-weight: bold;
                font-size: 56px;
                line-height: 73px;
                color: #332F2F;
            }


            /* Dinner Section */

            .dinner {
                position: absolute;
                width: 1106px;
                height: 731px;
                left: 407px;
                top: 2230px;
                background: #FFFFFF;
                box-shadow: 0px 0px 60px -5px rgba(79, 76, 76, 0.35);
                border-radius: 40px;
            }

            .dinner .rectangle-container .rectangle1 {
                position: absolute;
                width: 390px;
                height: 512px;
                left: 60px;
                top: 160px;
            }

            .dinner .ingredients {
                position: absolute;
                width: 390px;
                height: 512px;
                left: 60px;
                top: 160px;
                z-index: 1;
            }

            .dinner .rectangle-container .rectangle2 {
                position: absolute;
                width: 540px;
                height: 512px;
                left: 500px;
                top: 160px;
            }

            .dinner .recipe {
                position: absolute;
                width: 540px;
                height: 512px;
                left: 500px;
                top: 160px;
                z-index: 1;
            }

            .dinner h1 {
                position: absolute;
                width: 261px;
                height: 73px;
                left: 450px;
                top: 50px;
                font-family: Montserrat;
                font-style: normal;
                font-weight: bold;
                font-size: 56px;
                line-height: 73px;
                color: #332F2F;
            }

            .recipe_name {
                font-size: 23px;
            }

            .recipe_descr {
                text-align: justify;
                font-size: 17px;
                padding-top: 0.5em;
            }

            .recipe_products {
                text-align: justify;
                font-size: 17px;
                padding-top: 0.5em;
            }

            /* Images Section */

            .elips-container .yellow_elips {
                position: absolute;
                width: 900px;
                height: 1000px;
                left: 0px;
                top: 160px;
                z-index: -1;
            }

            .elips-container .green_elips {
                position: absolute;
                width: 1300px;
                height: 1500px;
                left: 500px;
                top: 1000px;
                z-index: -1;
            }

            .elips-container .purple_elips {
                position: absolute;
                width: 1300px;
                height: 1100px;
                left: 50px;
                top: 2150px;
                z-index: -1;
            }

            .dishes-container .tomato_dish {
                position: absolute;
                width: 711px;
                height: 929px;
                right: 0;
                top: 360px;
                z-index: -1;
            }

            .dishes-container .muesli {
                position: absolute;
                width: 1000px;
                height: 1550px;
                left: 0px;
                top: 850px;
                z-index: -1;
            }

            .dishes-container .nuts {
                position: absolute;
                width: 781.07px;
                height: 917.52px;
                right: 0;
                top: 2128px;
                z-index: -1;
            }
        </style>
    </head>

    <body>
    <div class="wrapper">

        <header class="recipe-container">
            <div class="title">
                <h1>Ваш рацион на сегодня</h1>
                <a href="/ration" class="ration_btn">Получить новый рацион</a>
            </div>

            <div class="breakfast">
                <h1>Завтрак</h1>

                <div class="ingredients">
                    <p class="ingredients_text">Ингредиенты</p>
                    <#list BREAKFAST.products?keys as key>
                        <p class="recipe_products">${key} - ${BREAKFAST.products[key]} гр</p>
                    </#list>
                </div>

                <div class="recipe">
                    <p class="recipe_text">Рецепт</p>
                    <p class="recipe_name">${BREAKFAST.name}</p>
                    <p class="recipe_descr">${BREAKFAST.description}</p>
                </div>

                <div class="rectangle-container">
                    <img class="rectangle1" src="https://cdn.discordapp.com/attachments/784876687376121916/798210482648776714/rectangle1.png"
                         alt="">
                    <img class="rectangle2" src="https://cdn.discordapp.com/attachments/784876687376121916/798210484980547624/rectangle2.png"
                         alt="">
                </div>

            </div>
            <div class="lunch">
                <h1>Обед</h1>

                <div class="ingredients">
                    <p class="ingredients_text">Ингредиенты</p>
                    <#list LUNCH.products?keys as key>
                        <p class="recipe_products">${key} - ${LUNCH.products[key]} гр</p>
                    </#list>
                </div>

                <div class="recipe">
                    <p class="recipe_text">Рецепт</p>
                    <p class="recipe_name">${LUNCH.name}</p>
                    <p class="recipe_descr">${LUNCH.description}</p>
                </div>

                <div class="rectangle-container">
                    <img class="rectangle1" src="https://cdn.discordapp.com/attachments/784876687376121916/798210482648776714/rectangle1.png"
                         alt="">
                    <img class="rectangle2" src="https://cdn.discordapp.com/attachments/784876687376121916/798210484980547624/rectangle2.png"
                         alt="">
                </div>

            </div>

            <div class="dinner">
                <h1>Ужин</h1>

                <div class="ingredients">
                    <p class="ingredients_text">Ингредиенты</p>
                    <#list DINNER.products?keys as key>
                        <p class="recipe_products">${key} - ${DINNER.products[key]} гр</p>
                    </#list>
                </div>

                <div class="recipe">
                    <p class="recipe_text">Рецепт</p>
                    <p class="recipe_name">${DINNER.name}</p>
                    <p class="recipe_descr">${DINNER.description}</p>
                </div>

                <div class="rectangle-container">
                    <img class="rectangle1" src="https://cdn.discordapp.com/attachments/784876687376121916/798210482648776714/rectangle1.png"
                         alt="">
                    <img class="rectangle2" src="https://cdn.discordapp.com/attachments/784876687376121916/798210484980547624/rectangle2.png"
                         alt="">
                </div>

            </div>

            <div class="elips-container">
                <img class="yellow_elips" src="https://cdn.discordapp.com/attachments/784876687376121916/798210474277208084/yellow_elips.png"
                     alt="">
                <img class="green_elips" src="https://cdn.discordapp.com/attachments/784876687376121916/798210476705972234/green_elips.png"
                     alt="">
                <img class="purple_elips" src="https://cdn.discordapp.com/attachments/784876687376121916/798210488295096320/purple_elips.png"
                     alt="">
            </div>

            <div class="dishes-container">
                <img class="tomato_dish" src="https://cdn.discordapp.com/attachments/784876687376121916/798210489820905472/tomato_dish.png"
                     alt="">
                <img class="muesli" src="https://cdn.discordapp.com/attachments/784876687376121916/798210483848478720/muesli.png"
                     alt="">
                <img class="nuts" src="https://cdn.discordapp.com/attachments/784876687376121916/798210484830339162/nuts.png"
                     alt="">
            </div>

        </header>

        <!-- End of Recipe Section -->
    </div>
    </body>
</@h.header>