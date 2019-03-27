package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.Operadora;

public class OperadoraDAO {
	
	Connection con;
	PreparedStatement ps;
	
	public List<Operadora> listarTodas() throws SQLException{
		
		String sql = " SELECT * FROM operadora ";
		
		con = ConnectionDB.getConnection();
		
		ps = con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		List<Operadora> operadoras = new ArrayList<>();
		while(rs.next()){
			Operadora op = new Operadora();
			op.setCodOperadora(rs.getInt("cod_operadora"));
			op.setCodigo(rs.getInt("codigo"));
			op.setNome(rs.getString("nome"));
		}
		return operadoras;
	}

}
