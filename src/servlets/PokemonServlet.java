package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.Pokemon;
import control.Tipo;

//@WebServlet("")
public class PokemonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = "Bulbasaur";
		
		System.out.println("Entrei aqui e encontrei o  : " + request.getPathInfo().substring(1));
		request.getRequestDispatcher("Teste.jsp").forward(request, response);
		
		/*Pokemon p = new Pokemon(nome);
		List<Tipo> f = p.fraquezas();
		List<Tipo> r = p.resistencias();
		request.setAttribute("pokemon", p);
		request.setAttribute("fraquezas", f);
		request.setAttribute("resistencias", r);
		request.getRequestDispatcher("pokemon.jsp").forward(request, response);*/
	}

}
