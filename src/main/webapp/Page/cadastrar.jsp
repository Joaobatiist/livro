<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Cadastro condflow</title>
</head>
<body>
<div class="container">
    <p class="description description-second"> inscrição:</p>
    <form class="form" action="CadastrarServlet" method="POST">
        <label class="label-input" for="nome">
            <i class="far fa-user icon-modify"></i>
            <input type="text" id="nome" name="nome" placeholder="Nome">
            <span class="error-message"></span>
        </label>

        <label class="label-input" for="email">
            <i class="far fa-envelope icon-modify"></i>
            <input type="email" id="email" name="email" placeholder="Email">
            <span class="error-message"></span>
        </label>
        <label class="label-input" for="cpf">
            <i class="fas fa-address-card icon-modify"></i>
            <input type="text" id="cpf" name="cpf" placeholder="CPF">
            <span class="error-message"></span>
        </label>
        <label class="label-input" for="telefone">
            <i class="fas fa-phone icon-modify"></i>
            <input type="text" id="telefone" name="telefone" placeholder="Telefone">
            <span class="error-message"></span>
        </label>
        <label class="label-input" for="senha">
            <i class="fas fa-lock icon-modify"></i>
            <input type="password" id="senha" name="senha" placeholder="Senha">
            <span class="error-message"></span>
        </label>
        <label class="label-input" for="role">
            <span>Role:</span>
            <select id="role" name="role" required>
                <option value="usuario">Usuario</option>
                <option value="admin">Admin</option>
                <option value="porteiro">Porteiro</option>
            </select>
        </label>
        <button type="submit">Cadastrar</button>
    </form>
</div>
</body>
</html>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        width: 400px;
        background-color: #ffffff;
        border-radius: 10px;
        padding: 30px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .container h1 {
        text-align: center;
        color: #333333;
    }

    .form {
        margin-top: 20px;
    }

    .label-input {
        position: relative;
        margin-bottom: 20px;
    }

    .label-input input,
    .label-input select {
        width: calc(100% - 26px);
        padding: 10px;
        border: 1px solid #cccccc;
        border-radius: 5px;
        outline: none;
        transition: border-color 0.3s;
    }

    .label-input input:focus,
    .label-input select:focus {
        border-color: #007bff;
    }

    .error-message {
        color: #dc3545;
        font-size: 14px;
        position: absolute;
        bottom: -20px;
        left: 0;
    }

    button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }

</style>