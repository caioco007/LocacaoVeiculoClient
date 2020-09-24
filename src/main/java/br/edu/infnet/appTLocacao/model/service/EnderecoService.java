package br.edu.infnet.appTLocacao.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.IEnderecoClient;
import br.edu.infnet.appTLocacao.model.negocio.Endereco;

@Service
public class EnderecoService {
	
	@Autowired 
	private IEnderecoClient enderecoClient;
	
	public Endereco obterPorCep (String cep) {
		return enderecoClient.obterPorCep(cep);
	}
}
