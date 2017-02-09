
<%@include file="Connection.jsp" %>

<%
    int i=0;
    String s1=(String)session.getAttribute("voter_id");
    String s2=request.getParameter("vname");
    String s3=request.getParameter("fname"); 
    String s4=request.getParameter("age1");
    String s5=request.getParameter("vcity");   
    String s6=request.getParameter("vstreet");
    String s7=request.getParameter("des");
    
   String query= "insert into request values(?,?,?,?,?,?,?)";
   
   
   PreparedStatement ps=con.prepareStatement(query);
   
   
   ps.setString(1,s1);
   ps.setString(2,s2);
   ps.setString(3,s3);  
   ps.setString(4,s4);
   ps.setString(5,s5);
   ps.setString(6,s6);
   ps.setString(7,s7);
  
   i= ps.executeUpdate();
   if(i==1)
   {%>
        <script>
             alert("request sucessfully sent !!! ") ;
        </script>
       
        <%@include file="request.html" %>   
   <%
   }
  else
   {
      %>
        <script>
             alert("Sorry your request hasn't sent due to some technical problem !!! ") ;
        </script>
       
        <%@include file="request.html" %>   
   <%
   }
   
%>    
 
