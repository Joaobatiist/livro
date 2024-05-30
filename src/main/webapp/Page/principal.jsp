<!DOCTYPE html>
<html lang="br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="estilo.css">

    <title>AdminHub</title>
</head>
<body>

<section id="sidebar">
    <a href="#" class="brand">
        <i class='bx bxs-smile'></i>
        <span class="text">Administração</span>
    </a>
    <ul class="side-menu top">
        <li class="active">
            <a href="#" onclick="showContent('#dashboard-content')">
                <i class='bx bxs-dashboard' ></i>
                <span class="text">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#" onclick="showContent('entregas-content')">
                <i class='bx bxs-shopping-bag-alt' ></i>
                <span class="text">Entregas</span>
            </a>
        </li>
        <li>
            <a href="#" onclick="showContent('analise-content')">
                <i class='bx bxs-doughnut-chart' ></i>
                <span class="text">Análise</span>
            </a>
        </li>
        <li>
            <a href="#" onclick="showContent('ocorrências-content')">
                <i class='bx bxs-message-dots' ></i>
                <span class="text">Ocorrências</span>
            </a>
        </li>
        <li>
            <a href="#" onclick="showContent('equipe-content')">
                <i class='bx bxs-group' ></i>
                <span class="text">Equipe</span>
            </a>
        </li>
        <li>
            <a href="#" onclick="showContent('registros-content')">
                <i class='bx bx-clipboard'></i>
                <span class="text">Registros</span>
            </a>
        </li>
    </ul>
    <ul class="side-menu">
        <li>
            <a href="#">
                <i class='bx bxs-cog' ></i>
                <span class="text">Configurações</span>
            </a>
        </li>
        <li>
            <!-- resolver login/logout -->
            <a href="/livro_war/" class="logout" onclick="logout()" >
                <i class='bx bxs-log-out-circle' ></i>
                <span class="text">Sair</span>
            </a>
        </li>
    </ul>
</section>
<!-- SIDEBAR -->



<!-- CONTENT -->
<section id="content">
    <!-- BARRA DE NAVEGAÇÃO -->

    <nav>
        <i class='bx bx-menu' ></i>
        <a href="#" class="nav-link">Categorias</a>
        <form action="#">
            <div class="form-input">
                <input type="search" placeholder="Search...">
                <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
            </div>
        </form>
        <input type="checkbox" id="switch-mode" hidden>
        <label for="switch-mode" class="switch-mode"></label>
        <a href="#" class="notification">
            <i class='bx bxs-bell' ></i>
            <span class="num">8</span>
        </a>
        <a href="#" class="profile">
            <img src="/image/icon%20administrador.jpg" alt="">
        </a>
    </nav>
    <!-- BARRA DE NAVEGAÇÃO -->

    <!-- PRINCIPAL -->


    <!-- Conteúdo do Dashboard -->
    <section id="dashboard-content" class="content-item active-content">
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Dashboard</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Dashboard</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="#">Home</a>
                        </li>
                    </ul>
                </div>
                <a href="#" class="btn-download">
                    <i class='bx bxs-cloud-download' ></i>
                    <span class="text">Download PDF</span>
                </a>
            </div>

            <ul class="box-info">
                <li>
                    <i class='bx bxs-calendar-check' ></i>
                    <span class="text">
							<h3>1020</h3>
							<p>Novas solicitações</p>
						</span>
                </li>
                <li>
                    <i class='bx bxs-group' ></i>
                    <span class="text">
							<h3>2834</h3>
							<p>Visitantes</p>
						</span>
                </li>
                <li>
                    <i class='bx bxs-dollar-circle' ></i>
                    <span class="text">
							<h3>$2543</h3>
							<p>Renda-Mensal</p>
						</span>
                </li>
            </ul>


            <div class="table-data">
                <div class="order">
                    <div class="head">
                        <h3>Solicitações</h3>
                        <i class='bx bx-search' ></i>
                        <i class='bx bx-filter' ></i>
                    </div>
                    <table>
                        <thead>
                        <tr>
                            <th>Morador</th>
                            <th>Data da Solicitação</th>
                            <th>Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador.png" alt="">
                                <p>Arthur Gabriel</p>
                            </td>
                            <td>01-10-2021</td>
                            <td><span class="status completed">Completo</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador.png" alt="">
                                <p>João Guilherme</p>
                            </td>
                            <td>01-10-2021</td>
                            <td><span class="status pending">Pendente</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador.png" alt="">
                                <p>Pedro Henrique</p>
                            </td>
                            <td>01-10-2021</td>
                            <td><span class="status process">Em Andamento</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador%20feminino.png" alt="">
                                <p>Maria Eduarda</p>
                            </td>
                            <td>01-10-2021</td>
                            <td><span class="status pending">Pendente</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador%20feminino.png">
                                <p>Manuela Costa</p>
                            </td>
                            <td>01-10-2021</td>
                            <td><span class="status completed">Completo</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="todo">
                    <div class="head">
                        <h3>Tarefas</h3>
                        <i class='bx bx-plus' ></i>
                        <i class='bx bx-filter' ></i>
                    </div>
                    <ul class="todo-list">
                        <li class="completed">
                            <p>Conferir o jardim.</p>
                            <i class='bx bx-dots-vertical-rounded' ></i>
                        </li>
                        <li class="completed">
                            <p>Verificar as câmeras.</p>
                            <i class='bx bx-dots-vertical-rounded' ></i>
                        </li>
                        <li class="not-completed">
                            <p>Fiscalizar a portaria e a segurança condominial.</p>
                            <i class='bx bx-dots-vertical-rounded' ></i>
                        </li>
                        <li class="completed">
                            <p>Verificar os elevadores e a piscina.</p>
                            <i class='bx bx-dots-vertical-rounded' ></i>
                        </li>
                        <li class="not-completed">
                            <p>Fazer relatórios e orçamentos;</p>
                            <i class='bx bx-dots-vertical-rounded' ></i>
                        </li>
                    </ul>
                </div>
            </div>
        </main>
    </section>

    <!-- Conteúdo das Entregas -->
    <section id="entregas-content" class="content-item hidden">
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Entregas</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Entregas</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="#">Home</a>
                        </li>
                    </ul>
                </div>
            </div>

            <ul class="box-info">
                <li>
                    <i class='bx bxs-calendar-check' ></i>
                    <span class="text">
							<h3>15</h3>
							<p>Entregas Recebidas</p>
						</span>
                </li>
                <li>
                    <i class='bx bxs-group' ></i>
                    <span class="text">
							<h3>15</h3>
							<p>Aguardando Recebimento</p>
						</span>
                </li>
            </ul>


            <div class="table-data">
                <div class="order">
                    <div class="head">
                        <h3>Solicitações</h3>
                        <i class='bx bx-search' ></i>
                        <i class='bx bx-filter' ></i>
                    </div>
                    <table>
                        <thead>
                        <tr>
                            <th>Morador</th>
                            <th>Data do Recebimento</th>
                            <th>Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador.png">
                                <p>Arthur Gabriel</p>
                            </td>
                            <td>01-03-2024</td>
                            <td><span class="status completed">Entregue</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador.png">
                                <p>João Guilherme</p>
                            </td>
                            <td>Indefinido</td>
                            <td><span class="status pending">Entrega Pendente</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icon%20morador.png">
                                <p>Pedro Henrique</p>
                            </td>
                            <td>Indefinido</td>
                            <td><span class="status process">Aguardando Recebimento</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icone%20morador%20feminino.png">
                                <p>Maria Eduarda</p>
                            </td>
                            <td>Indefinido</td>
                            <td><span class="status pending">Entrega Pendente</span></td>
                        </tr>
                        <tr>
                            <td>
                                <img src="/image/icone%20morador%20feminino.png">
                                <p>Manuela Costa</p>
                            </td>
                            <td>20-04-2024</td>
                            <td><span class="status completed">Entregue</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </main>
    </section>

    <section id="analise-content" class="content-item hidden">
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Análise</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Consumo de Água e Energia</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="#">Análise</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="pie-chart-container">
                <h3>Consumo de Energia e Água</h3>
                <div class="pie-chart">
                    <div class="slice" data-value="40"></div>
                    <div class="slice" data-value="60"></div>
                </div>
                <div class="legend">
                    <div class="legend-item"><div class="legend-color" style="background-color: #007bff;"></div>Energia (40%)</div>
                    <div class="legend-item"><div class="legend-color" style="background-color: #28a745;"></div>Água (60%)</div>
                </div>
            </div>

            <section>

                <section id="ocorrências-content" class="content-item active-content">
                    <main>
                        <div class="head-title">
                            <div class="left">
                                <h1>Ocorrências</h1>
                                <ul class="breadcrumb">
                                    <li>
                                        <a href="#">Ocorrências</a>
                                    </li>
                                    <li><i class='bx bx-chevron-right' ></i></li>
                                    <li>
                                        <a class="active" href="#">Home</a>
                                    </li>
                                </ul>
                            </div>

                        </div>

                        <ul class="box-info">
                            <li>
                                <i class='bx bxs-calendar-check' ></i>
                                <span class="text">
						<h3>25</h3>
						<p>Ocorrências Concluídas</p>
					</span>
                            </li>

                            <li>
                                <i class='bx bxs-error-alt'></i>
                                <span class="text">
						<h3>50</h3>
						<p>Ocorrências</p>
					</span>
                            </li>
                        </ul>


                        <div class="table-data">
                            <div class="order">
                                <div class="head">
                                    <h3>Ocorrências</h3>
                                    <i class='bx bx-search' ></i>
                                    <i class='bx bx-filter' ></i>
                                </div>
                                <table>

                                    <tbody>
                                    <tr>
                                        <td>
                                            <img src="/image/icon%20ocorrencia.png">
                                            <p>Vazamento de Água - Apartamento 09</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="/image/icon%20ocorrencia.png">
                                            <p>Problemas com o Sistema Elétrico - Apartamento 05</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="/image/icon%20ocorrencia.png">
                                            <p>Falhas no Elevador</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="/image/icon%20ocorrencia.png">
                                            <p>Barulhos excessivos - Apartamento 02</p>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="/image/icon%20ocorrencia.png">
                                            <p>Vandalismo na Área Externa</p>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </main>
                </section>


                <section id="equipe-content" class="content-item hidden">
                    <main>
                        <div class="head-title">
                            <div class="left">
                                <h1>Equipe</h1>
                                <ul class="breadcrumb">
                                    <li>
                                        <a href="#">Equipe</a>
                                    </li>
                                    <li><i class='bx bx-chevron-right' ></i></li>
                                    <li>
                                        <a class="active" href="#">Home</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <ul class="box-info">
                            <li>
                                <i class='bx bxs-group' ></i>
                                <span class="text">
						<h3>5</h3>
						<p>Total De Funcionários</p>
					</span>
                            </li>
                        </ul>


                        <div class="table-data">
                            <div class="order">
                                <div class="head">
                                    <h3>Funcionários</h3>
                                    <i class='bx bx-search' ></i>
                                    <i class='bx bx-filter' ></i>
                                </div>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>Equipe</th>
                                        <th>Função</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <img src="/image/icon%20morador.png">
                                            <p>José Santos</p>
                                        </td>
                                        <td>Jardineiro</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="/image/icon%20morador.png">
                                            <p>Everaldo Silva</p>
                                        </td>
                                        <td>Piscineiro</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="/image/icon%20morador.png">
                                            <p>Agnaldo Bento</p>
                                        </td>
                                        <td>Eletricista</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="/image/icone%20morador%20feminino.png">
                                            <p>Vanderleia Santana</p>
                                        </td>
                                        <td>Empregada Doméstica</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="/image/icone%20morador%20feminino.png">
                                            <p>Rita Costa</p>
                                        </td>
                                        <td>Empregada Doméstica</td>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <section>

                                <section id="registros-content" class="content-item hidden">
                                    <main>
                                        <div class="head-title">
                                            <div class="left">
                                                <h1>Registros</h1>
                                                <ul class="breadcrumb">
                                                    <li>
                                                        <a href="#">Registros</a>
                                                    </li>
                                                    <li><i class='bx bx-chevron-right' ></i></li>
                                                    <li>
                                                        <a class="active" href="#">Home</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <ul class="box-info">
                                            <li>
                                                <i class='bx bxs-calendar-check' ></i>
                                                <span class="text">
						<h3>5</h3>
						<p>Total de Registros</p>
					</span>
                                            </li>
                                        </ul>


                                        <div class="table-data">
                                            <div class="order">
                                                <div class="head">
                                                    <h3>Registros</h3>
                                                    <i class='bx bx-search' ></i>
                                                    <i class='bx bx-filter' ></i>
                                                </div>
                                                <table>
                                                    <thead>
                                                    <tr>
                                                        <th>Tipo de Registro</th>
                                                        <th>Data do Registro</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>
                                                            <img src="/image/Registro.png">
                                                            <p>Entrada Visitante</p>(Júlia Lima)
                                                        </td>
                                                        <td>01-03-2024</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="/image/Registro.png">
                                                            <p>Instalaçao Ar condicionado</p>(Ar Resolution)
                                                        </td>
                                                        <td>10-03-2024</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="/image/Registro.png">
                                                            <p>Reserva Área da Piscina</p>(Arthur Gabriel)
                                                        </td>
                                                        <td>05-04-2024</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="/image/Registro.png">
                                                            <p>Reserva Salão de Festas</p>(Manuela Costa)
                                                        </td>
                                                        <td>10-04-2024</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="/image/Registro.png">
                                                            <p>Instalação Placa Solar</p>(Solar Tech)
                                                        </td>
                                                        <td>20-04-2024</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                    </main>
                                    <section>
                                        <script src="script.js"></script>
</body>

</html>
