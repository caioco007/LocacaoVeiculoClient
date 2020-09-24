package br.edu.infnet.appTLocacao.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import br.edu.infnet.appTLocacao.model.negocio.Cadastro;
import br.edu.infnet.appTLocacao.model.negocio.Locacao;
import br.edu.infnet.appTLocacao.model.service.CadastroService;
import br.edu.infnet.appTLocacao.model.service.ClienteService;
import br.edu.infnet.appTLocacao.model.service.LocacaoService;
import br.edu.infnet.appTLocacao.model.service.VeiculoService;

@Controller
@SessionAttributes("user")
public class AppController {

	@Autowired 
	private CadastroService cadastroService;
	@Autowired 
	private LocacaoService locacaoService;
	@Autowired 
	private ClienteService clienteService;
	@Autowired 
	private VeiculoService veiculoService;

	@GetMapping(value = "/")
	public String showInit() {
		return "login";
	}
	
	@GetMapping(value = "/home")
	public String showHome(
				Model model

			) {
		
		List<Locacao> listaLocacao = locacaoService.obterLista();
		model.addAttribute("locacoes", listaLocacao);
		model.addAttribute("veiculos", veiculoService.obterLista());
		model.addAttribute("clientes", clienteService.obterLista());
		model.addAttribute("totalLocal", locacaoService.obterValorTotal(listaLocacao));
		
		return "home";
	}
	
	@GetMapping(value = "/login")
	public String showLogin() {
		return this.showInit();
	}
	
	@PostMapping(value = "/login")
	public String showHome(
				Model model,
				@RequestParam String login,
				@RequestParam String senha
			) {

		Cadastro cadastro = cadastroService.userExist(login);
		
		if(cadastro == null) {
			return "usuario/detalhe";
			
		}else if (!cadastroService.isValid(login, senha)) {
			model.addAttribute("mensagem", "Credenciais inválidas: " + login);
			return "login";
			
		}  else {
			model.addAttribute("user", cadastro);
			return "redirect:/home";
		}		
	}
	
	@GetMapping(value = "/voltar") 
	public String voltar() {		
		return this.showInit();
	}
	
	@GetMapping(value = "/sair")
	public String sair(SessionStatus session) {
		
		session.setComplete();		
		
		return "redirect:/";
	}
}