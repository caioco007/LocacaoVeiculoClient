<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>TP3:  Desenvolvimento Web com Java EE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
	 	 		<h1>Registrar</h1>
				<form action="/cadastro/incluir" class="was-validated" method="post">
					
				  <div class="form-group">
				    <label for="usr">Nome:</label>
				    <input type="text" class="form-control" placeholder="Entre com o nome" name="nome" required>
			        <div class="valid-feedback">ok</div>
			        <div class="invalid-feedback">Por favor, preencha o campo!</div>
				  </div>
				
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
				
				  <button type="submit" class="btn btn-black">Salvar</button>
				</form>
			</div>
		</div>
		
	</div>
</body>
</html>