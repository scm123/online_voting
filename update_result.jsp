<%@include file="Connection.jsp" %>
<%  
String s1=request.getParameter("postE");
String s2=request.getParameter("dat");
String s3=request.getParameter("postD");
String query="";
int i=0;

 String q="select *from result";

 PreparedStatement ps1=con.prepareStatement(q);
 ResultSet rs= ps1.executeQuery();

 if( (s1.isEmpty() && !s2.isEmpty() && !s3.isEmpty())||( !s1.isEmpty() && s2.isEmpty() && !s3.isEmpty()) || (!s1.isEmpty() && !s2.isEmpty() && !s3.isEmpty()) )
   {  i=3;   %>
      <script>
       alert("plz fill the right one !");
      </script>    
      <%@include file="update_result.html" %>
    <%
   }
else{
while(rs.next())
   { 
   if(s1.equals(rs.getString(1)))
    {i=3; %>    
          <script>
            alert("Duplicate Entry !");
          </script>    
      <%@include file="update_result.html" %>
    <%} 
   }
 }
    if( !s1.isEmpty() && !s2.isEmpty() && i!=3 )
    {
        query="insert into result values (?,?)";
        PreparedStatement ps= con.prepareStatement(query);
      
        ps.setString(1,s1);
        ps.setString(2,s2);
       
         ps.executeUpdate();
          
     } 
  
  if(!s3.isEmpty() )
     { 
    query="delete from result where post=?";
    PreparedStatement ps= con.prepareStatement(query);
    ps.setString(1,s3);
     ps.executeUpdate();
     }  

%>
<%@include file="update_result.html" %>