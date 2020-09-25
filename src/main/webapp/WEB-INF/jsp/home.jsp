<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h1 class="h2">Home</h1>
		</div>
		<div class="row">
			<div class="col-xl-3 col-md-6">
				<div class="card bg-info  text-white mb-4">
					<div class="card-body">Locações: ${fn:length(locacoes)}</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="/locacoes">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card w3-deep-orange text-white mb-4">
					<div class="card-body">Clientes: ${fn:length(clientes)}</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="/clientes">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-dark text-white mb-4">
					<div class="card-body">Veiculos: ${fn:length(veiculos)}</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="/veiculos">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-warning text-white mb-4">
					<div class="card-body">Valor: ${totalLocal}</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:if test="${not empty locacoes}">
			<h2>Locações</h2>
			 <div class="table-responsive">
		        <table class="table table-striped table-sm">
			     	<thead>
			        	<tr>
			            	<th>ID</th>
			                <th>CLIENTE</th>
			                <th>DATA DE LOCAÇÃO</th>
			                <th>DATA DE DEVOLUÇÃO</th>
			                <th>VEICULOS</th>
			                <th>DIAS</th>
			                <th>VALOR</th>
			                <th class="actions">AÇÕES</th>
			            </tr>
			         </thead>
			         <tbody>
			 			<c:forEach var="l" items="${locacoes}">
					  		<fmt:parseDate value="${l.dtLocacao}" pattern="yyyy-MM-dd'T'HH:mm" var="dataFormatada" type="date"/>
					    	<fmt:parseDate value="${l.dtDevolucao}" pattern="yyyy-MM-dd'T'HH:mm" var="dataFormatada1" type="date"/>
					  		
						    <tr>
						        <td>${l.id}</td>
						        <td>${l.cliente}</td>
						        <td><fmt:formatDate value="${dataFormatada}" type="date" pattern="dd/MM/yyyy HH:mm"/></td>
						        <td><fmt:formatDate value="${dataFormatada1}" type="date" pattern="dd/MM/yyyy HH:mm"/></td>
						        <td>${l.veiculos}</td>
						        <td>${l.daysBetween}</td>
						        <td>${l.valorTotal2()}</td>
						        <td class="actions">
			                        <a class="btn btn-success btn-xs"  href="/locacao/${l.id}/consultar">Consultar</a>			                    
			                        <a class="btn btn-danger btn-xs"  href="/locacao/${l.id}/excluir">Excluir</a>
			                    </td>
						    </tr>
						</c:forEach>			 
			        </tbody>
			   	</table>
			 </div>	              
		</c:if>
		<c:if test="${empty locacoes}">
			<div class="alert alert-warning">
				<strong>Sem registros cadastrados!!</strong>
			</div>
		</c:if>
	</main>
</body>
</html>