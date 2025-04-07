<?php
// Configuración para XAMPP
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "realestate";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Establecer el charset
$conn->set_charset("utf8mb4");

// Función para depuración (opcional)
function debug_db_error($conn) {
    error_log("Error MySQL: " . $conn->error);
    return "Error en la base de datos. Por favor intente más tarde.";
}
?>