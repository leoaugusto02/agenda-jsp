package controller;

import java.util.ArrayList;
import java.util.List;

import vo.Contato;

public class Agenda {

	private static List<Contato> agenda = new ArrayList<>();
	private static List<String> operadoras = new ArrayList<>();

	public static List<String> getOperadoras() {
		if (operadoras.isEmpty()) {
			operadoras.add("Vivo");
			operadoras.add("Claro");
			operadoras.add("Oi");
			operadoras.add("Tim");
			operadoras.add("CTBC Telecom");
		}
		return operadoras;
	}

	public static void setOperadoras(List<String> operadoras) {
		Agenda.operadoras = operadoras;
	}

	public static List<Contato> getAgenda() {
		return agenda;
	}

	public static void setAgenda(List<Contato> agenda) {
		Agenda.agenda = agenda;
	}

}
