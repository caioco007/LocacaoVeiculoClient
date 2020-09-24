package br.edu.infnet.appTLocacao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appTLocacao.model.negocio.Cadastro;
import br.edu.infnet.appTLocacao.model.service.CadastroService;

@Controller
public class CadastroController {
	
	@Autowired 
	private CadastroService cadastroService;

	@PostMapping(value = "/cadastro/incluir")
	public String incluir(
				Model model,
				Cadastro cadastro
			) {
		
		cadastroService.incluir(cadastro);
		
		return "login";
	}
	
	@GetMapping(value = "/cadastro")
	public String showDetalhe() {
				
		return "cadastro/registrar";
	}
}
