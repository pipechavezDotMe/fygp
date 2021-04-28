<html><head><meta charset="utf-8"> </head>
<body>
<?php
$link = mysqli_connect("localhost", "root", "", "fygp");

/* verificar la conexión */
if (mysqli_connect_errno()) {
    printf("Conexión fallida: %s\n", mysqli_connect_error());
    exit();
}

if ($result = mysqli_query($link, "SELECT id, ids FROM app_proyecto ORDER BY id")) {

    /* determinar el número de filas del resultado */
    $row_cnt = mysqli_num_rows($result);

    printf("El resultado tiene %d filas.\n", $row_cnt);

    /* cerrar el resulset */
    mysqli_free_result($result);
}

/* cerrar la conexión */
mysqli_close($link);
?>
</body></html>
