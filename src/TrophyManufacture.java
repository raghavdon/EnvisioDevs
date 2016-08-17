

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mainp
 */
@WebServlet("/TrophyManufacture")
public class TrophyManufacture extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrophyManufacture() {
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
		
		
		double al=1;
		double stl=2;
		double cp=3;
		double gold=3;
		double silver=2;
		double brnz=1;
		
String shape= request.getParameter("shape").toString();
double area=0;





if(shape.equals("sphere")){
double r= Double.parseDouble(request.getParameter("dima").toString());
area= (4*Math.PI*r*r);
	
}
else if(shape.equals("cylinder")){
	double r= Double.parseDouble(request.getParameter("dima").toString());
	double h= Double.parseDouble(request.getParameter("dimb").toString());
	area= (2*Math.PI*r*h)+(2*Math.PI*r*r);
		
	}
else if(shape.equals("cube")){
	double a= Double.parseDouble(request.getParameter("dima").toString());
	
	area= 6*a*a;
		
	}
else if(shape.equals("cuboid")){
	double a= Double.parseDouble(request.getParameter("dima").toString());
	double b= Double.parseDouble(request.getParameter("dimb").toString());
	double c= Double.parseDouble(request.getParameter("dimc").toString());
	
	
	area= 2*((a*b) + (b*c) + (c*a));
		
	}

DecimalFormat df = new DecimalFormat("#.##");

double metalcost=0;
int purity=Integer.parseInt(request.getParameter("pure").toString());
String metal= new String(request.getParameter("metal").toString());

if(metal.equals("aluminium")){
	metalcost=al*area*((al*purity)/100.0);
}
else if(metal.equals("steel")){
	metalcost=al*area*((stl*purity)/100.0);
}
else if(metal.equals("copper")){
	metalcost=al*area*((cp*purity)/100.0);
}



String CoatingMetal=request.getParameter("coat").toString();
double thick=Double.parseDouble(request.getParameter("thickness").toString());
double coatingcost=0;
if(CoatingMetal.equals("gold")){
	coatingcost=gold*thick*area;
}
else if(CoatingMetal.equals("silver")){
	coatingcost=silver*thick*area;
}
else if(CoatingMetal.equals("bronze")){
	coatingcost=brnz*thick*area;
}
double total=metalcost+coatingcost;

request.setAttribute("shape2", shape.toUpperCase());

request.setAttribute("area2", df.format(area)+"");

request.setAttribute("metal2", metal+"");

request.setAttribute("metalcost2", df.format(metalcost)+"");

request.setAttribute("coat2", CoatingMetal+"");

request.setAttribute("thick2", thick+"");

request.setAttribute("coatcost2", df.format(coatingcost)+"");

request.setAttribute("totalcost2", df.format(total)+"");


ServletContext context = getServletContext();
RequestDispatcher dispatcher = context.getRequestDispatcher("/Question1.jsp");
dispatcher.forward(request, response);



	}
	

}
