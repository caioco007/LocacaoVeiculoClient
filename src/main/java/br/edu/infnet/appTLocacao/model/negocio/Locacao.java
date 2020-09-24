package br.edu.infnet.appTLocacao.model.negocio;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

public class Locacao {	
	
	private Integer id;
	private LocalDateTime dtLocacao;
	private LocalDateTime dtDevolucao;
	private Long daysBetween;
	private List<Veiculo> veiculos;
	private Cliente cliente;
	
	public Float valorTotal2() {
	    Float valor = 0F;
	    Long dias = ChronoUnit.DAYS.between(this.getDtLocacao(), this.getDtDevolucao());

	    for (Veiculo v : this.getVeiculos()) {
	        valor = valor + (v.getValor() * dias);
	    }

	    return valor;
	}
	
	public Locacao() {
		
	}
	
	public Locacao(Integer id, LocalDateTime dtLocacao, LocalDateTime dtDevolucao, Long daysBetween) {
		this.setId(id);
		this.setDtLocacao(dtLocacao);
		this.setDtDevolucao(dtDevolucao);
		this.setDaysBetween(daysBetween);
	}
	
	@Override
	public String toString() {
		return String.format(
				"[%d] Data de Locação: %s \nData de Devolução: %s \nTotal de dias: %d ",
				this.id, 
				this.dtLocacao,
				this.dtDevolucao,
				this.daysBetween
		);
	}

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LocalDateTime getDtLocacao() {
		return dtLocacao;
	}

	public void setDtLocacao(LocalDateTime dtLocacao) {
		this.dtLocacao = dtLocacao;
	}

	public LocalDateTime getDtDevolucao() {
		return dtDevolucao;
	}

	public void setDtDevolucao(LocalDateTime dtDevolucao) {
		this.dtDevolucao = dtDevolucao;
	}
	
	public Long getDaysBetween() {
		return daysBetween;
	}

	public void setDaysBetween(Long daysBetween) {
		this.daysBetween = daysBetween;
	}

	public List<Veiculo> getVeiculos() {
		return veiculos;
	}

	public void setVeiculos(List<Veiculo> veiculos) {
		this.veiculos = veiculos;
	}

	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

}
