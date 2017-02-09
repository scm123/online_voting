<%@include file='Connection.jsp' %> 
<%
    int flag;
    String s1=request.getParameter("vnam");
    String s2=request.getParameter("fnam");
    String s3=request.getParameter("age");
    String s4=request.getParameter("city");    
    String s5=request.getParameter("street");
    String s6=request.getParameter("grp");  
 
    
   String userId = (String)session.getAttribute("userId");
   if(userId == null) {
      response.sendRedirect("index.html");%>
      <script>alert("hey man! you need to sign in again");</script> <%
   }

    
    if( s1.contains("1")||s1.contains("2")||s1.contains("3")||s1.contains("4")||s1.contains("5")||s1.contains("6")||s1.contains("7")||s1.contains("8")||s1.contains("9")||s1.contains("0")||s1.contains("!")||s1.contains("@")||s1.contains("#")||s1.contains("$")||s1.contains("%")||s1.contains("^")||s1.contains("&")||s1.contains("*")||s1.contains("(")||s1.contains(")")||s1.contains("_")||s1.contains("-")||s1.contains("+")||s1.contains("=")||s1.contains("`")||s1.contains("~")||s1.contains("/")||s1.contains(">")||s1.contains("<")||s1.contains("?")||s1.contains(",")||s1.contains("'")||s1.contains(":")||s1.contains(":")||s1.contains("[")||s1.contains("]")||s1.contains("{")||s1.contains("}")||s1.contains("(")||s1.contains(")")||s1.contains("|") )
    { flag=0;
         %> <script>alert("don't use these characters in  name!"); <%@include file="make_request.html" %></script><%
    }
   else if( s2.contains("1")||s2.contains("2")||s2.contains("3")||s2.contains("4")||s2.contains("5")||s2.contains("6")||s2.contains("7")||s2.contains("8")||s2.contains("9")||s2.contains("0")||s2.contains("!")||s2.contains("@")||s2.contains("#")||s2.contains("$")||s2.contains("%")||s2.contains("^")||s2.contains("&")||s2.contains("*")||s2.contains("(")||s2.contains(")")||s2.contains("_")||s2.contains("-")||s2.contains("+")||s2.contains("=")||s2.contains("`")||s2.contains("~")||s2.contains("/")||s2.contains(">")||s2.contains("<")||s2.contains("?")||s2.contains(",")||s2.contains("'")||s2.contains(":")||s2.contains(":")||s2.contains("[")||s2.contains("]")||s2.contains("{")||s2.contains("}")||s2.contains("(")||s2.contains(")")||s2.contains("|") )
    { flag=0;
         %> <script>alert("don't use these characters in  name!"); <%@include file="make_request.html" %></script><%
    }
   else{
    String query="insert into register values(?,?,?,?,?,?) ";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,s1);
    ps.setString(2,s2);
    ps.setString(3,s3);
    ps.setString(4,s4);
    ps.setString(5,s5);
    ps.setString(6,s6);   
    
   flag= ps.executeUpdate();
  
    if( flag==1  )
    {
        %> <script>alert("registered sucessfully !");</script>
        <%@include file="make_request.html" %>
        <%
            
    }
   else
     {
        %> <script>alert("Ooops !  there is some server problem ,wait some time !");</script>
        <%@include file="make_request.html" %>
        <%
     }
  }
     
 %>