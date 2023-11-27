package br.com.fintech.bean;
import java.io.Serializable;

public class UsuarioDados implements Serializable{
	private static final long serialVersionUID = 1L;
	
//ATRIBUTOS
    private String email;
    private String nroCell;
    private String senha;

//METODOS GET e SET
    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}
    public String getNroCell() {return nroCell;}
    public void setNroCell(String nroCell) {this.nroCell = nroCell;}
    public String getSenha() {return senha;}
    public void setSenha(String senha) {this.senha = senha;}

//CONSTRUTOR
    public UsuarioDados(){}
    public UsuarioDados(String email, String nroCell, String senha) {
        this.email = email;
        this.nroCell = nroCell;
        this.senha = senha;
    }
}
