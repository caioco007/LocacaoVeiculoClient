package br.edu.infnet.appTLocacao.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.IEconomicoClient;
import br.edu.infnet.appTLocacao.model.negocio.Economico;

@Service
public class EconomicoService extends VeiculoService {
	
	@Autowired
	private IEconomicoClient economicoClient;
	
	public  List<Economico> obterEconomicos() {		
		return economicoClient.obterLista();
	}
	
	public Economico obterPorId(Integer id) {
		return economicoClient.obterPorId(id);
	}
}
