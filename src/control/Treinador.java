package control;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import model.MTreinador;

@Entity
public class Treinador {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column (length = 20 , nullable = false)
	private String nome;
	@Column
	private Date data_nascimento;
	@Column
	private String avatar;
	@Column
	private String genero;
	@ManyToOne
	@JoinColumn(name = "mascote")
	private Pokemon mascote;
	
	
	public Treinador() {}
	
	public Treinador (Integer id) {
		this.id = id;
	}
	
	public Treinador(String nome, Date data_nascimento, String avatar, String genero, Pokemon mascote) {
		this.nome = nome;
		this.data_nascimento = data_nascimento;
		this.avatar = avatar;
		this.genero = genero;
		this.mascote = mascote;
	}
	
	public boolean cadastrar() {
		return new MTreinador().cadastrar(this);
		
	}
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Pokemon getMascote() {
		return mascote;
	}

	public void setMascote(Pokemon mascote) {
		this.mascote = mascote;
	}

	public Date getData_nascimento() {
		return data_nascimento;
	}

	public void setData_nascimento(Date data_nascimento) {
		this.data_nascimento = data_nascimento;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

}
