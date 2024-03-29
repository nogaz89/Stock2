<!-- @LopezGonzalo89 - Septiembre 2019-->

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/layout.css">    
    <link rel="stylesheet" href="css/estilosAlta.css">
    <link rel="stylesheet" href="vendor/select2/css/select2.min.css">
    
    <script src="vendor/jquery/jquery-3.4.1.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="scripts/AltaScript.js"></script>
    <script src="vendor/select2/js/select2.js"></script>
    
    <title>Control de Stock</title>
</head>

<body>
    <%@include file="templates/header.jsp" %>
    
    <div class="container contenido">
        <div class="formulario">
            <form action="Cargar" method="post">
                <div id="form">      
                    <br>                    
                    <label>Producto</label> &nbsp;
                    <input type="text" name="nombre" >
                    <br> 
                    <br>                                    
                    <label>Stock M�nimo</label> &nbsp;
                    <input type="number" name="minimo" id="cuadroMin"  /> &nbsp;&nbsp;
                    <br>
                    <label>Stock M�ximo</label> &nbsp;
                    <input type="number" name="maximo" id="cuadroMax"  /> &nbsp;&nbsp;
                    <br>                              
                    <br>        
                    <label>Unidad</label> &nbsp;
                    <select name="idUnidad" class="cuadroUnidad">
                    </select>
                    <br><br>    
                    <label>Categoria</label> &nbsp;
                    <select name="idCategoria" class="cuadroCat">
                    </select>
                    <br><br>
                    <input type="submit" class="btn btn-info" id="btnCargar" value="Cargar" />
                    
                </div>
            </form>
        </div>
        <h3> ${estado}</h3>
        <br>
    </div>

    <%@include file="templates/footer.jsp" %>    
    
</body>
</html>