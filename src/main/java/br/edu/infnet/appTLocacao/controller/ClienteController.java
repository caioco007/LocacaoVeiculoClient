package br.edu.infnet.appTLocacao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appTLocacao.model.negocio.Cliente;
import br.edu.infnet.appTLocacao.model.service.ClienteService;

@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService clienteService;
		
	@GetMapping(value = "/cliente")
	public String novo(
				Model model
			) {
		model.addAttribute("operacao", "inclusão");
		
		return "cliente/detalhe";
	}
	
	@GetMapping(value = "/clientes")
	public String lista(
				Model model
			) {
		
		model.addAttribute("clientes", clienteService.obterLista()); 
		
		return "cliente/lista";
	}
	
	@PostMapping(value = "/cliente/incluir")
	public String incluir(
				Cliente cliente
			) {
		
		clienteService.incluir(cliente);
		
		return "redirect:/clientes";
	}
	
	@GetMapping(value = "/cliente/{id}/excluir")
	public String excluir(
				Model model,
				@PathVariable Integer id
			) {
		
		try {
			clienteService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("msgError", "Impossível realizar a exclusão: este item está sendo utilizado!!");
			return this.lista(model);
		}
		
		return "redirect:/clientes";
	}
	
	@GetMapping(value = "/cliente/{id}/alterar")
	public String alterar(
				Model model,
				@PathVariable Integer id
			) {
		model.addAttribute("operacao", "alteração");
		
		model.addAttribute("cliente", clienteService.obterPorId(id));
		
		return "cliente/detalhe";
	}
	
}
