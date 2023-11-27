package br.com.fintech.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fintech.bean.Investimento;

@WebServlet("/investimento")
public class InvestimentoServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	//Criando uma lista do tipo Objeto Investimento
	List<Investimento> lista = new ArrayList<Investimento>();
	
	//Metodo de cadastro de investimento
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		//Recuperando os valores da request
		String nomeInvestimento = request.getParameter("nome-investimento");
		Double valorInvestimento = Double.parseDouble(request.getParameter("valor-investimento"));
		String dataInvestimento = request.getParameter("data-investimento");
		System.out.println(dataInvestimento);
		String tipoOperacao = request.getParameter("tipo-operacao");
		String tipoInvestimento = request.getParameter("tipo-investimento");
		
		//Criando um objeto com os atributos da request
		Investimento investimento = new Investimento(nomeInvestimento, valorInvestimento, dataInvestimento, tipoOperacao, tipoInvestimento);
		
		//Adicionando o objeto a lista
		lista.add(investimento);
		
		//setando a mensagem de cadastro feito
		request.setAttribute("msg", "Cadastro de investimento concluido");
		
		//enviando a mensagem para a pagina JSP
		request.getRequestDispatcher("cadastro-investimento.jsp").forward(request, response);
		
		//Teste
//		System.out.println(investimento.getNomeInvestimento());
//		System.out.println(investimento.getValorInvestimento());
//		System.out.println(investimento.getDataInvestimento());
//		System.out.println(investimento.getTipoOperacao());
//		System.out.println(investimento.getTipoInvestimento());
		
	}
	
	//Metodo de listagem de investimento
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Guardando a lista em um atributo do request
		request.setAttribute("investimento", lista);
		
		//Enviando para a pagina JSP o atributo contendo a lista
		request.getRequestDispatcher("lista-investimento.jsp").forward(request, response);
		
	}
	
}




















