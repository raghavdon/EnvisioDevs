<%@ page language="java" contentType="text/html; cha&nbsp;&nbsp;Rset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; cha&nbsp;&nbsp;Rset=UTF-8">
 <script src="js/my1.js"></script>
<link href="css/1.css" rel="stylesheet">
<title>Trophies</title>
</head>
<body>
<center> <h1><font size="7">Trophies Manufacture&nbsp;&nbsp;Rs</font>  </h1></center>
<a href="index.jsp"><font size="5" face="Georgia"><em>Back to Main Page </em></font></a>

<%double al=1;
double stl=2;
double cp=3;
double gold=3;
double silver=2;
double bronze=1;
%>

<table width=100%>
  
  
  
  <tr id="d1">
  
  
  
  <td width=50%>
    
   
    <table border=1 width=80%>
      <tbody>
        <caption>Cost of Metal (Per Square mm)</caption>
        <tr>
          <th width=40%>Metal</th>
          <th width=15%>100%</th>
			<th width=15%>90%</th>
			<th width=15%>80%</th>
			<th width=15%>70%</th>
        
        <tr>
          <td>Aluminium</td>
          <td><%= al %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(al*90)/100.0 %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(al*80)/100.0 %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(al*70)/100.0 %> &nbsp;&nbsp;Rs</td>
        </tr>
        
        <tr>
          <td>Steel</td>
           <td><%= stl %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(stl*90)/100.0 %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(stl*80)/100.0 %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(stl*70)/100.0 %> &nbsp;&nbsp;Rs</td>
        </tr>
        
        <tr>
          <td>Copper</td>
           <td><%= cp %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(cp*90)/100.0 %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(cp*80)/100.0 %> &nbsp;&nbsp;Rs</td>
          <td><%= Math.round(cp*70)/100.0 %> &nbsp;&nbsp;Rs</td>
        </tr>
        
 		</tbody>
    </table>
    
   </td>
   
    
    
    
    <td>
    
    <table border=1  width=80%>
      <tbody>
        <caption>Coating Cost</caption>
        <tr>
          <th>Metal</th>
          <th>cost(per cube mm)</th>
			
        
        <tr>
          <td>GOld</td>
          <td><%= gold %>&nbsp;&nbsp;Rs</td>
        </tr>
        
        <tr>
          <td>Silver</td>
           <td><%= silver %>&nbsp;&nbsp;Rs</td>
         </tr>
        
        <tr>
          <td>Bronze</td>
           <td><%= bronze %>&nbsp;&nbsp;Rs</td>
          
        </tr>
        
 		</tbody>
    </table>
    
    </td>
    
   
   <tr id="d2">
   <td  width=50%>
    <form id="signup" method="post" name="inf" action="TrophyManufacture">
    <table id="tab1">
      <tbody>
        
        <tr>
          <td width="40%"><font size="4">Shape</font></td>

          <td width="60%" >
          <select id="shape" name="shape" style="HEIGHT: 30px; WIDTH: 150px" onchange="shp(this.value);">
			<option value="sphere">Sphere</option>
			<option value="cylinder">Cylinder</option>
			<option value="cube">Cube</option>
			<option value="cuboid">Cuboid</option>
		</select></td>
        </tr>



        <tr>
          <td ><font size="4">Dimensions (mm)</font></td>
		  <td id="dim">
		  Radius <input required style="HEIGHT: 25px; WIDTH: 50px" size="36" name="dima" onkeypress="return isNumberKey2(event)"></td>
		 
         </tr>

		<tr>
          <td ><font size="4">Metal</font></td>

          <td >
          <select name="metal" id="metal" style="HEIGHT: 30px; WIDTH: 150px">
			<option value="aluminium">Aluminium</option>
			<option value="steel">Steel</option>
			<option value="copper">Copper</option>
		</select></td>
        </tr>

        <tr>
          <td ><font size="4">Purity(%)</font></td>
		  <td>
		   <select name="pure" id="pure" style="HEIGHT: 40px; WIDTH: 60px">
			<option value="100">100</option>
			<option value="90">90</option>
			<option value="80">80</option>
			<option value="70">70</option>
		</select></td>
		   </tr>
         
         
         <tr>
          <td><font size="4">Coating Metal</font></td>

          <td>
          <select name="coat" id="coating" style="HEIGHT: 30px; WIDTH: 150px">
			<option value="gold">Gold</option>
			<option value="silver">Silver</option>
			<option value="bronze">Bronze</option>
		</select></td>
        </tr>

        <tr>
          <td><font size="4">Coating thickness (mm)</font></td>
		  <td>
		  <input required style="HEIGHT: 25px; WIDTH: 70px" size="36" name="thickness" onkeypress="return isNumberKey2(event)" ></td>
         </tr>
 		<tr>
          <td></td>
		  <td>
		  <input style="HEIGHT: 40px; WIDTH: 100px" size="69" type="reset" value="Reset" name="reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
    	<input style="HEIGHT: 40px; WIDTH: 100px" size="62" type="submit" value="Submit" name="register" />
 
		  </tr>

       
        
      </tbody>
    </table>
</form>
</td>

<td  width=50%>
<%
String shape = "-";
Object sp = request.getAttribute("shape2");
if (sp != null) shape = sp.toString();
%>

<%
String area = "-";
Object ar = request.getAttribute("area2");
if (ar != null) area = ar.toString();
%>

<%
String metal = "-";
Object mt = request.getAttribute("metal2");
if (mt != null) metal = mt.toString();
%>

<%
String metalcost = "-";
Object mtc = request.getAttribute("metalcost2");
if (mtc != null) metalcost = mtc.toString();
%>

<%
String coat = "-";
Object ct = request.getAttribute("coat2");
if (ct != null) coat = ct.toString();
%>

<%
String thick = "-";
Object th = request.getAttribute("thick2");
if (th != null) thick = th.toString();
%>

<%
String coatcost = "-";
Object ctc = request.getAttribute("coatcost2");
if (ctc != null) coatcost = ctc.toString();
%>

<%
String totalcost = "-";
Object ttc = request.getAttribute("totalcost2");
if (ttc != null) totalcost = ttc.toString();
%>



<table id="tab2" border=1>
      <tbody>
       <tr>
          <td width=40%>Shape</td>
          <td width=60%><%=shape%></td>
        </tr>
        
        <tr>
          <td>Area (sq. mm)</td>
          <td><%=area%></td>
        </tr>
        <tr>
          <td>Metal</td>
          <td><%=metal%></td>
        </tr>
        
        <tr>
          <td><b>Metal Cost (Rs)</b></td>
          <td><b><%=metalcost%></b></td>
        </tr>
	<tr>
          <td>Coating</td>
          <td><%=coat%></td>
        </tr>
        <tr>
          <td>Coating Thickness (mm)</td>
          <td><%=thick%></td>
        </tr>
	<tr>
          <td><b>Coating Cost (Rs)</b></td>
          <td><b><%=coatcost%></b></td>
        </tr>
        
        <tr>
          <td><b>Total Cost (Rs)</b></td>
          <td><b><%=totalcost%></b></td>
        </tr>
</tbody>
    </table>
</td>
    </tr>
  
  </table>
   


</body>
</html>