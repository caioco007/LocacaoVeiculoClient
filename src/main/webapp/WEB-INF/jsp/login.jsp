<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>TP3:  Desenvolvimento Web com Java EE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<c:url value='\css\style.css' />">  
</head>
<body>

	<div class="sidenav">
		<div class="login-main-text">
            <h2>Projeto TP3<br> Desenvolvimento Web com Java EE</h2>
            <p>Sistema para cadastramento de usuários.</p>
     	</div>
     </div>
     
     <div class="main">	
	 	 <div class="col-md-6 col-sm-12">
            <div class="login-form">
            	<h1>Login</h1>
            	
            	<c:if test="${not empty mensagem}">
				  <div class="alert alert-warning">
				    <strong>Ops!</strong> ${mensagem}
				  </div>
			    </c:if>
				 <form action="/login" class="was-validated" method="post">
					
				  <div class="form-group">
				    <label for="usr">E-mail:</label>
				    <input type="text" class="form-control" placeholder="Entre com o e-mail" name="login" required>
			        <div class="valid-feedback">ok</div>
			        <div class="invalid-feedback">Por favor, preencha o campo!</div>
				  </div>
				
				  <div class="form-group">
				    <label for="usr">Senha:</label>
				    <input type="password" class="form-control" placeholder="Entre com a senha" name="senha" required>
			        <div class="valid-feedback">ok</div>
			        <div class="invalid-feedback">Por favor, preencha o campo!</div>
				 </div>
			     <button type="submit" class="btn btn-black">Realizar Login</button>
			  </form>
			  <form action="/cadastro" method="get">
			  	<button type="submit" class="btn btn-secondary">Realizar Cadastro</button>
			  </form>
		  </div>
	   </div>
	</div>
</body>
</html>