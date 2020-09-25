<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>AppLocacao</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
	<nav class="navbar navbar-expand-lg	 navbar-dark sticky-top w3-indigo flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="/home"><img src="img/pngegg.png"></a>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto px-3">
			    <li class="nav-item text-nowrap">
			      <a class="nav-link" href="/locacao">Locação</a>
			    </li>
			    <li class="nav-item text-nowrap">
			      <a class="nav-link" href="/cliente">Cliente</a>
			    </li>
			    <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="/veiculos" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Veiculo
		        </a>
		          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		            <a class="dropdown-item" href="/economico">Economico</a>
		            <a class="dropdown-item" href="/executivo">Executivo</a>
		            <a class="dropdown-item" href="/picape">Picape</a>
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
					<li class="nav-item"><a class="nav-link" href="https://github.com/caioco007/LocacaoVeiculoClient.git">
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
		</div>
		<div class="container">
			<form class="form-horizontal" role="form" action="/cliente/incluir"
				method="post">				
			<input type="hidden" name="id" value="${cliente.id}">
				
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h5 class="h6">Dados Pessoais</h5>
				</div>
				
				<div class="row">
					<div class="col-sm-8">
						<label for="usr">Nome:</label>
						<input type="text" class="form-control" name="nome" value="${cliente.nome}">
					</div>
		
					<div class="form-row col-md-10">
						<div class="col-sm-5">
							<label for="usr">CPF:</label>
							<input type="text" class="form-control" name="cpf" value="${cliente.cpf}">
						</div>
						<div class="col-sm-3">
							<label for="data">Nascimento:</label>
							<input type="date" class="form-control" name="nascimento" value="${cliente.nascimento}">
						</div>
						<div class="col-sm-3">
							<label for="usr">Nº Celular:</label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroupPrepend"> 
									  <i class='fas fa-phone-alt'></i>
									</span>
								</div>
								<input type="tel" class="form-control"
									placeholder="(DDD)xxxxx-xxxx" name="celular" value="${cliente.celular}">
							</div>
						</div>
					</div>
		
					<div class="col-sm-6">
						<label for="uname">E-mail:</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroupPrepend"> 
									<i class='fas fa-envelope'></i>
								</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Entre com o e-mail" name="email" value="${cliente.email}">
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
							<input type="text" class="form-control" name="num" value="${cliente.num}">
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