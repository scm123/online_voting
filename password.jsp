<%@include file='Connection.jsp' %>
<%
    String s1=request.getParameter("vid");
        String s2=request.getParameter("pass");
            String s3=request.getParameter("repass");
            
    int j=0,i=0;
if(!s2.equals(s3))
{  
%>
<script>alert("not matched ,plz fill password correctly !")</script>
<%@include file='password.html' %>
<%
}
else
{
   
    String query="update login set password=? where voter_id= ? ";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,s2);
    ps.setString(2,s1);
    j=ps.executeUpdate();

    String query1="update voter set pass=? where voter_id= ? ";
    PreparedStatement ps1=con.prepareStatement(query1);
    ps1.setString(1,s2);
    ps1.setString(2,s1);
    ps1.executeUpdate();
    
   if(j==1)
       {%>
       <script>alert("congrats! password changed successfully ..")</script>
       <%@include file='index.html' %>
       <%
     }
}
%>