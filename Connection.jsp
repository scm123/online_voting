<%@page  import="java.sql.*" %>
<%
    //load the driver
   Class.forName("com.mysql.jdbc.Driver"); 
    //establish the connection
    String url="jdbc:mysql://localhost:3306/onlinevoting";
    String user="root";
    String password="bhim";
    Connection con = (Connection)DriverManager.getConnection(url, user, password);
 
 %>   

