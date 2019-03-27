package vo;

public class Contato {

	private Integer codContato;
	private String nome;
	private String telefone;
	private Operadora operadora;

	public Operadora getOperadora() {
		return operadora;
	}

	public void setOperadora(Operadora operadora) {
		this.operadora = operadora;
	}

	public Integer getCodContato() {
		return codContato;
	}

	public void setCodContato(Integer codContato) {
		this.codContato = codContato;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

}
