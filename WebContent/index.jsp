<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EnvisioDevs</title>
<link href="css/1.css" rel="stylesheet">
</head>
<body>
<div id="head">
<center> <h1><font size="7">EnvisioDevs</font>  </h1></center>
</div>

<div id="q1">
<p>
<b> Question 1 :</b>
You work in an organisation that manufactures trophies. A trophy will have a definite shape, will be made
of a definite metal, and will have a coating layer over it by some specific element. Once a customer
comes to your office to place an order, you need to ask for the relevant details, in order to build the exact
trophy as per the requirement.
Details you need from a customer are:</p>
<ol>
<li> The shape, and its dimensions. The possible shapes are Sphere, Cylinder, Cube or something abstract
which you can consider to be a cuboid.</li>
<li> The metal to be used to built the trophy, and its purity percentage. The possible metals are Aluminium,
Steel or Copper.</li>
<li> The element to be used for the coating layer, and its thickness. The possible elements are Gold, Silver
or Bronze.</li>
</ol>
<p>The metals and the coating elements have a fixed price in your organization.
Write an object oriented program with design pattern, to take the relevant details of the trophy from the
user and calculate the cost for the trophy, assuming your organization does not take any making charges.
You will need to create UI of the application, preferably responsive.</p>
<a href="Question1.jsp"><font size="5" face="Georgia"><em>SOLUTION</em></font></a>
</div>


<div id="q2">
<p>
<b> Question 2 :</b>
Given three strings A, B and C. Write a function that checks whether C is an interleaving of A and B. C
is said to be interleaving A and B, if it contains all characters of A and B and order of all characters in
individual strings is preserved.</p>
<p>The simple solution doesn’t work if strings A and B have some common characters. For example A =
“XXY”, string B = “XXZ” and string C = “XXZXXXY”. To handle all cases, two possibilities need to be
considered.</p>
<ol type="a">
<li> If first character of C matches with first character of A, we move one character ahead in A and C and
recursively check.</li>
<li> If first character of C matches with first character of B, we move one character ahead in B and C and
recursively check.</li>
</ol>
<p>
If any of the above two cases is true, we return true, else false. Following is simple recursive
implementation of this approach.</p>
<a href="Question2.jsp"><font size="5" face="Georgia"><em>SOLUTION </em></font></a>
</div>

<div id="q3">
<p>
<b> Question 3 :</b>
<p>
Create a simple application , integrate google maps, fetch latitude/longitude of places in Pune of your
choice from the database(Create one!) and use markers to display those places in the map.</p>
<a href="Question3.jsp"><font size="5" face="Georgia"><em>SOLUTION</em></font></a>
</div>
</body>
</html>