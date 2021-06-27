package com.pharma;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBHelper {
	Connection conn;
	Statement  st;
	PreparedStatement pst;
	final String URL="jdbc:mysql://localhost:3306/medicapspharma";
	public Connection getMyConnection() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection(URL, "root","navdeep");
	}
	
	public User getEmpInfo(String id,String pass) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("SELECT *FROM user_pass WHERE u_id='%s'AND password='%s'" , id ,pass);
		ResultSet rs=st.executeQuery(q);
		if(rs.next())
		   return new User(rs.getString(1),rs.getString(2));
		return null;
	}
	public int addChemical(String id,String name,float quantity,float threshold) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("INSERT INTO chemical VALUES('%s','%s')", id,name);
		String u = String.format("INSERT INTO chemical_main_lab VALUES('%s','%f','%f')", id,quantity,threshold);
		st.executeUpdate(u);
		return st.executeUpdate(q);
	}
	public int updateChemical(String id,float quantity) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("update chemical_main_lab set amount = amount+'%f' where chemical_id='%s'",quantity,id);
		return st.executeUpdate(u);
	}
	public ResultSet getAllChemical()throws Exception
	  {
	  	conn=getMyConnection();
	  	pst=conn.prepareStatement("select c.chemical_id,c.chemical_name,cml.amount,cml.threshold from chemical as c join chemical_main_lab as cml where c.chemical_id = cml.chemical_id;");
	  	return pst.executeQuery();
	  }
	public int addUtensil(String id,String name,float quantity,float threshold) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("INSERT INTO utensil VALUES('%s','%s')", id,name);
		String u = String.format("INSERT INTO utensil_main_lab VALUES('%s','%f','%f')", id,quantity,threshold);
		st.executeUpdate(u);
		return st.executeUpdate(q);
	}
	public int updateUtensil(String id,float quantity) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("update utensil_main_lab set amount = amount+'%f' where utensil_id='%s'",quantity,id);
		return st.executeUpdate(u);
	}
	public ResultSet getAllUtensil()throws Exception
	  {
	  	conn=getMyConnection();
	  	pst=conn.prepareStatement("select u.utensil_id,u.utensil_name,uml.amount,uml.threshold from utensil as u join utensil_main_lab as uml where u.utensil_id = uml.utensil_id;");
	  	return pst.executeQuery();
	  }
	public ResultSet getLowChemicals()throws Exception
	  {
	  	conn=getMyConnection();
	  	pst=conn.prepareStatement("select c.chemical_id,c.chemical_name,cml.amount,cml.threshold from chemical as c join chemical_main_lab as cml where c.chemical_id = cml.chemical_id AND cml.amount<cml.threshold;");
	  	return pst.executeQuery();
	  }
	public ResultSet getLowUtensils()throws Exception
	  {
	  	conn=getMyConnection();
	  	pst=conn.prepareStatement("select u.utensil_id,u.utensil_name,uml.amount,uml.threshold from utensil as u join utensil_main_lab as uml where u.utensil_id = uml.utensil_id AND uml.amount<uml.threshold;");
	  	return pst.executeQuery();
	  }
	public int assignChemical(String lab_name,String id,float quantity) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("insert into chemical_assigned values ('%s','%s' ,'%f');", lab_name, id, quantity);
		return st.executeUpdate(u);
	}
	public int updateAssignChemical(String lab_name,String id,float quantity) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("update chemical_assigned set amount = amount+'%f' where lab_name='%s' && chemical_id='%s';",quantity , lab_name, id);
		String v = String.format("update chemical_main_lab set amount = amount-'%f' where chemical_id='%s'",quantity,id);
		st.executeUpdate(v);
		return st.executeUpdate(u);
	}
	public ResultSet checkLab(String lab_name)throws Exception
	  {
	  	conn=getMyConnection();
	  	String u = String.format("select DISTINCT 1 from labs where lab_name='%s';", lab_name);
	  	pst=conn.prepareStatement(u);
	  	return pst.executeQuery();
	  }
	public ResultSet checkChemical(String ch_id)throws Exception
	  {
	  	conn=getMyConnection();
	  	String u = String.format("select DISTINCT 1 from chemical where chemical_id='%s';", ch_id);
	  	pst=conn.prepareStatement(u);
	  	return pst.executeQuery();
	  }
	public int assignUtensil(String lab_name,String id,float quantity) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("insert into utensil_assigned values ('%s','%s' ,'%f');", lab_name, id, quantity);
		return st.executeUpdate(u);
	}
	public int updateAssignUtensil(String lab_name,String id,float quantity) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("update utensil_assigned set amount = amount+'%f' where lab_name='%s' && utensil_id='%s';",quantity , lab_name, id);
		String v = String.format("update utensil_main_lab set amount = amount-'%f' where utensil_id='%s'",quantity,id);
		st.executeUpdate(v);
		return st.executeUpdate(u);
	}
	public ResultSet checkUtensil(String ut_id)throws Exception
	  {
	  	conn=getMyConnection();
	  	String u = String.format("select DISTINCT 1 from utensil where utensil_id='%s';", ut_id);
	  	pst=conn.prepareStatement(u);
	  	return pst.executeQuery();
	  }
	public int insertLab(String lab_name) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("insert into labs values ('%s');", lab_name);
		return st.executeUpdate(u);
	}
	public ResultSet showLabs() throws Exception
	  {
	  	conn=getMyConnection();
	  	String u = String.format("select * from labs;");
	  	pst=conn.prepareStatement(u);
	  	return pst.executeQuery();
	  }
	public ResultSet ShowLabChemical(String lab_name)throws Exception
	  {
	  	conn=getMyConnection();
	  	String query= String.format("select l.lab_name,c.chemical_name, l.chemical_id,l.amount from chemical as c inner join chemical_assigned as l where c.chemical_id=l.chemical_id && l.lab_name='%s';",lab_name);
	  	pst=conn.prepareStatement(query);
	  	return pst.executeQuery();
	  }
	public ResultSet ShowLabUtensil(String lab_name)throws Exception
	  {
	  	conn=getMyConnection();
	  	String query= String.format("select l.lab_name,u.utensil_name, l.utensil_id,l.amount from utensil as u inner join utensil_assigned as l where u.utensil_id=l.utensil_id && l.lab_name='%s';",lab_name);
	  	pst=conn.prepareStatement(query);
	  	return pst.executeQuery();
	  }
	public int chemical_usage(String id,String lab_name,float qty) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("update chemical_assigned set amount=amount-'%f' where chemical_id = '%s' && lab_name='%s';",qty, id, lab_name);
		return st.executeUpdate(u);
	}
	public int utensil_usage(String id,String lab_name,float qty) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String u = String.format("update utensil_assigned set amount=amount-'%f' where utensil_id = '%s' && lab_name='%s';",qty, id, lab_name);
		return st.executeUpdate(u);
	}
	public int new_lab(String user,String pass) throws Exception {
		conn=getMyConnection();
		st = conn.createStatement();
		String u = String.format("insert into user_pass values ('%s','%s');",user, pass);
		return st.executeUpdate(u);
	}
}
