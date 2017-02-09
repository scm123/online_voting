
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>:::voter section::</title>
        <style type="text/css">
            table
            {
               border: 1px solid brown; 
               background-color: darksalmon;
               position: absolute;
               top:120px;
               left:130px;
               width: 80%;
               height: 60%
            }
            th,tr{
                  border: 1px solid brown; 
                  background-color: lightgoldenrodyellow;
                  font-size:25px; 
                 }
                 h1{
                     color:brown;
                     position: absolute;
                     top:20px;
                     left:400px;
                 } 
                 .h31{
                     color:brown;
                     position: absolute;
                     top:50px;
                     left:1150px;   
                 }
                  .h32{
                     color:brown;
                     position: absolute;
                     top:50px;
                     left:150px;   
                 }
               h4
               {
                     color:darkblue;
               }
               .mr{
                     color: darkblue;
                   position: absolute;
                   top:510px;
               }
          
        </style>
    </head>
    <body>
        <h4>welcome <%=session.getAttribute("v_name")%> !</h4>
    <marquee class="mr"> welcome <%=session.getAttribute("v_name")%> !</marquee>
        <h1>Welcome To Online Voting System !</h1>
        <h3 class="h31"><a href='index.html'>Logout</h3>
        <h3 class="h32"><a href="password.html">Change password !</h3>
        <table >
            <tr>
                <th><a href="vote.html">Vote for Candidate</a></th>
                <th><a href="request.html">Send Request For Edit Info</a></th>
            </tr>
            <tr>
                <th><a href="result.jsp">View Result</a></th>
                <th><a href="viewCandidate.jsp">View Candidate</a></th>
            </tr>
            <tr>
                <th><a href="view_profile.jsp">See Profile</a></th>
                <th><a href="view_impdate.jsp">Important Dates</a></th>
            </tr>
        </table>
        
    </body>
</html>