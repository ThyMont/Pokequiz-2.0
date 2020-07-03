package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.Pokemon;
import control.Treinador;

@WebServlet("/CadastrarTreinadorServlet")
public class CadastrarTreinadorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CadastrarTreinadorServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Treinador t;
		
		String nome = request.getParameter("nome");
		Date data_nascimento = null;
		try {
			data_nascimento = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("data_nascimento"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String avatar = request.getParameter("avatar");
		String genero = request.getParameter("genero");
		Pokemon mascote = new Pokemon(request.getParameter("mascote"));
		
		t = new Treinador(nome, data_nascimento, avatar, genero, mascote);
		if(t.cadastrar()) {
			request.getRequestDispatcher("cadastroSucesso.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("erro.jsp").forward(request, response);
		}
	}

}
