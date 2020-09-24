package br.edu.infnet.appTLocacao.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.ICadastroClient;
import br.edu.infnet.appTLocacao.model.negocio.Cadastro;

@Service
public class CadastroService {
	
	@Autowired
	private ICadastroClient cadastroClient;

	public boolean isValid(String login, String senha) {		
		return cadastroClient.isValid(login, senha);
	}
	
	public Cadastro userExist(String login) {
		return cadastroClient.userExist(login);
	}
	
	public void incluir(Cadastro cadastro) {
		cadastroClient.incluir(cadastro);
	}
	
}
