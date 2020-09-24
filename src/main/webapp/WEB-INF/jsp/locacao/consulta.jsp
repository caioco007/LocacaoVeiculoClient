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
</head>
<body>

	<div class="container">

		<div class="container-fluid" style="margin-top:80px">		
			<c:import url="/WEB-INF/jsp/header.jsp"/>
		</div>			
	
		<h3>Locações: ${operacao}</h3>
	
	    <div class="form-group">
	      <label for="usr">Cliente:</label>
	      <label for="usr">${locacao.cliente}</label>
	    </div>
		
		<fmt:parseDate value="${l.dtLocacao}" pattern="yyyy-MM-dd'T'HH:mm" var="dataFormatada" type="date"/>
		<fmt:parseDate value="${l.dtDevolucao}" pattern="yyyy-MM-dd'T'HH:mm" var="dataFormatada1" type="date"/>
		
	    <div class="form-group">
	      <label for="usr">Data de Locação:</label>
	      <label for="usr">${locacao.dtLocacao}</label>
	    </div>
	    
	    <div class="form-group">
	      <label for="usr">Data de Devolução:</label>
	      <label for="usr"><fmt:formatDate value="${dataFormatada1}" type="date" pattern="dd/MM/yyyy HH:mm"/></label>
	    </div>
	    
	    <div class="form-group">
	      <label for="usr">Valor da Locação:</label>
	      <label for="usr">${locacao.valorTotal2()}</label>
	    </div>

		<div class="form-group">
			<label for="usr">Veiculos:</label>

			<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>ID</th>
			        <th>VEICULOS</th>
			      </tr>
			    </thead>
			    <tbody>
			    	<c:forEach var="v" items="${locacao.veiculos}">
				      <tr>
				        <td>${v.id}</td>
				        <td>${v}</td>
				      </tr>
			      </c:forEach>
			    </tbody>
			</table>	
		</div>	
	</div>
</body>
</html>