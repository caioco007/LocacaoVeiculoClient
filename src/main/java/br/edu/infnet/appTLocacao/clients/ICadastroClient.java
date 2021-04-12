package br.edu.infnet.appTLocacao.clients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import br.edu.infnet.appTLocacao.model.negocio.Cadastro;

@FeignClient(url = "https://app-locacao.herokuapp.com/api/locacao/cadastro", name = "cadastroClient")
public interface ICadastroClient {
	
	@PostMapping
	public boolean isValid(@RequestParam String login, @RequestParam String senha);
	
	@PostMapping(value = "/{login}")
	public Cadastro userExist(@PathVariable String login);

	@PostMapping(value = "/incluir")
	public void incluir(@RequestBody Cadastro cadastro);
}
