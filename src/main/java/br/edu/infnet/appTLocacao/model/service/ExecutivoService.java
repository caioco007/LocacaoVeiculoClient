package br.edu.infnet.appTLocacao.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.IExecutivoClient;
import br.edu.infnet.appTLocacao.model.negocio.Executivo;

@Service
public class ExecutivoService extends VeiculoService {
	
	@Autowired
	private IExecutivoClient executivoClient;
	
	public  List<Executivo> obterExecutivos() {		
		return executivoClient.obterLista();
	}
	
	public Executivo obterPorId(Integer id) {
		return executivoClient.obterPorId(id);
	}
}
