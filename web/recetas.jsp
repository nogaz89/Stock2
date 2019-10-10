<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="ventor/bootstrap/css/bootstrap.min.css">    
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/estilosRecetas.css">
    <link rel="stylesheet" href="ventor/select2/css/select2.min.css">
    <title>Control de Stock</title>
</head>

<body>
    <div class="container cuerpo">
        <div class="row header">
            <div class="col-2">
                <img class="logo" src="Imagenes/Logo.png" alt="">
            </div>
            <div class="col-8" Id="titulo">
                <h1>RECETAS</h1>
            </div>
            <div class="col-2">
                <img class="logo" src="Imagenes/Logo.png" alt="">
            </div>
        </div>
        <div class="row nav">
            <div class="col-9">
            </div>
            <div class="col-12">
                <a class="btn btn-success" href="productos.jsp">STOCK</a>
                <a class="btn btn-success" href="movimientos.jsp">MOVIMIENTOS</a>
                <a class="btn btn-success" href="alta.jsp">ALTA PRODUCTOS</a>
                <a class="btn btn-primary" href="recetas.jsp">RECETAS</a>
            </div>
        </div>
    </div>
    <div class="container contenido">
        <div class="formulario">
            <form action="movimientosController">
                <div id="form">
                    <p>
                        Primero elegir el producto que se va a elaborar su receta. <br>
                        Luego elijo de a un ingrediente a la vez y toco en el boton Cargar. <br>
                        Si el ingrediente no se encuentra en la lista se debe agregar yendo a la p�gina <a
                            href=alta.jsp>Alta</a>
                    </p>
                    <label> Producto </label>                    
                    <select name="idProdVenta" class="cuadroProdVenta">
                    </select>
                    <br>
                    <br>
                    <label> Se elabora con el siguiente ingrediente: </label>
                    <br>
                    <select name="idProd" class="cuadroProd">
                    </select>
                    <br>
                    <br>
                    <label> Cantidad: </label>                    
                    <input type="number" >
                    <br>
                    <label> Tipo de unidad: </label>                    
                    <select name="idUnidad" class="cuadroUnidad">
                    </select>
                    
                </div>
            </form>
        </div>
    </div>

    <div class="container">
        <footer class="row">
            <div class="col-8"></div>
            <h5>?ChoppIn - Italia 953, San Miguel, Argentina.</h5>
        </footer>
    </div>

    <script src="ventor/jquery/jquery-3.4.1.min.js"></script>
    <script src="ventor/bootstrap/js/bootstrap.min.js"></script>
    <script src="scripts/recetasScript.js"></script>
    <script src="ventor/select2/js/select2.js"></script>
</body>

</html>