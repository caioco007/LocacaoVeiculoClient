package br.edu.infnet.appTLocacao.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.IClienteClient;
import br.edu.infnet.appTLocacao.model.negocio.Cliente;

@Service
public class ClienteService {
	
	@Autowired
	private IClienteClient clienteClient;
	
	public  List<Cliente> obterLista() {		
		return clienteClient.obterLista();
	}
	
	public void incluir(Cliente cliente) {
		clienteClient.incluir(cliente);
	}
	
	public void excluir(Integer id) {
		clienteClient.excluir(id);
	}
	
	public Cliente obterPorId(Integer id) {
		return clienteClient.obterPorId(id);
	}
}
