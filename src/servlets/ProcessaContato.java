package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Agenda;
import controller.Mensagem;
import vo.Contato;
import vo.Operadora;

@WebServlet("/ProcessaContato")
public class ProcessaContato extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProcessaContato() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Contato p = new Contato();
		p.setNome(request.getParameter("nome"));
		p.setTelefone(request.getParameter("telefone"));
		Operadora op = new Operadora();
		op.setNome(request.getParameter("operadora"));
		p.setOperadora(op);
		
		Agenda.getAgenda().add(p);
		
		Mensagem.addMensagem("Contato salvo com sucesso");
		
		response.sendRedirect("inicial.jsp");
		
	}

}












