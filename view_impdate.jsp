<%@include file="Connection.jsp" %>
    <html>
    <head>
                <title>::: Election Dates ::</title>
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
            </style>
    </head>
    <body >
        <h3 class="k">Important Dates !</h3>
        <div>
            <table border='2' onmouseup="true" >
    <tr class='t1' >
    <td>ELECTION</td>
    <td>DATE</td>
    
    
    </tr>
    <%
   
    String query="select * from impdates order by post";
    PreparedStatement stmt=con.prepareStatement(query);
    ResultSet rs=stmt.executeQuery(query);
    while(rs.next())
    {

    %>
    <tr>
        <td><%=rs.getString("post") %></td>
        <td><%=rs.getString("date") %></td>
        
    
    </tr>
            <%

    }
    %>
   
    </table></div>
        <%
        rs.close();
     
        con.close();
        
    %>

    </body>
    </html> 

