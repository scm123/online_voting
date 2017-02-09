<%@include file="Connection.jsp" %>

<%
  String  query="select *from result";
  PreparedStatement ps= con.prepareStatement(query);
  ResultSet rs=ps.executeQuery();
  
%>

