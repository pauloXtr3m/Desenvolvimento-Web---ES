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
				<input id="sexo" name="sexo">
				<label for="sexo">Sexo</label>
			</div>
      </div>
		<br>
		<button class="waves-effect waves-light btn light-green col s2" >Calcular</button>
	</form>

</div>


<h3><%

						
String MUITO_ABAIXO_DO_PESO = "Muito abaixo do peso";
String ABAIXO_DO_PESO = "Abaixo do peso";
String NO_PESO = "Saudável";
String ACIMA_DO_PESO = "Acima do peso";
String OBESIDADE = "Obesidade";
String OBESIDADE_SEVERA = "Obesidade severa";
String OBESIDADE_MORBIDA = "Obesidade morbida";



String pesoStr = request.getParameter("peso");
String alturaStr = request.getParameter("altura");
String sexoStr = request.getParameter("sexo");



String resultado ="";
double imc = 0;
if(alturaStr!=null){
if(alturaStr.length()>0){
	float peso, altura;
	peso = 0;
	altura = 0;
	peso = Float.parseFloat(pesoStr);
	altura = Float.parseFloat(alturaStr);
	altura = altura/100;
	imc = peso/(altura*altura);
	
	if((sexoStr.length()>0)&&sexoStr.equals("masculino")){
        if(imc < 17){
            resultado =  MUITO_ABAIXO_DO_PESO;
        }else if(17 <= imc && imc <= 20.7){

        	resultado = ABAIXO_DO_PESO;
        }else if(20.8 <= imc && imc <= 26.4){

        	resultado = NO_PESO;
        }else if(26.5 <= imc && imc <= 31){

        	resultado =  ACIMA_DO_PESO;
        }else if(31.1 <= imc && imc <= 36.4){

        	resultado = OBESIDADE;
        }
        else if(36.5 <= imc && imc <= 39.99){

        	resultado =  OBESIDADE_SEVERA;
        }else{

        	resultado =  OBESIDADE_MORBIDA;
        }
	}else if((sexoStr.length()>0)&&sexoStr.equals("feminino")){


        if(imc < 17){
        	resultado =  MUITO_ABAIXO_DO_PESO;
        }else if(17 <= imc && imc <= 19.1){

        	resultado =  ABAIXO_DO_PESO;
        }else if(19.2 <= imc && imc <= 25.8){

        	resultado =  NO_PESO;
        }else if(25.9 <= imc && imc <= 32.3){

        	resultado =  ACIMA_DO_PESO;
        }else if(32.4 <= imc && imc <= 37.4){

        	resultado =  OBESIDADE;
        }
        else if(37.5 <= imc && imc <= 39.99){

        	resultado =  OBESIDADE_SEVERA;
        }else{

        	resultado =  OBESIDADE_MORBIDA;
   		}
}
}}

out.print(resultado);

%></h3></div>


<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.js"></script>
<script src="js/init.js"></script>
</body>
</html>
