package br.edu.infnet.appTLocacao.model.negocio;

public class Executivo extends Veiculo {
	
	private Boolean automatico;
	
	public Executivo() {
		this.setTipoVeiculo("Executivo");
	}
	
	public Boolean getAutomatico() {
		return automatico;
	}

	public void setAutomatico(Boolean automatico) {
		this.automatico = automatico;
	}
}
