<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Calculo de IMC</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/calculoIMC.css">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
      <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     
</head>


<body>
    <script src="js/imc.js"></script>
  <nav>
    <div class="nav-wrapper">
      <a class="brand-logo">Cálculo de IMC</a>
    </div>
  </nav>


  <div class="container">
    <h3>Insira os dados seguintes</h3>
    <div class="row">
	<form>
			<div class="row">
					<div class="input-field col s10">
						<input id="peso" name="peso" type="number"  class="validate">
						<label for="peso">Peso</label>

					</div>
					<div class="unit-peso"> <h4>Kg</h4></div>

			</div>
		<br>
			<div class="row">
				<div class="input-field col s10">
					<input id="altura" name="altura" type="number" class="validate">
					<label for="altura">Altura</label>
				</div>

        <div class="unit-altura"> <h4>cm</h4></div>

        	</div>
		<br>
		<div class="row">
			<div class="input-field col s10">
				<input id="sexo" name="sexo" type="text" class="validate">
				<label for="sexo">Sexo</label>
			</div>
      </div>
		<br>
		<button class="waves-effect waves-light btn light-green col s2">Calcular</button>
	</form>

</div>
	<h3>${resultado}</h3>

</div>


<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.js"></script>
<script src="js/init.js"></script>
</body>
</html>
