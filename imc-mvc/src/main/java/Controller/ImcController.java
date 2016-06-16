package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CalcHealth;

@WebServlet("/calculadora")
public class ImcController {
	private String valor(
			HttpServletRequest req,
			String param,
			String padrao) {

		String result = req.getParameter(param);
		if (result == null) {
			result = padrao;
		}
		return result;
	}

	private float toFloat(
			HttpServletRequest req,
			String param,
			String padrao) {

		return Float.parseFloat(valor(req, param, padrao));
	}

	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		float peso = toFloat(req, "peso", "0");
		float altura = toFloat(req, "altura", "0");
		String sexo = valor(req, "sexo", "");
		
		CalcHealth calculator = new CalcHealth();
		String resultado = calculator.calcImc(peso, altura, sexo);
		
		
		req.setAttribute(
				"resultado",
				resultado);

		

		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
}
