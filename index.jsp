<%@include file='Connection.jsp' %>
<%
    String s1=request.getParameter("vid");
    String s2=request.getParameter("pass");
    session.setAttribute("voter_id",s1);
    
    String query="select *from login where voter_id=? and password=? ";
  
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,s1);
    ps.setString(2,s2);
    ResultSet rs=ps.executeQuery();
    int flag=0;
     String s3="";
     String s4="";
    while(rs.next())
    {
    s3= rs.getString(3);
    s4= rs.getString(4);
    flag=1;
    }
    session.setAttribute("v_name",s4);
    if( flag==1 && s3.equals("admin") )
    {
%><%@include file="admin.jsp" %> <%
    }
else if( flag==1 && s3.equals("voter") )
    {
%><%@include file="voter.jsp" %> <%
    }
else
  {
%><script>
    alert("your password or voter id is wrong,plz fill right one");
    </script>
    <%@include file="index.html" %>
<%
  }

 %>
