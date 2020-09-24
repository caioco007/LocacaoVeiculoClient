package br.edu.infnet.appTLocacao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.edu.infnet.appTLocacao.model.negocio.Endereco;
import br.edu.infnet.appTLocacao.model.service.EnderecoService;

@RestController
@RequestMapping(value = "endereco")
public class EnderecoApiController {
	
    @Autowired
    private EnderecoService enderecoService;

    @GetMapping(value = "{cep}")
    public Endereco endereco(@PathVariable String cep) {
        return enderecoService.obterPorCep(cep);
    }
}