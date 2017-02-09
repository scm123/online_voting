<%@include file="Connection.jsp" %>
    <html>
    <head>
                <title>::: Voters Details ::</title>
        <style>
            .t1{
                            color:#292931;
                background-color: appworkspace;
            }
            td
          {
              width: 300px;
              color: darkblue;
          }
          .k{
              color:darkblue;
               text-decoration: underline;
          }
            body{
            
                background-color:lightgoldenrodyellow;
                font-size: 20px;
              color: #292931;
            }
            </style>
    </head>
    <body>
        <h3 class="k">Candidates Details !</h3>
        <div>
            <table border='2' onmouseup="true" >
    <tr class='t1' >
    <td>ID</td>
    <td>NAME</td>
    <td>FATHER NAME</td>
    <td>AGE</td>
    <td>CITY</td>
    <td>STREET</td>
    
    </tr>
    <%
   
    String query="select * from voter order by voter_name";
    PreparedStatement stmt=con.prepareStatement(query);
    ResultSet rs=stmt.executeQuery(query);
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
