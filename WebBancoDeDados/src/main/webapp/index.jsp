<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bancodados.Usuario"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/cadastro.css">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
      <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>


<body>
  <nav>
    <div class="nav-wrapper">
      <a class="brand-logo">Cadastro</a>
    </div>
  </nav>


  <div class="container">
    <h3>Insira os dados seguintes</h3>

	<form>
      <div class="row">
			<div class="row">
					<div class="input-field col s8">
						<input id="login" name="login" type="email"  class="validate">
						<label for="login">Login</label>
					</div>
			</div>
		<br>
			<div class="row">
				<div class="input-field col s8">
					<input id="senha" name="senha" type="password" class="validate">
					<label for="senha">Senha</label>
				</div>
      </div>

		<br>
        	<div class="row">
        		<div class="input-field col s8">
        			<input id="codigo" name="codigo"  class="validate">
        			<label for="codigo">Código</label>
        		</div>
          </div>
      </div>
		<br>
      <div class="col">
		      <button class="waves-effect waves-light btn light-green col s2" name="operacao" value="incluir">Incluir</button>
          <button class="waves-effect waves-light btn light-green col s2" name="operacao" value="excluir">Excluir</button>
      </div>
	</form>

</div>


</div>



<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.js"></script>
<script src="js/init.js"></script>
</body>
</html>
