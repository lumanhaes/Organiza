package br.com.fintech.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fintech.bean.Receita;

@WebServlet("/receita")
public class ReceitaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Lista de objetos do tipo receita
	ArrayList<Receita> lista = new ArrayList<Receita>();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		//Recuperando os atributos da requisição
		String nomeReceita = request.getParameter("nome-receita");
		Double valorReceita = Double.parseDouble(request.getParameter("valor-receita"));
		String dataReceita = request.getParameter("data-receita");
		String tipoOperacao = request.getParameter("tipo-operacao");
		String frequenciaReceita = request.getParameter("frequencia-receita");
		
		//Instanciando um objeto Receita e inserindo os atributos da requisicao
		Receita receita = new Receita(nomeReceita, valorReceita, dataReceita, tipoOperacao, frequenciaReceita);
		
		//Adicionando o objeto Receita com os atributos na lista
		lista.add(receita);
		
		//Adicionando mensagem de cadastro no request
		request.setAttribute("msg", "Cadastro de receita concluído");
		
		//Enviando a mensagem de retorno para a pagina JSP
		request.getRequestDispatcher("cadastro-receita.jsp").forward(request, response);
		
		//Teste
		System.out.println(receita.getNomeReceita());
		System.out.println(receita.getValorReceita());
		System.out.println(receita.getDataReceita());
		System.out.println(receita.getTipoOperacao());
		System.out.println(receita.getFrequenciaReceita());
	}
	
	//Metodo de listar receita
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Adicionando a lista no atributo rececita do request
		request.setAttribute("receita", lista);
		
		//Enviando o request para a página JSP
		request.getRequestDispatcher("lista-receita.jsp").forward(request, response);
	}

}
