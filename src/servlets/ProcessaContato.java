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
import dao.ContatoDAO;
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
		
		Operadora o = new Operadora();
		ContatoDAO cDao = new ContatoDAO();
		Contato c = new Contato();
		
		c.setNome(request.getParameter("nome"));
		c.setTelefone(request.getParameter("telefone"));
		o.setCodigo(request.getParameter("operadora"));
		
		try {
			cDao.inserir(c);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		Mensagem.addMensagem("Contato salvo com sucesso");
		
		response.sendRedirect("inicial.jsp");
		
	}

}