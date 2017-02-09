
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Connection.jsp" %>
    <html>
    <head>
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
                background-color:lightgoldenrodyellow;
                font-size: 20px;
              color: #292931;
            }
            </style>
    </head>
    <body>
        <div>
            <table border='2' onmouseup="true">
    <tr class='t1' >
    <td>ID</td>
    <td>NAME</td>
    <td>FATHER NAME</td>
    <td>AGE</td>
    <td>CITY</td>
    <td>STREET</td>
    <td>PASSWORD</td>
    </tr>
    <%
    String s=(String)session.getAttribute("voter_id");
    String query="select * from voter ";
    PreparedStatement stmt=con.prepareStatement(query);
   
    ResultSet rs=stmt.executeQuery(query);
    
    while(rs.next())
    {
   if(s.equals(rs.getString("voter_id")))
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
    %>
   
    </table></div>
        <%
        rs.close();
     
        con.close();
        
    %>

    </body>
    </html> 