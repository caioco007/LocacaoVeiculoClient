<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type="text/javascript" src="<c:url value='js/dashboard.js'/>"></script>
<link rel="stylesheet" href="<c:url value='\css\dashboard.css' />">
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
		
		<c:if test="${not empty msgError}">
			<div class="alert alert-danger">
			  <strong>Erro!!</strong> ${msgError}
			</div>		
		</c:if>
		
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<div>
				<h1 class="h2">Locação: ${operacao}</h1>
			</div>
		</div>
		
		<div class="container">
			<form action="/locacao/incluir" method="post">
			
			<div class="row">
				<div class="col-sm-5">
				    <label for="usr">Cliente:</label>
					<select name="cliente.id" class="form-control">
						<c:forEach var="c" items="${clientes}">
							<option value="${c.id}">${c}</option>
						</c:forEach>
					</select>
					<a class="btn btn-primary btn-xs" href="/cliente">Novo</a>
				 </div>
			 </div>
			 
			 <div class="row">	
					  <div class="col-sm-4">
					    <label for="dtLoc" class="mr-sm-3">Data de Locação:</label>
					  	<input type="datetime-local" class="form-control mb-2 mr-sm-2" name="dtLoc">
					  </div>
					  
					  <div class="col-sm-4">
					    <label for="dtDev" class="mr-sm-3">Data de Devolução:</label>
					  	<input type="datetime-local" class="form-control mb-2 mr-sm-2" name="dtDev">
					  </div>
			  </div>
			  
			  <div class="row">		
				  <div class="form-group">
					<label for="usr">Veiculos:</label>
					<c:if test="${not empty veiculos}">
						<div class="form-check">
						    <label class="form-check-label" for="exampleRadios1">
						    	<c:forEach var="v" items="${veiculos}">
									<input class="form-check-input" type="checkbox"  name="veiculosIds" value="${v.id}"> ${v}<br>
								</c:forEach>
						    </label>
						</div>
					</c:if>
					<c:if test="${empty veiculos}">
					<label for="usr">Nenhum produto cadastrado!</label>
					</c:if>
				</div>
	
				<c:if test="${empty veiculos || empty clientes}">
					<c:set var="disabled" value="disabled"/>
				</c:if>
		
			</div>	

			<button ${disabled} type="submit" class="btn btn-primary">Gravar</button>
		</form>
		</div>
	</main>
</body>
</html>