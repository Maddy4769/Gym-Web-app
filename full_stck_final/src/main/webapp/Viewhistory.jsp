<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="view.css">
</head>
<body>
<%@ include file='nav.html'%>
<div class="container">
<h2>Past Entries</h2>
<%
try {
Class.forName("com.mysql.jdbc.Driver"); 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from  fitness_data");
%>
<TABLE class="yoga-table" id="past-entries">
<tr><th>date</th><th>workout-type</th><th>duration</th><th>calories burned</th><th>notes</th><th>username</th></tr>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getInt(3)%></TD>
<TD><%=rs.getInt(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6) %></TD>
</TR>
<% } %>
<%
// close all the connections.
rs.close();
st.close();
con.close();
} catch (Exception ex) {
%>

<font class="error">
<%
out.println(ex);
out.println("Unable to connect to database.");
}
%>
</font>
</TABLE><TABLE>
<TR>
<TD>
<form ACTION="dashboard.jsp" method="post" >
<button type="submit">Back</button>
</form>
</TD>
</TR>
</TABLE>
</div>
</body>
<script>
window.onload = function() {
	  const tableBody = document.getElementById('past-entries').getElementsByTagName('tbody')[0];
	  const tableRows = tableBody.getElementsByTagName('tr');
	  
	  // Animate table rows on page load
	  for (let i = 0; i < tableRows.length; i++) {
	    tableRows[i].style.opacity = 0;
	  }
	  
	  let animationDelay = 0;
	  for (let i = 0; i < tableRows.length; i++) {
	    setTimeout(function() {
	      tableRows[i].style.opacity = 1;
	      tableRows[i].style.transition = 'opacity 0.5s ease-in-out';
	    }, animationDelay);
	    animationDelay += 100;  // Adjust delay between animations
	  }
	};
</script>
</html>