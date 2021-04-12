package br.edu.infnet.appTLocacao.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.appTLocacao.model.negocio.Economico;

@FeignClient(url = "https://app-locacao.herokuapp.com/api/locacao/economico", name = "economicoClient")
public interface IEconomicoClient {
	
	@GetMapping(value = "/obter")
	public List<Economico> obterLista();
	
	@GetMapping(value = "/{id}")
	public Economico obterPorId(@PathVariable Integer id);
}
