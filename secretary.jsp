<%@include file="Connection.jsp" %>
<%
    String str=request.getParameter("btnName");
    int flag=0; int g=0; String st="";
    String s1=(String)session.getAttribute("voter_id");

    
    String qry = "insert into vote3 values(?,?)";
    PreparedStatement ps2 = con.prepareStatement(qry);
    
    String query="select *from vote3";
    PreparedStatement ps1 = con.prepareStatement(query);
    ResultSet rs = ps1.executeQuery();
    
    String q="select *from result"; 
     PreparedStatement ps3=con.prepareStatement(q);
     ResultSet rs1= ps3.executeQuery();
   while(rs1.next())
    {
        String s=rs1.getString(1);
     if(s.equalsIgnoreCase("secretary")) 
     {g=1;}
    }
 
   while(rs.next())
    {
         st=rs.getString(2);
       if( st.equals(s1) && g==0 )
        { flag=1;
         %><script>
                  alert("you already have given vote,Sorry ! you cann't vote again   !!! ")
          </script>     
          <%@include file="vote.html" %>
          <%
        }
    }
     
  if(flag==0 && g==0 )
 {
   ps2.setString(1,str);
   ps2.setString(2,s1);
         %>     
          <script>
                  alert("congrats ! you have sucessfully voted  !!! ")
          </script>     
          <%@include file="vote.html" %>
          <%

   ps2.executeUpdate();
 }
else if(flag==0 && g==1)
 {
   %>     
          <script>
                  alert("sorry! result is published you cann't vote now  !!! ");
          </script>     
          <%@include file="vote.html" %>
          <%
 }

%>    