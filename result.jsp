<%@include file="Connection.jsp" %>

<html>
    <head>
                <title>::: Election Result ::</title>
        <style>
            .t1{
                            color:#292931;
                background-color: appworkspace;
            }
            td
          {
              width: 500px;
              color: darkblue;
          }
          .k{
              position:relative;
               left: 420px;
              color:darkblue;
               text-decoration: underline;
          }
            body{
               position:absolute;
               left: 150px;
             
                background-color:lightgoldenrodyellow;
                font-size: 20px;
              color: #292931;
            }
            .tb1
            {
                height: 50%
            }
            </style>

  
<%  
int c=0;
 String q="select *from result";

 PreparedStatement ps1=con.prepareStatement(q);
 ResultSet rs1= ps1.executeQuery();


   
   
    
 %>
    </head>
    <body>
        <h3 class="k">Important Dates !</h3>
        <div>
            <table class="tb1" border='2' onmouseup="true" >
    <tr class='t1' >
    <td>ELECTION</td>
    <td>Winner </td>
    
    
    </tr>
    <%
   
    while(rs1.next())
    {

    %>
    <tr>
        <td><%=rs1.getString("post") %></td>
        <td><%=rs1.getString("winner") %></td>
        
    
    </tr>
            <%
        if(rs1.getString("post").equalsIgnoreCase("president"))
          {%> <%@include file="dupli_p.jsp" %>  <%}
             else  if(rs1.getString("post").equalsIgnoreCase("vice president"))
                  {%> <%@include file="dupli_vp.jsp" %>  <%}
                    else  if(rs1.getString("post").equalsIgnoreCase("secretary"))
                                 {%> <%@include file="dupli_s.jsp" %>  <%}
    }
    %>
   
    </table></div>
 

    </body>
    </html> 

