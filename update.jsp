<%@include file='Connection.jsp' %>

<%
    String s1=request.getParameter("vid");
        String s2=request.getParameter("vname");
            String s3=request.getParameter("fname");
                        String s4=request.getParameter("age1");
                                    String s5=request.getParameter("vcity");
                                                String s6=request.getParameter("vstreet");
            
    int j=0;

    String query="update voter set voter_name=?,fathername=?,age=?,city=?, street=? where voter_id= ? ";
    PreparedStatement ps=con.prepareStatement(query);
    
    ps.setString(1,s2);
      ps.setString(2,s3);
        ps.setString(3,s4);
            ps.setString(4,s5);
                ps.setString(5,s6);
                    ps.setString(6,s1);
    j=ps.executeUpdate();
    
   if(j==1)
       {%>
       <script>alert("congrats! query updated successfully ..")</script>
       <%@include file='admin.jsp' %>
       <%
     
}
%>