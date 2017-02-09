<%@include file="Connection.jsp" %>

<%
    String s1=request.getParameter("vid");
    String s2=request.getParameter("vname");
    String s3=request.getParameter("fname"); 
    String s4=request.getParameter("age1");
    String s5=request.getParameter("vcity");   
    String s6=request.getParameter("vstreet");
    String s7=request.getParameter("password");
    
    
   String query= "insert into voter values(?,?,?,?,?,?,?)";
   String query1="insert into login values(?,?,?,?)";
   String q="select *from voter";
      
   PreparedStatement ps = con.prepareStatement(query);
   PreparedStatement ps1 = con.prepareStatement(query1);
   PreparedStatement ps2=con.prepareStatement(q);
   
   ResultSet rs=ps2.executeQuery();
   int flag=0;
   
   while(rs.next())
   {
    if(s1.equals(rs.getString(6)) || s2.equals(rs.getString(1))&& s3.equals(rs.getString(2)) && s4.equals(rs.getString(3)) && s5.equals(rs.getString(4)) && s6.equals(rs.getString(5)) && s7.equals(rs.getString(7))  )
    { 
        flag=1;
      %>
          <script>
              alert("Voter  already registered !");
          </script>
      <%@include file="addVoter.html" %>
      <%
    }
    
   }
   
int i=0;
if(flag==0)
 {
     ps.setString(1,s2);
     ps.setString(2,s3);
     ps.setString(3,s4);  
     ps.setString(4,s5);
     ps.setString(5,s6);
     ps.setString(6,s1);
     ps.setString(7,s7);
  
     ps1.setString(1,s1);
     ps1.setString(2,s7);
     ps1.setString(3,"voter"); 
     ps1.setString(4,s2);
     
   ps.executeUpdate();
  i= ps1.executeUpdate();
 }
if(i==1)
{
    %>
<script>
    alert("voter successfully added");
</script>
<%@include file="addVoter.html" %>
<%
}
%>    
