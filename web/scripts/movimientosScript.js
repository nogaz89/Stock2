$(document).ready(function () {
    $("#titulo").append("<h1>MOVIMIENTOS</h1>");
    getTiposMovimientos();
    getProductos();
});
function getTiposMovimientos() {
    $.ajax({
        type: "post",
        url: "movimientos?action=getTiposMovimientos",
        async: true,
        cache: false,
        dateType: "json",
        success: function (resp) {
            console.log("respuesta de movimientosController: " + resp);
            $(".cuadroMov").html("");
            for (let valor of resp) {
                $(".cuadroMov").append('<option value= ' + valor.idMovimiento + '>' + valor.movimiento + '</option>');
            }
            $(".cuadroMov").select2();
        }
    });
}
function getProductos() {
    $.ajax({
        type: "post",
        url: "productosController",
        async: true,
        cache: false,
        dateType: "json",
        success: function (resp2) {
            console.log("respuesta de productosController" + resp2);
            $(".cuadroProd").html("");
            for (let valor of resp2) {
                $(".cuadroProd").append('<option value="' + valor.IdProducto + '">' + valor.Nombre + '</option>');
            }
            $(".cuadroProd").select2({
                heigth: 500
            });
        }
    });
}

