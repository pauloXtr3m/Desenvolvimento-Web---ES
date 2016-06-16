package Model;

public final class CalcHealth {



    public String calcImc(float peso, float altura, String sexo){

        
        altura = altura/100;
        double imc = peso/(Math.pow((altura), 2));

        return returnHealthCondition(imc, sexo);
    }

    public String returnHealthCondition(double imc, String sexo){
        final String MUITO_ABAIXO_DO_PESO = "Muito abaixo do peso";
        final String ABAIXO_DO_PESO = "Abaixo do peso";
        final String NO_PESO = "Saudável";
        final String ACIMA_DO_PESO = "Acima do peso";
        final String OBESIDADE = "Obesidade";
        final String OBESIDADE_SEVERA = "Obesidade severa";
        final String OBESIDADE_MORBIDA = "Obesidade mórbida";

        if(sexo.equals("masculino")){
            if(imc < 17){
                return "IMC: " + imc + " "+   MUITO_ABAIXO_DO_PESO;
            }else if(17 <= imc && imc <= 20.7){

            	return "IMC: " + imc + " "+  ABAIXO_DO_PESO;
            }else if(20.8 <= imc && imc <= 26.4){

            	return "IMC: " + imc + " "+  NO_PESO;
            }else if(26.5 <= imc && imc <= 31){

            	return "IMC: " + imc + " "+   ACIMA_DO_PESO;
            }else if(31.1 <= imc && imc <= 36.4){

            	return "IMC: " + imc + " "+  OBESIDADE;
            }
            else if(36.5 <= imc && imc <= 39.99){

            	return "IMC: " + imc + " "+   OBESIDADE_SEVERA;
            }else{

            	return "IMC: " + imc + " "+   OBESIDADE_MORBIDA;
            }
    	}else if(sexo.equals("feminino")){


            if(imc < 17){
            	return "IMC: " + imc + " "+   MUITO_ABAIXO_DO_PESO;
            }else if(17 <= imc && imc <= 19.1){

            	return "IMC: " + imc + " "+   ABAIXO_DO_PESO;
            }else if(19.2 <= imc && imc <= 25.8){

            	return "IMC: " + imc + " "+   NO_PESO;
            }else if(25.9 <= imc && imc <= 32.3){

            	return "IMC: " + imc + " "+   ACIMA_DO_PESO;
            }else if(32.4 <= imc && imc <= 37.4){

            	return "IMC: " + imc + " "+   OBESIDADE;
            }
            else if(37.5 <= imc && imc <= 39.99){

            	return "IMC: " + imc + " "+   OBESIDADE_SEVERA;
            }else{

            	return "IMC: " + imc + " "+   OBESIDADE_MORBIDA;
       		}
    }else { return "IMC: " + imc + " "+  "Erro";}

    }
}
