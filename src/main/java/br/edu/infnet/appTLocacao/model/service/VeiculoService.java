package br.edu.infnet.appTLocacao.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.IVeiculoClient;
import br.edu.infnet.appTLocacao.model.negocio.Veiculo;

@Service
public class VeiculoService {
	
	@Autowired
	private IVeiculoClient veiculoClient;
	
	public  List<Veiculo> obterLista() {		
		return veiculoClient.obterLista();
	}
	
	public void incluir(Veiculo veiculo) {
		veiculoClient.incluir(veiculo);
	}
	
	public void excluir(Integer id) {
		veiculoClient.excluir(id);
	}
	
	public Veiculo obterPorId(Integer id) {
		return veiculoClient.obterPorId(id);
	}
}
