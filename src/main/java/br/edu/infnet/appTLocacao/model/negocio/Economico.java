package br.edu.infnet.appTLocacao.model.negocio;

public class Economico extends Veiculo{
	
	private Boolean vidroManu;
	
	public Economico() {
		this.setTipoVeiculo("Economico");
	}
	
	public Boolean getVidroManu() {
		return vidroManu;
	}

	public void setVidroManu(Boolean vidroManu) {
		this.vidroManu = vidroManu;
	}
}
