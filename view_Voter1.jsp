
<%@include file="Connection.jsp" %>
<html>
 <head>
 <style>
            .t1{
                            color:#292931;
                background-color: appworkspace;
  
            }
            table{   position: absolute;
               top:80px;}
            td
          {
              width: 300px;
              color: darkblue;
          }
          .k{
              color:darkblue;
               text-decoration: underline;
               position: absolute;
               left:550px;
               top:10px;
          }
            body{
            
                background-color:lightgoldenrodyellow;
                font-size: 20px;
                color: #292931;
             
            }
            a{
               position: absolute;
               left:570px;
               top:150px;
            }
            </style>

      <%  
    String s=request.getParameter("grp");
        String t1=request.getParameter("name");
          String t2=request.getParameter("city");
            String t3=request.getParameter("id");
            int k=0;          
            
         PreparedStatement ps=null;   

  if( (s.equals("rd1")&& t1.trim().isEmpty())||(s.equals("rd2")&& t2.trim().isEmpty())|| (s.equals("rd3")&& t3.trim().isEmpty()) )  
      {k=7;
      %>  
      <script>alert("plz fill the right one!");</script>
      <%@include file="view_voter.html" %>
      <%
      }
  if((!t1.isEmpty() &&(!t2.isEmpty()||!t3.isEmpty()) ) || (!t2.isEmpty() &&(!t1.isEmpty()||!t3.isEmpty()) ) || (!t3.isEmpty() &&(!t2.isEmpty()||!t1.isEmpty()) ))
  {k=7; %>
          <script>alert("plz fill the one query!");</script>
         <a href="view_voter.html">Search Voters.........</a>
         <%
    }
   if( s.equals("rd1") && !t1.trim().isEmpty() && t2.isEmpty() && t3.isEmpty() )
     { 
        String query="select *from voter where voter_name=? ";
       ps=con.prepareStatement(query);
       ps.setString(1,t1);
    
     }
  else if( s.equals("rd2") && t1.trim().equals("") && !t2.isEmpty() && t3.equals("") )
    {
        String query="select *from voter where city=? ";
       ps=con.prepareStatement(query);
       ps.setString(1,t2);
    }
  else  if( s.equals("rd3") && t1.equals("") && t2.equals("") && !t3.isEmpty() )
   {
        String query="select *from voter where voter_id=? ";
        ps=con.prepareStatement(query);
       ps.setString(1,t3);
   }

if(k!=7){
  
%>
 </head>
     <body>
        <h3 class="k">Voter/Voters Details !</h3>
        <div>
   <table   border='2' onmouseup="true" >
    <tr class='t' >
        <td>ID</td>
         <td>NAME</td>
        <td>FATHER NAME</td>
        <td>AGE</td>
        <td>CITY</td>
        <td>STREET</td>
        <td>PASSWORD</td>
    
    </tr>

<%
    try{
  ResultSet rs=ps.executeQuery();
   while(rs.next())
    {

    %>
    <tr>
        <td><%=rs.getString("voter_id") %></td>
        <td><%=rs.getString("voter_name") %></td>
        <td><%=rs.getString("fathername") %></td>
        <td><%=rs.getString("age") %></td>
        <td><%=rs.getString("city") %></td>
        <td><%=rs.getString("street") %></td>
        <td><%=rs.getString("pass") %></td>
    
    </tr>
      <%
    }
  }
catch(Exception e)
{ ;
}
}
%>
    
   </table>
        </div>
</html> 
