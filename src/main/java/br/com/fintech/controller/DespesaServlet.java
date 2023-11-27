package br.com.fintech.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fintech.bean.Despesa;

@WebServlet("/despesa")
public class DespesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Lista de despesas
	private static List<Despesa> lista = new ArrayList<Despesa>();
	
	//Metodo de cadastro de despesa
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		//Recuperando os parametros enviados na requisição
		String nomeDespesa = request.getParameter("nome-despesa");
		Double valorDespesa = Double.parseDouble(request.getParameter("valor-despesa"));
		String dataDespesa = request.getParameter("data-despesa");
		String tipoOperacao = request.getParameter("tipo-operacao");
		String frequenciaDespesa = request.getParameter("frequencia-despesa");
		
		//Criando objeto do tipo despesa
		Despesa despesa = new Despesa(nomeDespesa, valorDespesa, dataDespesa, tipoOperacao, frequenciaDespesa);
		
		//Adicionando a despesa na lista
		lista.add(despesa);
		
		//Mensagem de sucesso
		request.setAttribute("msg", "Despesa cadastrada");
		
		//Retornando a mensagem para a página JSP
		request.getRequestDispatcher("cadastro-despesa.jsp").forward(request, response);
		
		//Teste
		System.out.println(despesa.getNomeDespesa());
		System.out.println(despesa.getValorDespesa());
		System.out.println(despesa.getDataDespesa());
		System.out.println(despesa.getTipoOperacao());
		System.out.println(despesa.getFrequenciaDespesa());
		
	}
	
	//Metodo de listar depesa
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		//Guardando a lista em um atributo do request
		request.setAttribute("despesa", lista);
		
		//Enviando para a pagina JSP o atributo contendo a lista
		request.getRequestDispatcher("lista-despesa.jsp").forward(request, response);
	}
	

}
