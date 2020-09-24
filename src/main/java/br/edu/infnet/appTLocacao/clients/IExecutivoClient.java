package br.edu.infnet.appTLocacao.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.appTLocacao.model.negocio.Executivo;

@FeignClient(url = "http://localhost:8081/api/locacao/executivo", name = "executivoClient")
public interface IExecutivoClient {
	
	@GetMapping(value = "/obter")
	public List<Executivo> obterLista();
	
	@GetMapping(value = "/{id}")
	public Executivo obterPorId(@PathVariable Integer id);
}
