

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class cordinates
 */
@WebServlet("/cordinates")
public class cordinates extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cordinates() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 abc ob=new abc();
		 ArrayList<String> al=ob.place();
		
		 try{
				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				out.write("<html><head><title>CORDINATES</title>"
						+ "<link href='css/1.css' rel='stylesheet'>"
						+ "<script type='text/javascript' src='js/my1.js'></script>"
						+ "<script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?key=AIzaSyA6NQAfoieFBkAUfPkqU0WnYbPx4pn3qUw&callback=initMap'></script>"
						+ "</head>"
						+ "<body><a href='index.jsp'><font size='5' face='Georgia'><em>Back to Main Page </em></font></a><br><br>");
				
				out.write("<select name='place' id='place' style='HEIGHT: 30px; WIDTH: 300px' onchange='loadMap(this.value);'>");
				out.write("<option value=sel>Plese Select</option>");
				for(int i=0;i<al.size();i++){
					String[] s=al.get(i).split("~");
					out.write("<option value="+al.get(i).replace(" ", "_")+">"+s[0]+"</option>");
					
				}
				
				out.write("</select>");
				out.write("<div id='map_container'>Check internet Connection</div>");
				out.write("</body></html>");
			}
			catch (Exception ex) {
				
						response.setContentType("text/html");
						PrintWriter out=response.getWriter();
						
						out.println("<html><head></head><body>");
				   		out.println("<script>alert('This  is under construction');window.location='mainpage';</script>");
				   		
				   		out.println("</body></html>");
				   		
			        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 
	}

}
