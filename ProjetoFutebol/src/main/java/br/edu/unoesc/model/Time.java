package br.edu.unoesc.model;

public class Time {

	private Long codigo;
	private String nome;
	private Integer gol = 0;
	private Integer pontuacao = 0;

	public Time(Long codigo, String nome, Integer pontuacao) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.gol = pontuacao;
	}

	public Integer getPontuacao() {
		return pontuacao;
	}

	public void setPontuacao(Integer pontuacao) {
		this.pontuacao = pontuacao;
	}

	public Time() {
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getGol() {
		return gol;
	}

	public void setGol(Integer pontuacao) {
		this.gol = pontuacao;
	}



	@Override
	public String toString() {
		return "Time [codigo=" + codigo + ", nome=" + nome + ", gol=" + gol + ", pontuacao=" + pontuacao + "]";
	}

}
