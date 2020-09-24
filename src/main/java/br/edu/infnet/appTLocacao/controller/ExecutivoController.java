package br.edu.infnet.appTLocacao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appTLocacao.model.negocio.Executivo;
import br.edu.infnet.appTLocacao.model.service.ExecutivoService;

@Controller
public class ExecutivoController {

	@Autowired 
	private ExecutivoService executivoService;
	
	@GetMapping(value = "/executivo")
	public String novo(
				Model model
			) {
		model.addAttribute("operacao", "inclusão");
		
		return "executivo/detalhe";
	}
	
	@GetMapping(value = "/executivos")
	public String lista(
				Model model
			) {
		model.addAttribute("executivos", executivoService.obterExecutivos());
		
		return "executivo/lista";
	}
	
	@PostMapping(value = "/executivo/incluir")
	public String incluir(
				Executivo executivo
			) {
		
		executivoService.incluir(executivo);
		
		return "redirect:/executivos";
	}

	@GetMapping(value = "/executivo/{id}/excluir")
	public String excluir(
				Model model,
				@PathVariable Integer id
			) {
		
		try {
			executivoService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("msgError", "Impossível realizar a exclusão: este item está sendo utilizado!!");
			return this.lista(model);
		}
		
		return "redirect:/executivos";
	}
	
	@GetMapping(value = "/executivo/{id}/alterar")
	public String alterar(
				Model model,
				@PathVariable Integer id
			) {
		
		model.addAttribute("game", executivoService.obterPorId(id));
		model.addAttribute("operacao", "alteração");
		
		return "executivo/detalhe";
	}
}