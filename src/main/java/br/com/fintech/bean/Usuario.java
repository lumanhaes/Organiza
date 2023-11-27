package br.com.fintech.bean;
import java.io.Serializable;

public class Usuario implements Serializable{
	private static final long serialVersionUID = 1L;

//ATRIBUTOS
    private String nome;
    private String dataRegistro;
    private String descricaoUsuario;

//METODOS GET E SET
    public String getNome() {return nome;}
    public void setNome(String nome) {this.nome = nome;}
    public String getDataRegistro() {return dataRegistro;}
    public void setDataRegistro(String dataRegistro) {this.dataRegistro = dataRegistro;}
    public String getDescricaoUsuario() {return descricaoUsuario;}
    public void setDescricaoUsuario(String descricaoUsuario) {this.descricaoUsuario = descricaoUsuario;}

//CONSTRUTOR
    public Usuario(){}
    public Usuario(String nome, String dataRegistro, String descricaoUsuario) {
        this.nome = nome;
        this.dataRegistro = dataRegistro;
        this.descricaoUsuario = descricaoUsuario;
    }
}
