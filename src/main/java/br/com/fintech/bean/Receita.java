package br.com.fintech.bean;
import java.io.Serializable;

public class Receita implements Serializable{
	private static final long serialVersionUID = 1L;

//  ATIBUTOS
    private String nomeReceita;
    private double valorReceita;
    private String dataReceita;
    private String tipoOperacao;
    private String frequenciaReceita;

//  METODOS GET e SET
    public String getNomeReceita() {return nomeReceita;}
    public void setNomeReceita(String nomeReceita) {this.nomeReceita = nomeReceita;}
    public double getValorReceita() {return valorReceita;}
    public void setValorReceita(double valorReceita) {this.valorReceita = valorReceita;}
    public String getDataReceita() {return dataReceita;}
    public void setDataReceita(String dataReceita) {this.dataReceita = dataReceita;}
    public String getTipoOperacao() {return tipoOperacao;}
    public void setTipoOperacao(String tipoOperacao) {this.tipoOperacao = tipoOperacao;}
    public String getFrequenciaReceita() {return frequenciaReceita;}
    public void setFrequenciaReceita(String frequenciaReceita) {this.frequenciaReceita = frequenciaReceita;}

//  CONSTRUTOR
    public Receita(){
    }
    public Receita(String nomeReceita, double valorReceita, String dataReceita, String tipoOperacao, String frequenciaReceita) {
        this.nomeReceita = nomeReceita;
        this.valorReceita = valorReceita;
        this.dataReceita = dataReceita;
        this.tipoOperacao = tipoOperacao;
        this.frequenciaReceita = frequenciaReceita;
    }
}
