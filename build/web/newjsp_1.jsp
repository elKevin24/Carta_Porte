<%-- 
    Document   : newjsp
    Created on : 19/05/2021, 04:02:07 PM
    Author     : kcordon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
          
      
        
    </head>
    <body>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.6/jspdf.plugin.autotable.min.js"></script>  
<style>  
th, td {  
    text - align: center;  
    border: 1 px solid black;  
    border - collapse: collapse;  
}  
</style>  
<center>  
    <h2>TOTAL MARKS OF STUDENTS</h2>  
    <br />  
    <table id="simple_table">  
        <tr>  
            <th>Roll No.</th>  
            <th>Name</th>  
            <th>Marks</th>  
        </tr>  
        <tr>  
            <td>1</td>  
            <td>Anna</td>  
            <td>85</td>  
        </tr>  
        <tr>  
            <td>2</td>  
            <td>Bhavesh</td>  
            <td>72</td>  
        </tr>  
        <tr>  
            <td>3</td>  
            <td>Sandhya</td>  
            <td>63</td>  
        </tr>  
        <tr>  
            <td>4</td>  
            <td>Rohan</td>  
            <td>90</td>  
        </tr>  
        <tr>  
            <td>5</td>  
            <td>Leena</td>  
            <td>82</td>  
        </tr>  
        <tr>  
            <td>6</td>  
            <td>Nayan</td>  
            <td>56</td>  
        </tr>  
    </table>  
    <br />  
    <input type="button" onclick="generate()" value="Export To PDF" />  
</center>  
<script type="text/javascript">  
function generate() {  
    var doc = new jsPDF('p', 'pt', 'letter');  
    var htmlstring = '';  
    var tempVarToCheckPageHeight = 0;  
    var pageHeight = 0;  
    pageHeight = doc.internal.pageSize.height;  
    specialElementHandlers = {  
        // element with id of "bypass" - jQuery style selector  
        '#bypassme': function(element, renderer) {  
            // true = "handled elsewhere, bypass text extraction"  
            return true  
        }  
    };  
    margins = {  
        top: 150,  
        bottom: 60,  
        left: 40,  
        right: 40,  
        width: 600  
    };  
    var y = 20;  
    doc.setLineWidth(2);  
    doc.text(200, y = y + 30, "TOTAL MARKS OF STUDENTS");  
    doc.autoTable({  
        html: '#simple_table',  
        startY: 70,  
        theme: 'grid',  
        columnStyles: {  
            0: {  
                cellWidth: 180,  
            },  
            1: {  
                cellWidth: 180,  
            },  
            2: {  
                cellWidth: 180,  
            }  
        },  
        styles: {  
            minCellHeight: 40  
        }  
    })  
    doc.save('CartaPorte.pdf');  
}  
</script>  
        
    </body>
</html>
