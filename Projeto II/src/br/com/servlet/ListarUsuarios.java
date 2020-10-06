package br.com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListarUsuarios
 */
@WebServlet("/ListarUsuarios")
public class ListarUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// essa classe apenas mostra na tabela, ela manda a informações que estao na lista de usuarios para tabela
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//manda informacao para pagina web, ele ta mandando a lista de usuario como usuarios
		req.setAttribute("usuarios", CadastroDeUsuarios.getUsuarios());
		RequestDispatcher rd = req.getRequestDispatcher("listaUsuario.jsp");
		rd.forward(req, resp);
	}

}
