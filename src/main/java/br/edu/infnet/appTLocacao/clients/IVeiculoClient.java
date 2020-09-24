package br.edu.infnet.appTLocacao.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.edu.infnet.appTLocacao.model.negocio.Veiculo;

@FeignClient(url = "http://localhost:8081/api/locacao/veiculo", name = "veiculoClient")
public interface IVeiculoClient {
	
	@GetMapping("/obter")
	public List<Veiculo> obterLista();	
	
	@PostMapping("/incluir")
	public void incluir (@RequestBody Veiculo veiculo);
	
	@GetMapping("/{id}")
	public Veiculo obterPorId(@PathVariable Integer id);
	
	@GetMapping("/{id}/excluir")
	public void excluir( @PathVariable Integer id);
}
