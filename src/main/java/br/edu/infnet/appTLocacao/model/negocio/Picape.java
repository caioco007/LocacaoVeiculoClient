package br.edu.infnet.appTLocacao.model.negocio;

public class Picape extends Veiculo {
	
	private Float peso;
	
	public Picape() {
		this.setTipoVeiculo("Picape");
	}
	
	public Float getPeso() {
		return peso;
	}

	public void setPeso(Float peso) {
		this.peso = peso;
	}
}
