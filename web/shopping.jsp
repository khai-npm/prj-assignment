<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SHOPPING TIMEE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            
            
            body {
                padding-left: 300px;
            }
            
            h1{
                padding-left: 150px;
            }
            
            img {
                padding-left: 20px;
            }
            
            .shop-button{
                 padding:8px;
                  border-radius: 5px;
                  background-color: #009999;
                  color: white;
                  margin-bottom: 20px;
            }
            
            .secl{
                 padding:8px;
                  padding-left: 100px;
                  padding-right: 100px;
                  border-radius: 5px;
                  margin-bottom: 20px;
                 
            }
            
            .allbox{
                margin-left: 100px;
            }
            
            
        </style>
    </head>
      <body>
        <h1>Welcome to Cloud Flower Farm - CFF</h1>
        <img src="https://cdn.discordapp.com/attachments/813598384506142730/1126985647383658618/image.png" alt="hoa" width="800" height="200">
        <form class="allbox" action="MainController" method="POST">
            <select class="secl" name="cmbFlower">
                <option value="F01-Coin Flower-20">Coin Flower-20$</option>
                <option value="F02-Sun Flower-30">Sun Flower-30$</option>
                <option value="F03-Daisy Flower-15">Daisy Flower-15$</option>
                <option value="F04-Rose Flower-50">Rose Flower-50$</option>
            </select>
            <select class="secl" name="cmbQuantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="10">10</option>
            </select>
           
            <input class="shop-button" type="submit" name="action" value="Add">
            <input class="shop-button" type="submit" name="action" value="View">
        </form>
        ${requestScope.MESSAGE}
    </body>
</html>

