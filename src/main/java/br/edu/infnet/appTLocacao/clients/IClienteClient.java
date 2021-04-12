package br.edu.infnet.appTLocacao.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.edu.infnet.appTLocacao.model.negocio.Cliente;

@FeignClient(url = "https://app-locacao.herokuapp.com/api/locacao/cliente", name = "clienteClient")
public interface IClienteClient {
	
	@GetMapping(value = "/obter")
	public List<Cliente> obterLista();	
	
	@GetMapping(value = "/{id}")
	public Cliente obterPorId(@PathVariable Integer id);

	@PostMapping(value = "/incluir")
	public void incluir(@RequestBody Cliente cliente);
	
	@GetMapping(value = "/{id}/excluir")
	public void excluir(@PathVariable Integer id);
	
	@GetMapping(value = "/{id}/alterar")
	public void alterar(@PathVariable Integer id);
}
