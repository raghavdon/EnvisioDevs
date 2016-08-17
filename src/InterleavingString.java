

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InterleavingString
 */
@WebServlet("/InterleavingString")
public class InterleavingString extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InterleavingString() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a= request.getParameter("stringA").toString();
		String b= request.getParameter("stringB").toString();
		String c= request.getParameter("stringC").toString();
		
		boolean interleave=false;
		
		int ca=0;
		for(int i=0;i<a.length();i++){
			if(a.charAt(i)==c.charAt(i)){
				ca++;
			}
		}
		if(ca==a.length()){
			interleave=true;
		}
		else{
			int cb=0;
			for(int j=0;j<b.length();j++){
				if(a.charAt(j)==c.charAt(j)){
					cb++;
				}
			}
			if(cb==b.length()){
				interleave=true;
			}
		}
		request.setAttribute("output", "OUTPUT ");
		if(interleave==true){
			request.setAttribute("ovalue","TRUE");
		}
		else {
			request.setAttribute("ovalue","False");
		}
		ServletContext context = getServletContext();
		RequestDispatcher dispatcher = context.getRequestDispatcher("/Question2.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
