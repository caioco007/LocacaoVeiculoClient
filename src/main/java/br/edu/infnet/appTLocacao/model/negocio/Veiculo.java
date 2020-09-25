package br.edu.infnet.appTLocacao.model.negocio;

import java.util.List;

public class Veiculo {
	
	private Integer id;
	private String modelo;
	private String placa;
	private String cor;
	private Integer ano;
	private String marca;
	private Float valor;
	private List<Locacao> locacoes;
	private String tipoVeiculo;

	@Override
	public String toString() {
		return String.format("%d, Modelo: %s, Placa: %s",
				this.getId(),
				this.getModelo(),
				this.getPlaca()
			);
	}

	public Veiculo() {
		
	}
	
	public Veiculo(Integer id) {
		this();
		this.setId(id);
	}
	
	public Veiculo(Integer id, String modelo, String placa, String cor, Integer ano, String marca, Float valor) {
		this();
		this.setId(id);
		this.setModelo(modelo);
		this.setPlaca(placa);
		this.setCor(cor);
		this.setAno(ano);
		this.setMarca(marca);
		this.setValor(valor);
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public Integer getAno() {
		return ano;
	}

	public void setAno(Integer ano) {
		this.ano = ano;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}
	
	public Float getValor() {
		return valor;
	}

	public void setValor(Float valor) {
		this.valor = valor;
	}
	
	public List<Locacao> getLocacoes() {
		return locacoes;
	}

	public void setLocacoes(List<Locacao> locacoes) {
		this.locacoes = locacoes;
	}
	
	public String getTipoVeiculo() {
		return tipoVeiculo;
	}

	public void setTipoVeiculo(String tipoVeiculo) {
		this.tipoVeiculo = tipoVeiculo;
	}
		
}
