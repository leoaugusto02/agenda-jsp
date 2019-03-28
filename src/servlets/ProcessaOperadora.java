package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Agenda;
import controller.Mensagem;

@WebServlet("/ProcessaOperadora")
public class ProcessaOperadora extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProcessaOperadora() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String operadora = request.getParameter("operadora");
		
		if(operadora != null){
			try {
				Agenda.getOperadoras().add(operadora);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		Mensagem.addMensagem("Operadora Adicionada com Sucesso");
		
		response.sendRedirect("inicial.jsp?mensagem=Operadora Adicionada");
		
	}
}
