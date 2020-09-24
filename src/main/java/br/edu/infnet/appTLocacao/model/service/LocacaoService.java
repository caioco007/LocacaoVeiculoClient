package br.edu.infnet.appTLocacao.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.ILocacaoClient;
import br.edu.infnet.appTLocacao.model.negocio.Locacao;

@Service
public class LocacaoService {

	@Autowired
	private ILocacaoClient locacaoClient;

	public  List<Locacao> obterLista() {		
		return locacaoClient.obterLista();
	}
	
	public void incluir(Locacao locacao) {
		locacaoClient.incluir(locacao);
	}
	
	public Locacao consultar(Integer id) {
		return locacaoClient.consultar(id);
	}
	
	public void excluir(Integer id) {
		locacaoClient.excluir(id);
	}	
	
	public Float obterValorTotal(List<Locacao> lista) {
		
		Float valorTotal = 0F;
		
		for(Locacao locacao : lista) {
			valorTotal = valorTotal + locacao.valorTotal2();
		}
		
		return valorTotal;
	}
	
}
