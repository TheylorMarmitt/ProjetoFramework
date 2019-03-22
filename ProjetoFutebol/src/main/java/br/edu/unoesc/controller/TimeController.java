package br.edu.unoesc.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.model.Banco;
import br.edu.unoesc.model.Time;

@Controller
@Path("/time")
public class TimeController {

	@Inject
	private Result result;

	@Get("/cadastro")
	public void cadastro() {

	}
	
	@Get("/jogar")
	public void jogar() {
		result.include("times", Banco.times);
	}

	@Post("/enviar")
	public void jogar(Time time) {
		Banco.times.add(time);
		result.include("times", Banco.times);
	}

	@Post("/resultado")
	public void resultado(Integer gol1, Integer gol2, Long t1codigo, Long t2codigo) {
		Time t1 = new Time();
		t1.setCodigo(t1codigo);
		t1.setGol(gol1);

		Time t2 = new Time();
		t2.setCodigo(t2codigo);
		t2.setGol(gol2);
		
		boolean vitoria1 = false;
		boolean empate = false;
		boolean vitoria2 = false;
		
		if (t1.getGol() > t2.getGol()) {
			vitoria1 = true;
		} else if (t2.getGol() == t1.getGol()) {
			empate = true;
		} else {
			vitoria2 = true;
		}
		
		for (int i = 0; i < Banco.times.size(); i++) {
			Time t = Banco.times.get(i);
			if(t1codigo.equals(t.getCodigo())) {
				int pont = t.getPontuacao();
				if(vitoria1) {
					t.setPontuacao(pont+3);
				}else if(empate) {
					t.setPontuacao(pont+1);
				}	
			}
			else if(t2codigo.equals(t.getCodigo())) {
				int pont = t.getPontuacao();
				if(vitoria2) {
					t.setPontuacao(pont+3);
				}else if(empate) {
					t.setPontuacao(pont+1);
				}
				
			} 
				
		}
		result.include("times", Banco.times);
	}

	
}
