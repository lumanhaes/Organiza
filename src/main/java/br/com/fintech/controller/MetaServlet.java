package br.com.fintech.controller;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fintech.bean.Meta;

@WebServlet("/meta")
public class MetaServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	//Criando uma lista do tipo Objeto Meta
	ArrayList<Meta> lista = new ArrayList<Meta>();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Recuperando os atributos da request
		String nomeMeta = request.getParameter("nome-meta");
		String dataInicio = request.getParameter("data-inicio");
		String dataFinal = request.getParameter("data-final");
		Double valorMeta = Double.parseDouble(request.getParameter("valor-meta"));
		String statusMeta = request.getParameter("status-meta");
		double progressoAtual = Double.parseDouble(request.getParameter("progresso-atual"));
		
		//Criando um objeto com os atributos da request
		Meta meta = new Meta(nomeMeta, dataInicio, dataFinal, valorMeta, statusMeta, progressoAtual);
		
		//Adicionando o objeto com os atributos na lista
		lista.add(meta);
		
		//Salvando a mensagem de retorno na request
		request.setAttribute("msg", "Cadastro de meta concluido");
		
		//Enviando o request e response para a pagina JSP
		request.getRequestDispatcher("cadastro-meta.jsp").forward(request, response);
		
		//Teste
		System.out.println(meta.getNomeMeta());
		System.out.println(meta.getDataInicio());
		System.out.println(meta.getDataFinal());
		System.out.println(meta.getValorMeta());
		System.out.println(meta.getStatusMeta());
		System.out.println(meta.getProgressoAtual());
		
	}
	
	//Metado de listar meta
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		//Adicionando lista no atributo meta do request
		request.setAttribute("meta", lista);
		
		//Enviando o atributo com a lista para a pagina JSP
		request.getRequestDispatcher("lista-meta.jsp").forward(request, response);
		
	}

}



















