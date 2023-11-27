package br.com.fintech.bean;
import java.io.Serializable;

public class Investimento implements Serializable{
	private static final long serialVersionUID = 1L;
	
//  ATRIBUTOS
    private String nomeInvestimento;
    private double valorInvestimento;
    private String dataInvestimento;
    private String tipoOperacao;
    private String tipoInvestimento;

//  METODOS GET e SET
    public String getNomeInvestimento() {return nomeInvestimento;}
    public void setNomeInvestimento(String nomeInvestimento) {this.nomeInvestimento = nomeInvestimento;}
    public double getValorInvestimento() {return valorInvestimento;}
    public void setValorInvestimento(double valorInvestimento) {this.valorInvestimento = valorInvestimento;}
    public String getDataInvestimento() {return dataInvestimento;}
    public void setDataInvestimento(String dataInvestimento) {this.dataInvestimento = dataInvestimento;}
    public String getTipoOperacao() {return tipoOperacao;}
    public void setTipoOperacao(String tipoOperacao) {this.tipoOperacao = tipoOperacao;}
    public String getTipoInvestimento() {return tipoInvestimento;}
    public void setTipoInvestimento(String tipoInvestimento) {this.tipoInvestimento = tipoInvestimento;}

//  CONSTRUTOR
    public Investimento(){}
    public Investimento(String nomeInvestimento, double valorInvestimento, String dataInvestimento, String tipoOperacao, String tipoInvestimento) {
        this.nomeInvestimento = nomeInvestimento;
        this.valorInvestimento = valorInvestimento;
        this.dataInvestimento = dataInvestimento;
        this.tipoOperacao = tipoOperacao;
        this.tipoInvestimento = tipoInvestimento;
    }
}
