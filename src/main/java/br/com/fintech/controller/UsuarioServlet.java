package br.com.fintech.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.fintech.bean.Usuario;
import br.com.fintech.bean.UsuarioDados;

@WebServlet("/usuario")
public class UsuarioServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	//Instanciando duas listas de objetos, pois as duas listas vao para DAOs diferentes e tabelas diferentes
	List<Usuario> listaUsuario = new ArrayList<Usuario>();
	List<UsuarioDados> listaUsuarioDados = new ArrayList<UsuarioDados>();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Recebendo os atributos da requisicao
		String nome = request.getParameter("nome-usuario");
		String dataRegistro = request.getParameter("data-registro");
		String descricaoUsuario = request.getParameter("descricao-usuario");
		
		String email = request.getParameter("email");
		String nroCell = request.getParameter("numero-cell");
		String senha = request.getParameter("senha");
		
		//Atribuindo os atributos da requisicao em dois objetos Usuario e UsuarioDados
		Usuario usuario = new Usuario(nome, dataRegistro, descricaoUsuario);
		UsuarioDados usuarioDados = new UsuarioDados(email, nroCell, senha);
		
		//Adicionando as duas listas com seus respectivos objetos e atributos da requisição
		listaUsuario.add(usuario);
		listaUsuarioDados.add(usuarioDados);
		
		//Adicionando mensagem de retorno no request
		request.setAttribute("msg", "Cadastro de usuário concluido");
		
		//Retornando a mensagem para a página JSP
		request.getRequestDispatcher("cadastro-usuario.jsp").forward(request, response);
		
		//Teste
		System.out.println(usuario.getNome());
		System.out.println(usuario.getDataRegistro());
		System.out.println(usuario.getDescricaoUsuario());
		System.out.println(usuarioDados.getEmail());
		System.out.println(usuarioDados.getNroCell());
		System.out.println(usuarioDados.getSenha());
	}
	
	//Metodo de listagem do cadastro do usuario
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Adicionando os atributos do objeto usuario no request
		request.setAttribute("usuario", listaUsuario);
		
//		//Adicionando os atributos do objeto usuarioDados no request
		request.setAttribute("usuarioDados", listaUsuarioDados);
		
		//Enviando os atributos do request para a pagina JSP
		request.getRequestDispatcher("lista-usuario.jsp").forward(request, response);
	}

}




















