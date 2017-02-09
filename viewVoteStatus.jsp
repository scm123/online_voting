<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>::vote status ::</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .b1{
                position: absolute;
                top:220px;
                left:650px;
                width:150px;
                    
               }
               .m1{
                 position: absolute;
                top:200px;
                left:400px;
                width:250px                  
               }
            
            .b2{
                 position: absolute;
                top:270px;
                 left:650px;
                width:150px               
               }
               .m2{
                 position: absolute;
                top:250px;
                left:400px;
                width:250px                  
               }
            
            .b3{
                 position: absolute;
                top:320px;
                left:650px;
                width:150px               
               }
               
               .m3{
                 position: absolute;
                top:300px;
                left:400px;
                width:250px                  
               }
               
                .b4{
                 position: absolute;
                top:370px;
                left:650px;
                width:150px               
               }
               
               .m4{
                 position: absolute;
                top:350px;
                left:400px;
                width:250px                  
               }
               h2{
                position: absolute;
                top:90px; 
                left:460px;
                width:350px       
               }
               body{
                   background-color:antiquewhite ;
                   color: #303366;
              }
              input[type='button']
              {
                  color: #303366;
              }
        </style>
      
    </head>
    <body>
        <h2>View Votes/Update Result !</h2>
        <input type="button" class='b1'  value="Click Here" onclick="location.href='view_president_vote.jsp';" /><h4 class='m1'>View President Vote Status</h4>  
        <input type="button" class='b2' value="Click Here"  onclick="location.href='view_vicepresident_vote.jsp';"><h4 class='m2'>View Vice President Vote Status </h4>
        <input type="button" class='b3' value="Click Here"  onclick="location.href='view_secretary_vote.jsp';"><h4 class="m3">View Secretary Vote Status</h4>
        <input type="button" class='b4' value="Click Here"  onclick="location.href='update_result.html';"><h4 class="m4">Update Result !</h4>
        
    </body>
</html>
