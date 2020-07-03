package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.Pokemon;
import model.MPokemon;

@WebServlet("/National-dex")
public class PokedexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MPokemon mp = new MPokemon();
		List<Pokemon> lista = mp.listarTodos();
		request.setAttribute("lista-pokemon", lista);
		request.getRequestDispatcher("pokedex.jsp").forward(request, response);
	}

}
