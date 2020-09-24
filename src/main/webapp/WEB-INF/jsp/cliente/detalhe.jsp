<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Cliente</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type="text/javascript" src="<c:url value='js/dashboard.js'/>"></script>
<link rel="stylesheet" href="<c:url value='\css\dashboard.css' />">
<script src="http://code.jquery.com/jquery-latest.min.js">
	Teste
</script>
<script>
	$(document).on("click", "#consultarCep", function() {
		$.get("/endereco/" + $("#cep").val(), function(responseJson) {
			$.each(responseJson, function(index, item) {
				$("#" + index).val(item);
			});
		});
	});
</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg	 navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="/home">Company name</a>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto px-3">
			    <li class="nav-item text-nowrap">
			      <a class="nav-link" href="/locacoes">Locações</a>
			    </li>
			    <li class="nav-item text-nowrap">
			      <a class="nav-link" href="/cliente">Clientes</a>
			    </li>
			    <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="/veiculos" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Veiculos
		        </a>
		          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		            <a class="dropdown-item" href="/economico">Economicos</a>
		            <a class="dropdown-item" href="/executivo">Executivos</a>
		            <a class="dropdown-item" href="/picape">Picapes</a>
		          </div>
		        </li>
			  </ul>
			  <span class="navbar-text">
			  	<a class="nav-link"	href="/sair">Sign out: ${user.nome}</a>
			  </span>
		</div>
	</nav>
	<div class="row">
		<nav id="sidebarMenu"
			class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
			<div class="sidebar-sticky pt-3">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" href="/home">
							<span> <i class='fa fa-home'></i>
						</span> Home
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/locacoes">
							<span> <i class='fas fa-file'></i>
						</span> Locações
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/veiculos">
							<span> <i class='fas fa-car'></i>
						</span> Veiculos
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/clientes">
							<span> <i class='fas fa-user-alt'></i>
						</span> Clientes
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/clientes">
							<span> <i class='fab fa-github'></i>
						</span> Git Repository
					</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<div>
				<h1 class="h2">Cadastro de Cliente</h1>
			</div>
			<div>
				<p class="help-block">
					<h11>*</h11>
					Campo Obrigatório
				</p>
			</div>
		</div>
		<div class="container">
			<form class="form-horizontal" role="form" action="/cliente/incluir"
				method="post">
				
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h5 class="h6">Dados Pessoais</h5>
				</div>
				
				<div class="row">
					<div class="col-sm-8">
						<label for="usr">Nome:</label>
						<h11>*</h11>
						<input type="text" class="form-control" name="nome">
					</div>
		
					<div class="form-row col-md-10">
						<div class="col-sm-5">
							<label for="usr">CPF:</label>
							<h11>*</h11>
							<input type="text" class="form-control" name="cpf">
						</div>
						<div class="col-sm-3">
							<label for="data">Nascimento:</label>
							<h11>*</h11>
							<input type="date" class="form-control" name="nascimento">
						</div>
						<div class="col-sm-3">
							<label for="usr">Nº Celular:</label>
							<h11>*</h11>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroupPrepend"> <svg
											width="1em" height="1em" viewBox="0 0 16 16"
											class="bi bi-telephone-fill" fill="currentColor"
											xmlns="http://www.w3.org/2000/svg">
				  						<path fill-rule="evenodd"
												d="M2.267.98a1.636 1.636 0 0 1 2.448.152l1.681 2.162c.309.396.418.913.296 1.4l-.513 2.053a.636.636 0 0 0 .167.604L8.65 9.654a.636.636 0 0 0 .604.167l2.052-.513a1.636 1.636 0 0 1 1.401.296l2.162 1.681c.777.604.849 1.753.153 2.448l-.97.97c-.693.693-1.73.998-2.697.658a17.47 17.47 0 0 1-6.571-4.144A17.47 17.47 0 0 1 .639 4.646c-.34-.967-.035-2.004.658-2.698l.97-.969z" />
									  </svg>
									</span>
								</div>
								<input type="tel" class="form-control"
									placeholder="(DDD)xxxxx-xxxx" name="celular">
							</div>
						</div>
					</div>
		
					<div class="col-sm-6">
						<label for="uname">E-mail:</label>
						<h11>*</h11>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroupPrepend"> <svg
										width="1em" height="1em" viewBox="0 0 16 16"
										class="bi bi-envelope-fill" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
							    <path fill-rule="evenodd"
											d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z" />
							  </svg>
								</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Entre com o e-mail" name="email">
						</div>
					</div>
				</div>
				<br>
				<div class="form-goup">
					<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
						<h5 class="h6">Endereço</h5>
					</div>
					
					<div class="row">
						<div class="form-group col-sm-8">
							<label for="cep">CEP</label> 						
							<h11>*</h11>
							<input type="text" class="form-control" id="cep" name="cep" value="${cliente.cep}">
							<a href="#" class="text-sm-right float-right" id="consultarCep">Consultar CEP</a>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-sm-4">
							<label for="logradouro">Logradouro</label> <input type="text"
								class="form-control" id="logradouro" name="logradouro"
								value="${cliente.logradouro}">
						</div>
		
						<div class="form-group col-sm-4">
							<label for="bairro">Bairro</label> <input type="text"
								class="form-control" id="bairro" name="bairro"
								value="${cliente.bairro}">
						</div>
						
						<div class="form-group col-sm-1">
							<label for="usr">Nº:</label>
							<h11>*</h11>
							<input type="text" class="form-control" name="num">
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="localidade">Município</label> <input type="text"
								class="form-control" id="localidade" name="localidade"
								value="${cliente.localidade}">
						</div>
		
						<div class="form-group col-sm-1">
							<label for="uf">UF</label> <input type="text" class="form-control"
								id="uf" name="uf" value="${cliente.uf}">
						</div>
					</div>
	
					<button type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</form>
		</div>
	</main>
</body>
</html>