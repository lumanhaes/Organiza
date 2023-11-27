package br.com.fintech.bean;
import java.io.Serializable;

public class Despesa implements Serializable{
	private static final long serialVersionUID = 1L;

//  ATRIBUTOS
    private String nomeDespesa;
    private double valorDespesa;
    private String dataDespesa;
    private String tipoOperacao;
    private String frequenciaDespesa;

//  METODOS GET e SET
    public String getNomeDespesa() {return nomeDespesa;}
    public void setNomeDespesa(String nomeDespesa) {this.nomeDespesa = nomeDespesa;}
    public double getValorDespesa() {return valorDespesa;}
    public void setValorDespesa(double valorDespesa) {this.valorDespesa = valorDespesa;}
    public String getDataDespesa() {return dataDespesa;}
    public void setDataDespesa(String dataDespesa) {this.dataDespesa = dataDespesa;}
    public String getTipoOperacao() {return tipoOperacao;}
    public void setTipoOperacao(String tipoOperacao) {this.tipoOperacao = tipoOperacao;}
    public String getFrequenciaDespesa() {return frequenciaDespesa;}
    public void setFrequenciaDespesa(String frequenciaDespesa) {this.frequenciaDespesa = frequenciaDespesa;}

//  CONSTRUTOR
    public Despesa(){}
    public Despesa(String nomeDespesa, double valorDespesa, String dataDespesa, String tipoOperacao, String frequenciaDespesa) {
        this.nomeDespesa = nomeDespesa;
        this.valorDespesa = valorDespesa;
        this.dataDespesa = dataDespesa;
        this.tipoOperacao = tipoOperacao;
        this.frequenciaDespesa = frequenciaDespesa;
    }
}
