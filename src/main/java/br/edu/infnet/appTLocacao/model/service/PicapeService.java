package br.edu.infnet.appTLocacao.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appTLocacao.clients.IPicapeClient;
import br.edu.infnet.appTLocacao.model.negocio.Picape;

@Service
public class PicapeService extends VeiculoService{
	
	@Autowired
	private IPicapeClient picapeClient;
	
	public  List<Picape> obterPicapes() {		
		return picapeClient.obterLista();
	}
	
	public Picape obterPorId(Integer id) {
		return picapeClient.obterPorId(id);
	}
}
