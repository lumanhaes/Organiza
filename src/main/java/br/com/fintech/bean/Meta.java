package br.com.fintech.bean;
import java.io.Serializable;

public class Meta implements Serializable{
	private static final long serialVersionUID = 1L;

//  ATRIBUTOS
    String nomeMeta;
    String dataInicio;
    String dataFinal;
    double valorMeta;
    String statusMeta;
    double progressoAtual;

//  METODOS GET e SET
    public String getNomeMeta() {return nomeMeta;}
    public void setNomeMeta(String nomeMeta) {this.nomeMeta = nomeMeta;}
    public String getDataInicio() {return dataInicio;}
    public void setDataInicio(String dataInicio) {this.dataInicio = dataInicio;}
    public String getDataFinal() {return dataFinal;}
    public void setDataFinal(String dataFinal) {this.dataFinal = dataFinal;}
    public double getValorMeta() {return valorMeta;}
    public void setValorMeta(double valorMeta) {this.valorMeta = valorMeta;}
    public String getStatusMeta() {return statusMeta;}
    public void setStatusMeta(String statusMeta) {this.statusMeta = statusMeta;}
    public double getProgressoAtual() {return progressoAtual;}
    public void setProgressoAtual(double progressoAtual) {this.progressoAtual = progressoAtual;}

//  CONSTRUTOR
    public Meta(){}
    public Meta(String nomeMeta, String dataInicio, String dataFinal, double valorMeta, String statusMeta, double progressoAtual) {
        super();
        this.nomeMeta = nomeMeta;
        this.dataInicio = dataInicio;
        this.dataFinal = dataFinal;
        this.valorMeta = valorMeta;
        this.statusMeta = statusMeta;
        this.progressoAtual = progressoAtual;
    }
}
