package br.com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.model.DadosDoUsuario;

/**
 * Servlet implementation class CadastroDeUsuarios
 */
@WebServlet("/CadastroDeUsuarios")
public class CadastroDeUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//atributo usuario do tipo DadosDoUsuario, serve para acessar informa�oes da classe DadosDoUsuario
	
	private DadosDoUsuario usuario;
	
	//ta static para acessar o metodos e atributos staticos da classe CadastroDeUsuarios
	public static List<DadosDoUsuario> usuarios;
	//construtor da classe, sempre que chamado ir� instanciar um arraylist de DadosDoUsuario 
	public CadastroDeUsuarios() {
		usuarios = new ArrayList<DadosDoUsuario>();
	}
	//retorna a lista de usuarios
	public static List<DadosDoUsuario> getUsuarios() {
		return usuarios;
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//vai capturar as informacoes da requisao enviada para o servidor e armazenar nas variaveis
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String telefone = req.getParameter("telefone");
		String endereco = req.getParameter("endereco");
		String senha = req.getParameter("senha");

		//instancia��o do construtor da classe DadosDeUsuario
		this.usuario = new DadosDoUsuario(nome, email, telefone, endereco, senha);

		//
		boolean b = false;
		//for na lista de usuario
		for(DadosDoUsuario u : usuarios) {
			//verificacao se email ou telefone sao iguais as que tem na lista de usuarios
			if (u.getEmail().equals(email)||u.getTelefone().equals(telefone)) {
				//se sim, muda a variavel b para true e breka
				b =  true;
				break;
			}
		}
		
		// verifica b verdadeiro lan�a o erro
		if(b) {
			req.setAttribute("erro", "Email/Telefone j� cadastrado!");
			RequestDispatcher rd = req.getRequestDispatcher("cadastro.jsp");
			rd.forward(req, resp);
		}else {
			//se for falso lan�a uma mensagem de sucesso
			usuarios.add(this.usuario);
			req.setAttribute("sucesso", "Cadastro realizado com sucesso!");
			RequestDispatcher rd = req.getRequestDispatcher("cadastro.jsp");
			rd.forward(req, resp);
		}

	}

}
