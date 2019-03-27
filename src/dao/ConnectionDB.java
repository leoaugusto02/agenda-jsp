package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

	// declara as vari�veis de conex�o
	private static String dns = "jdbc:mysql://localhost:3306/aula_banco";
	private static String usuario = "root";
	private static String senha = "";

	private static Connection con;

	public static Connection getConnection() {		
		try {
			if(con == null || con.isClosed()){
				DriverManager.registerDriver(new com.mysql.jdbc.Driver());
				con = DriverManager.getConnection(dns, usuario, senha);
			}
			return con;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}

}
