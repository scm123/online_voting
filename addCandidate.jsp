<%@include file="Connection.jsp" %>
<%
    String s1=request.getParameter("cid");
    String s2=request.getParameter("cname");
    String s3=request.getParameter("fname"); 
    String s4=request.getParameter("age1");
    String s5=request.getParameter("ccity");   
    String s6=request.getParameter("cstreet");
    String s7=request.getParameter("cpost");
    
   String q="select *from Candidate";
   String query= "insert into Candidate values(?,?,?,?,?,?,?)";
   PreparedStatement ps=con.prepareStatement(query);
   PreparedStatement ps1=con.prepareStatement(q);
   
   ResultSet rs=ps1.executeQuery();
   int flag=0;
   while(rs.next())
   {
    if(s1.equals(rs.getString(1)) || s2.equals(rs.getString(2))&& s3.equals(rs.getString(3)) && s4.equals(rs.getString(4)) && s5.equals(rs.getString(5)) && s6.equals(rs.getString(6)) && s7.equals(rs.getString(7))  )
    { 
        flag=1;
      %>
          <script>
              alert("Candidate  already registered !");
          </script>
      <%@include file="addCandidate.html" %>
      <%
    }
    
   }
   int i=0;
if(flag==0)
{
   ps.setString(1,s1);
   ps.setString(2,s2);
   ps.setString(3,s3);  
   ps.setString(4,s4);
   ps.setString(5,s5);
   ps.setString(6,s6);
   ps.setString(7,s7);
  
  i= ps.executeUpdate();
}
 if(i==1)
  {
    %>
    <script>
         alert("Candidate successfully added");
    </script>
     <%@include file="addCandidate.html" %>
    <%
  }
%>  

