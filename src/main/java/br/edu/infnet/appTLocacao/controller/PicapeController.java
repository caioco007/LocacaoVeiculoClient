package br.edu.infnet.appTLocacao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appTLocacao.model.negocio.Picape;
import br.edu.infnet.appTLocacao.model.service.PicapeService;

@Controller
public class PicapeController {

	@Autowired 
	private PicapeService picapeService;
	
	@GetMapping(value = "/picape")
	public String novo(
				Model model
			) {
		model.addAttribute("operacao", "inclusão");
		
		return "picape/detalhe";
	}
	
	@GetMapping(value = "/picapes")
	public String lista(
				Model model
			) {
		model.addAttribute("picapes", picapeService.obterPicapes());
		
		return "picape/lista";
	}
	
	@PostMapping(value = "/picape/incluir")
	public String incluir(
				Picape picape
			) {
		
		picapeService.incluir(picape);
		
		return "redirect:/picapes";
	}

	@GetMapping(value = "/picape/{id}/excluir")
	public String excluir(
				Model model,
				@PathVariable Integer id
			) {
		
		try {
			picapeService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("msgError", "Impossível realizar a exclusão: este item está sendo utilizado!!");
			return this.lista(model);
		}
		
		return "redirect:/picapes";
	}
	
	@GetMapping(value = "/picape/{id}/alterar")
	public String alterar(
				Model model,
				@PathVariable Integer id
			) {
		
		model.addAttribute("picape", picapeService.obterPorId(id));
		model.addAttribute("operacao", "alteração");
		
		return "picape/detalhe";
	}
}