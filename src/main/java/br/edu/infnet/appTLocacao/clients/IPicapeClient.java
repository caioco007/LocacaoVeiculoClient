package br.edu.infnet.appTLocacao.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.appTLocacao.model.negocio.Picape;

@FeignClient(url = "http://localhost:8081/api/locacao/picape", name = "picapeClient")
public interface IPicapeClient {
	
	@GetMapping(value = "/obter")
	public List<Picape> obterLista();
	
	@GetMapping(value = "/{id}")
	public Picape obterPorId(@PathVariable Integer id);
}
