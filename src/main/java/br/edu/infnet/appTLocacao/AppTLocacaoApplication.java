package br.edu.infnet.appTLocacao;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class AppTLocacaoApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppTLocacaoApplication.class, args);
	}

}