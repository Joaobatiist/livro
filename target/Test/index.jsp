<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Condominio</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="content first-content">
        <div class="first-column">
            <h2 class="title title-primary">Condflow</h2>
            <p class="description description-primary">Condominio inteligente</p>
            <p class="description description-primary">Para retorna só clicar em login!</p>
            <button id="signin" class="btn btn-primary">Login</button>
        </div>
        <div class="second-column">
            <h2 class="title title-second">Sobre o Condflow</h2>
            <p class="p">O Condflow é mais que um simples condomínio. É um ambiente inteligente que proporciona aos seus moradores uma experiência única de praticidade e eficiência. Com o Condflow, os usuários têm à sua disposição uma plataforma intuitiva e acessível, onde podem facilmente registrar reclamações, elogios e fazer solicitações diretamente ao síndico e à equipe responsável pela administração do condomínio.</p>
            <div class="social-media">

            </div><!-- social media -->
        </div>
        <script>
            const form = document.querySelector('.form');
            const inputFields = form.querySelectorAll('input[type="text"], input[type="email"], input[type="password"]');

            // Function to display or hide error message
            function toggleErrorMessage(input, message) {
                const errorMessage = input.nextElementSibling; // Get the error message span
                errorMessage.textContent = message; // Set the error message content
                errorMessage.classList.toggle('active', message.length > 0); // Toggle visibility based on message length
            }

            // Check for empty fields on submit
            form.addEventListener('submit', (event) => {
                let hasEmptyField = false;
                inputFields.forEach((input) => {
                    const value = input.value.trim(); // Trim leading/trailing spaces
                    if (value === '') {
                        toggleErrorMessage(input, 'Este campo é obrigatório'); // Set error message
                        hasEmptyField = true; // Flag for preventing form submission
                    } else {
                        toggleErrorMessage(input, ''); // Clear any previous error message
                    }
                });

                if (hasEmptyField) {
                    event.preventDefault(); // Prevent form submission if there are empty fields
                }
            });
        </script>
    </div>
    <div class="content second-content">
        <div class="first-column">
            <h2 class="title title-primary">olá amigo!</h2>
            <p class="description description-primary">Area de conhecimento do Condflow</p>
            <p class="description description-primary">clique e venha conhecer a sua jornada conosco</p>
            <button id="signup" class="btn btn-primary">Passar</button>
        </div>
        <div class="second-column">
            <h2 class="title title-second">Bem vindo ao Condflow</h2>
            <div class="social-media">
                <ul class="list-social-media">
                    <a class="link-social-media" href="https://www.facebook.com">
                        <li class="item-social-media">
                            <i class="fab fa-facebook-f"></i>
                        </li>
                    </a>
                    <a class="link-social-media" href="https://www.google.com/intl/pt-BR/gmail/about/">
                        <li class="item-social-media">
                            <i class="fab fa-google-plus-g"></i>
                        </li>
                    </a>
                    <a class="link-social-media" href="https://www.linkedin.com/home">
                        <li class="item-social-media">
                            <i class="fab fa-linkedin-in"></i>
                        </li>
                    </a>
                </ul>
            </div><!-- social media -->
            <p class="description description-second">ou use sua conta de e-mail:</p>
            <form class="form" action="LoginServlet" method="Post">

                <label class="label-input" for="email-login">
                    <i class="far fa-envelope icon-modify"></i>
                    <input type="email" id="email-login" name="email-login" placeholder="Email">
                </label>

                <label class="label-input" for="senha-login">
                    <i class="fas fa-lock icon-modify"></i>
                    <input type="password" id="senha-login" name="senha-login" placeholder="Password">
                </label>
                <button class="btn btn-second">entrar</button>
            </form>
        </div><!-- second column -->
    </div><!-- second-content -->
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const btnSignin = document.querySelector("#signin");
        const btnSignup = document.querySelector("#signup");
        const body = document.querySelector("body");

        btnSignin.addEventListener("click", function () {
            body.className = "sign-in-js";
        });

        btnSignup.addEventListener("click", function () {
            body.className = "sign-up-js";
        });
    });
    window.onload = function() {
        var erroLogin = "<%= request.getAttribute("erroLogin") != null ? request.getAttribute("erroLogin") : "" %>";
        if (erroLogin) {
            alert(erroLogin);
        }
    };
</script>
</body>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Poppins:wght@400;500;600;700&display=swap');
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        font-family: 'Open Sans', sans-serif;

    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #ecf0f1;
        background-image: url(image/condominio.jpg); /* Use caminho absoluto */
        background-size: cover; /* Ajusta a imagem para cobrir toda a área */
        background-position: center; /* Centraliza a imagem */
        background-repeat: no-repeat;
    }
    .content {
        background-color: #fff;
        border-radius: 15px;
        width: 960px;
        height: 60%;
        justify-content: space-between;
        align-items: center;
        position: relative;
    }
    .content::before {
        content: "";
        position: absolute;
        background-color: #58af9b;
        width: 40%;
        height: 100%;
        border-top-left-radius: 15px;
        border-bottom-left-radius: 15px;
        left: 0;
    }
    .title {
        font-size: 28px;
        font-weight: bold;
        text-transform: capitalize;
    }
    .title-primary {
        color: #fff;
    }
    .title-second {
        color: #58af9b;

    }
.p{
    width: 75%;
    font-family: 'Lato', sans-serif;
    font-size: 14px;
    font-weight: bold;
    margin: 30px 0;
    color: #0C0C1E;
    position: relative;
    left: 1%;
}


    .description {
        font-size: 14px;
        font-weight: 300;
        line-height: 30px;

    }
    .description-primary {
        color: #ffffff;
    }
    .description-second {
        color: #7f8c8d;

    }

    .btn {
        border-radius: 15px;
        text-transform: uppercase;
        color: #fff;
        font-size: 10px;
        padding: 10px 50px;
        cursor: pointer;
        font-weight: bold;
        width: 150px;
        align-self: center;
        border: none;
        margin-top: 1rem;
    }
    .btn-primary {
        background-color: transparent;
        border: 1px solid #fff;
        transition: background-color .5s;
    }
    .btn-primary:hover {
        background-color: #fff;
        color: #58af9b;
    }
    .btn-second {
        background-color: #58af9b;
        border: 1px solid #58af9b;
        transition: background-color .5s;
    }
    .btn-second:hover {
        background-color: #fff;
        border: 1px solid #58af9b;
        color: #58af9b;
    }
    .first-content {
        display: flex;
    }
    .first-content .second-column {
        z-index: 11;
    }
    .first-column {
        text-align: center;
        width: 40%;
        z-index: 10;
    }
    .second-column {
        width: 60%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .social-media {
        margin: 1rem 0;
    }
    .link-social-media:not(:first-child){
        margin-left: 10px;
    }
    .link-social-media .item-social-media {
        transition: background-color .5s;
    }
    .link-social-media:hover .item-social-media{
        background-color: #58af9b;
        color: #fff;
        border-color: #58af9b;
    }
    .list-social-media {
        display: flex;
        list-style-type: none;
    }
    .item-social-media {
        border: 1px solid #bdc3c7;
        border-radius: 50%;
        width: 35px;
        height: 35px;
        line-height: 35px;
        text-align: center;
        color: #95a5a6;
    }
    .form {
        display: flex;
        flex-direction: column;
        width: 55%;
    }
    .form input {
        height: 45px;
        width: 100%;
        border: none;
        background-color: #ecf0f1;
    }
    input:-webkit-autofill
    {
        -webkit-box-shadow: 0 0 0px 1000px #ecf0f1 inset !important;
        -webkit-text-fill-color: #000 !important;
    }
    .label-input {
        background-color: #ecf0f1;
        display: flex;
        align-items: center;
        margin: 8px;
    }
    .icon-modify {
        color: #7f8c8d;
        padding: 0 5px;
    }
    /* Adicione essas regras ao seu arquivo CSS existente */

    .label-input select {
        height: 45px;
        width: 100%;
        border: none;
        background-color: #ecf0f1;
        padding-left: 10px;
        color: #7f8c8d;
        font-family: 'Lato', sans-serif;
        font-size: 14px;
    }

    .label-input select:focus {
        outline: none;
        background-color: #dcdde1;
    }

    .icon-modify {
        color: #7f8c8d;
        padding: 0 5px;
    }

    .label-input {
        background-color: #ecf0f1;
        display: flex;
        align-items: center;
        margin: 8px 0; /* Ajuste para garantir espaçamento vertical */
        padding: 0 10px; /* Ajuste para garantir espaçamento interno */
        width: 100%; /* Garantir que o campo preencha toda a largura disponível */
    }


    /* second content*/

    .second-content {
        position: absolute;
        display: flex;
    }
    .second-content .first-column {
        order: 2;
        z-index: -1;
    }
    .second-content .second-column {
        order: 1;
        z-index: -1;
    }
    .password {
        color: #34495e;
        font-size: 14px;
        margin: 15px 0;
        text-align: center;
    }
    .password::first-letter {
        text-transform: capitalize;
    }



    .sign-in-js .first-content .first-column {
        z-index: -1;
    }

    .sign-in-js .second-content .second-column {
        z-index: 11;
    }
    .sign-in-js .second-content .first-column {
        z-index: 13;
    }

    .sign-in-js .content::before {
        left: 60%;
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
        border-top-right-radius: 15px;
        border-bottom-right-radius: 15px;
        animation: slidein 1.3s; /*MODIFIQUEI DE 3s PARA 1.3s*/

        z-index: 12;
    }

    .sign-up-js .content::before {
        animation: slideout 1.3s; /*MODIFIQUEI DE 3s PARA 1.3s*/

        z-index: 12;
    }

    .sign-up-js .second-content .first-column,
    .sign-up-js .second-content .second-column {
        z-index: -1;
    }

    .sign-up-js .first-content .second-column {
        z-index: 11;
    }

    .sign-up-js .first-content .first-column {
        z-index: 13;
    }


    /* DESLOCAMENTO CONTEÚDO ATRÁS DO CONTENT:BEFORE*/
    .sign-in-js .first-content .second-column {

        z-index: -1;
        position: relative;
        animation: deslocamentoEsq 1.3s; /*MODIFIQUEI DE 3s PARA 1.3s*/
    }

    .sign-up-js .second-content .second-column {
        position: relative;
        z-index: -1;
        animation: deslocamentoDir 1.3s; /*MODIFIQUEI DE 3s PARA 1.3s*/
    }

    /*ANIMAÇÃOO CSS PARA O CONTEÚDO*/

    @keyframes deslocamentoEsq {

        from {
            left: 0;
            opacity: 1;
            z-index: 12;
        }

        25% {
            left: -80px;
            opacity: .5;
            /* z-index: 12; NÃO HÁ NECESSIDADE */
        }

        50% {
            left: -100px;
            opacity: .2;
            /* z-index: 12; NÃO HÁ NECESSIDADE */
        }

        to {
            left: -110px;
            opacity: 0;
            z-index: -1;
        }
    }


    @keyframes deslocamentoDir {

        from {
            left: 0;
            z-index: 12;
        }

        25% {
            left: 80px;
            /* z-index: 12;  NÃO HÁ NECESSIDADE*/
        }

        50% {
            left: 100px;
            /* z-index: 12; NÃO HÁ NECESSIDADE*/
            /* background-color: yellow;  Exemplo que dei no vídeo*/
        }

        to {
            left: 110px;
            z-index: -1;
        }
    }


    /*ANIMAÇÃO CSS*/

    @keyframes slidein {

        from {
            left: 0;
            width: 40%;
        }

        25% {
            left: 5%;
            width: 50%;
        }

        50% {
            left: 25%;
            width: 60%;
        }

        75% {
            left: 45%;
            width: 50%;
        }

        to {
            left: 60%;
            width: 40%;
        }
    }

    @keyframes slideout {

        from {
            left: 60%;
            width: 40%;
        }

        25% {
            left: 45%;
            width: 50%;
        }

        50% {
            left: 25%;
            width: 60%;
        }

        75% {
            left: 5%;
            width: 50%;
        }

        to {
            left: 0;
            width: 40%;
        }
    }

    /*VERSÃO MOBILE*/
    @media screen and (max-width: 1040px) {
        .content {
            width: 100%;
            height: 100%;
        }

        .content::before {
            width: 100%;
            height: 40%;
            top: 0;
            border-radius: 0;
        }
        .first-content, .second-content {
            flex-direction: column;
            justify-content: space-around;
        }

        .first-column, .second-column {
            width: 100%;
        }

        .sign-in-js .content::before {
            top: 60%;
            left: 0;
            border-radius: 0;

        }

        .form {
            width: 90%;
        }

        /* ANIMAÇÃO MOBILE CSS*/

        @keyframes deslocamentoEsq {

            from {
                top: 0;
                opacity: 1;
                z-index: 12;
            }

            25% {
                top: -80px;
                opacity: .5;
                /* z-index: 12; NÃO HÁ NECESSIDADE */
            }

            50% {
                top: -100px;
                opacity: .2;
                /* z-index: 12; NÃO HÁ NECESSIDADE */
            }

            to {
                top: -110px;
                opacity: 0;
                z-index: -1;
            }
        }


        @keyframes deslocamentoDir {

            from {
                top: 0;
                z-index: 12;
            }

            25% {
                top: 80px;
                /* z-index: 12;  NÃO HÁ NECESSIDADE*/
            }

            50% {
                top: 100px;
                /* z-index: 12; NÃO HÁ NECESSIDADE*/
                /* background-color: yellow;  Exemplo que dei no vídeo*/
            }

            to {
                top: 110px;
                z-index: -1;
            }
        }



        @keyframes slidein {

            from {
                top: 0;
                height: 40%;
            }

            25% {
                top: 5%;
                height: 50%;
            }

            50% {
                top: 25%;
                height: 60%;
            }

            75% {
                top: 45%;
                height: 50%;
            }

            to {
                top: 60%;
                height: 40%;
            }
        }

        @keyframes slideout {

            from {
                top: 60%;
                height: 40%;
            }

            25% {
                top: 45%;
                height: 50%;
            }

            50% {
                top: 25%;
                height: 60%;
            }

            75% {
                top: 5%;
                height: 50%;
            }

            to {
                top: 0;
                height: 40%;
            }
        }

    }

    @media screen and (max-width: 740px) {
        .form {
            width: 50%;
        }
    }

    @media screen and (max-width: 425px) {
        .form {
            width: 100%;
        }
    }
</style>
</html>

