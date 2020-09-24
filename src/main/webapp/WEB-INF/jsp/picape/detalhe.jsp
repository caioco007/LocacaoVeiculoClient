<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>AppLocacao</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type="text/javascript" src="<c:url value='js/dashboard.js'/>"></script>
<link rel="stylesheet" href="<c:url value='\css\dashboard.css' />">
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
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<div>
				<h1 class="h2">Cadastro de Veiculo Picape ${operacao}</h1>
			</div>
			<div>
				<p class="help-block">
					<h11>*</h11>
					Campo Obrigatório
				</p>
			</div>
		</div>
		
		<div class="container">
			<form action="/picape/incluir" method="post">
			<input type="hidden" name="id" value="${picape.id}">
			
			<div class="row">
				<div class="form-group col-sm-5">
					<label for="usr">Marca:</label> 
					<input type="text" class="form-control" name="marca" value="${picape.marca}">
				</div>
	
				<div class="form-group col-sm-5">
					<label for="usr">Modelo:</label> 
					<input type="text" class="form-control" name="modelo" value="${picape.modelo}">
				</div>
		   </div>
		   
		   <div class="row">
				<div class="form-group col-sm-3">
					<label for="usr">Placa:</label> 
					<input type="text" class="form-control" name="placa" value="${picape.placa}">
				</div>
	
				<div class="form-group col-sm-2">
					<label for="usr">Cor:</label> 
					<input type="text" class="form-control" name="cor" value="${picape.cor}">
				</div>
	
				<div class="form-group col-sm-1">
					<label for="usr">Ano:</label> 
					<input type="text" class="form-control" name="ano" value="${picape.ano}">
				</div>
				
				<div class="form-group col-sm-2">
			      <label for="usr">Peso suportado (KG):</label>
			      <input type="text" class="form-control" name="peso" value="${picape.peso}">
			    </div>				
		</div>
		
		<div class="row">
			  <div class="form-group col-sm-2">
				<label for="usr">Valor:</label> 
				<input type="text" class="form-control" name="valor" value="${picape.valor}">
			 </div>
		</div>

			<button type="submit" class="btn btn-primary">Gravar</button>
		</form>
		</div>
	</main>
</body>
</html>