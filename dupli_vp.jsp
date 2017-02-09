<% 
String query="select *from vote2";
String s1="candidate1";
String s2="candidate2";
String s3="candidate3";
int c1=0,c2=0,c3=0;
PreparedStatement ps=con.prepareStatement(query);
ResultSet rs=ps.executeQuery();

while(rs.next())
{
   if( s1.equals(rs.getString(1)) )
       c1++;
   else if( s2.equals(rs.getString(1)) )
       c2++;
   else if( s3.equals(rs.getString(1)) )
       c3++;

}

%>
<html>
    <head>
  
             <style>
            .t1{
                color:#292931;
                background-color: appworkspace;
                width: 100%;
            }
            td
             {
              width: 500px;
              color: darkblue;
              }
              h2{
                  
                  position: relative;
                  left:320px;
                  color: darkblue;
              }
         
            body{
                position: absolute;
                left:200px;
                top:100px;
                background-color:lightgoldenrodyellow;
                font-size: 20px;
              color: #292931;
            }
            </style>
    </head>
    <body>
        <h2> Vote Status Of Candidates !</h2>
        <table border='2' onmouseup="true" >
    <tr class='t1' >
         <td>Vice President Candidate's Name</td>
         <td>Total Votes</td>  
    </tr>
    <tr>
        <td>Candidate1</td>
        <td><%=c1 %></td>
    </tr>
     <tr>
        <td>Candidate2</td>
        <td><%=c2 %></td>
    </tr>
    <tr>
        <td>Candidate3</td>
        <td><%=c3 %></td>
    </tr>   
 
    </body>
</html>
