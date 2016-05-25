<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h2>indice de massa corporal</h2>
	<form>
		Peso: <input name="peso">
		<br>
		Altura: <input name="altura">
		<br>
		Sexo: <input name="sexo">
		<br>
		<button>calcular</button>
	</form>
<%
String MUITO_ABAIXO_DO_PESO = "muito abaixo do peso";
String ABAIXO_DO_PESO = "abaixo do peso";
String NO_PESO = "saudavel";
String ACIMA_DO_PESO = "acima do peso";
String OBESIDADE = "obesidade";
String OBESIDADE_SEVERA = "obesidade severa";
String OBESIDADE_MORBIDA = "obesidade morbida";


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

out.print("Resultado: " + resultado);

%>
</body>
</html>
