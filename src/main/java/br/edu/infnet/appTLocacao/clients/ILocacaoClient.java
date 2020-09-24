package br.edu.infnet.appTLocacao.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.edu.infnet.appTLocacao.model.negocio.Locacao;

@FeignClient(url = "http://localhost:8081/api/locacao", name = "locacaoClient")
public interface ILocacaoClient {
	
	@GetMapping(value = "/obter")
	public List<Locacao> obterLista();	
	
	@PostMapping(value = "/incluir")
	public void incluir (@RequestBody Locacao locacao);
	
	@GetMapping(value = "/{id}/consultar")
	public Locacao consultar(@PathVariable Integer id);
	
	@GetMapping(value = "/{id}/excluir")
	public void excluir(@PathVariable Integer id);
}
