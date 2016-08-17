import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class abc {

	public static void main(String [] args){
		abc v=new abc();
		ArrayList<String> al=v.place();
		for(int i=0;i<al.size();i++){
			System.out.println(al);
		}
	}
	public ArrayList<String> place () {
		// TODO Auto-generated method stub
		ArrayList<String> al=new ArrayList<String>();
		
		String url = "jdbc:postgresql://127.0.0.1/example3";
		Connection con;
		ResultSet rs;
		
		String s;
		Statement st;
		String sqlstr = "SELECT place, latitude, longitude FROM cordinates";

		try 
		{
			Class.forName("org.postgresql.Driver");
		} 
		catch(java.lang.ClassNotFoundException e) 
		{
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}

		try
		{
			con = DriverManager.getConnection(url,"postgres", "don.214");

			 st = con.createStatement();
			rs = st.executeQuery(sqlstr);
			

			
			while(rs.next())
			{
				//System.out.println(rs.getString(1)+";"+rs.getString(2)+";"+rs.getString(3));
				s = rs.getString(1)+"~"+rs.getString(2)+"~"+rs.getString(3);
				al.add(s);
  				
			}
			
     		rs.close();
			st.close();
			con.close();

		} 
		catch(SQLException ex) 
		{
			System.err.println("SQLException: " + ex.getMessage());
		}
		
		return al;
	}

}
