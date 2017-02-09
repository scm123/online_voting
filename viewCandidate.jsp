

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Connection.jsp" %>
    <html>
    <head>
        <title>::: Candidates Details ::</title>
        <style>
            .t1{
                            color:#292931;
                background-color: appworkspace;
            }
            td
          {
              width: 300px;
              color: #303366;
          }
          h3{
              color: darkblue;
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
        <h3>Candidates Details !</h3>
        <div>
            <table border='2' onmouseup="true">
    <tr class='t1' >
    <td>ID</td>
    <td>NAME</td>
    <td>FATHER NAME</td>
    <td>AGE</td>
    <td>CITY</td>
    <td>STREET</td>
    <td>POST</td>
    </tr>
    <%
   
    String query="select * from Candidate";
    PreparedStatement stmt=con.prepareStatement(query);
    ResultSet rs=stmt.executeQuery(query);
    while(rs.next())
    {

    %>
    <tr>
        <td><%=rs.getString("Candidate_id") %></td>
        <td><%=rs.getString("name") %></td>
        <td><%=rs.getString("father") %></td>
        <td><%=rs.getString("age") %></td>
        <td><%=rs.getString("ccity") %></td>
        <td><%=rs.getString("cstreet") %></td>
        <td><%=rs.getString("post") %></td>
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