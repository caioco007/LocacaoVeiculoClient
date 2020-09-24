package br.edu.infnet.appTLocacao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.appTLocacao.model.service.VeiculoService;

@Controller
public class VeiculoController {

	@Autowired 
	private VeiculoService veiculoService;
	
	@GetMapping(value = "/veiculos")
	public String lista(
				Model model
			) {
		model.addAttribute("veiculos", veiculoService.obterLista());
		
		return "veiculo/lista";
	}

	@GetMapping(value = "/veiculo/{id}/excluir")
	public String excluir(
				Model model,
				@PathVariable Integer id
			) {
		
		try {
			veiculoService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("msgError", "Impossível realizar a exclusão: este item está sendo utilizado!!");
			return this.lista(model);
		}
		
		return "redirect:/veiculos";
	}
}