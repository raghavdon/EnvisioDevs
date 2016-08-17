<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/1.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QUESTION 3</title>
</head>
<body>
<a href="index.jsp"><font size="5" face="Georgia"><em>Back to Main Page </em></font></a>
<%
String output = "";
Object sp = request.getAttribute("output");
if (sp != null) output = sp.toString();
%>

<%
String op = "";
Object ar = request.getAttribute("ovalue");
if (ar != null) op = ar.toString();
%>
<form id="ques2" method="post" name="ques2" action="InterleavingString">
<table>
      <tbody>
        
        
        
        <tr>
          <td>String A</td>
          <td> <input style="HEIGHT: 25px; WIDTH: 300px" size="36" name="stringA"></td>
        </tr>
        <tr>
          <td>String B</td>
          <td> <input style="HEIGHT: 25px; WIDTH: 300px" size="36" name="stringB"></td>
        </tr>
        <tr>
          <td>String C</td>
          <td> <input style="HEIGHT: 25px; WIDTH: 300px" size="36" name="stringC"></td>
        </tr>
        <tr>
          <td></td>
		  <td>
		  <input style="HEIGHT: 40px; WIDTH: 100px" size="69" type="reset" value="Reset" name="Reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
    	<input style="HEIGHT: 40px; WIDTH: 100px" size="62" type="submit" value="Submit" name="Submit" />
 	</tr>
     
      <tr>
          <td><%=output %></td>
          <td style="color: red"><font size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=op %></font> </td>
        </tr>
</tbody>
    </table>
     </form>
</body>
</html>