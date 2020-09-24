package br.edu.infnet.appTLocacao.model.negocio;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class Cliente {
	
	private Integer id;
	private String nome;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate nascimento;
	private Long cpf;
	private String cep; 
	private Integer num;
	private Long celular;
	private String email;

	@Override
	public String toString() {
		return String.format("%s - %d", this.nome, this.cpf);
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
		
	public LocalDate getNascimento() {
		return nascimento;
	}

	public void setNascimento(LocalDate nascimento) {
		this.nascimento = nascimento;
	}

	public Long getCpf() {
		return cpf;
	}

	public void setCpf(Long cpf) {
		this.cpf = cpf;
	}
	
	public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }
    
	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Long getCelular() {
		return celular;
	}

	public void setCelular(Long celular) {
		this.celular = celular;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
