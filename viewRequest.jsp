<%@include file="Connection.jsp" %>
    <html>
    <head>
                <title>::: Request Details ::</title>
        <style>
            .t1{
                            color:#292931;
                background-color: appworkspace;
            }
          td
          {
              width: 300px;
          }
            body{
                position: center;
                background-color:lightgoldenrodyellow;
                font-size: 20px;
              color: #292931;
            }
            </style>
    </head>
    <body>
        <div>
            <table border='2' onmouseup="true" >
    <tr class='t1' >
    <td>ID</td>
    <td>NAME</td>
    <td>FATHER NAME</td>
    <td>AGE</td>
    <td>CITY</td>
    <td>STREET</td>
    <td>DESCRIPTION</td>
    </tr>
    <%
   
    String query="select * from request";
    PreparedStatement stmt=con.prepareStatement(query);
    ResultSet rs=stmt.executeQuery(query);
    while(rs.next())
    {

    %>
    <tr>
        <td><%=rs.getString("voter_id") %> </td>
        <td><%=rs.getString("voter_name") %></td>
        <td><%=rs.getString("father_name") %></td>
        <td><%=rs.getString("age") %></td>
        <td><%=rs.getString("city") %></td>
        <td><%=rs.getString("street") %></td>      
          <td><%=rs.getString("description") %></td>
    
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
