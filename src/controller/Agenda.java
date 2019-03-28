package controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.OperadoraDAO;
import vo.Contato;
import vo.Operadora;

public class Agenda {

	private static List<Contato> agenda = new ArrayList<>();
	private static List<String> operadoras = new ArrayList<>();

	public static List<String> getOperadoras() throws SQLException {
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
