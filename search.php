<?php
require_once 'connection.php';

// Verificar conexión
if (!isset($conn) || $conn->connect_error) {
    die("<div class='error-message'>Error de conexión a la base de datos</div>");
}

// Obtener parámetros
$pais = $_POST['pais'] ?? 'todos';
$ciudad = $_POST['ciudad'] ?? 'todos';
$precio = $_POST['precio'] ?? '0-150000';
$tipo = $_POST['tipo'] ?? 'todos';

// Procesar precio
$precio = explode('-', $precio);
$precio_min = (int)$precio[0];
$precio_max = (int)($precio[1] ?? 150000);

// Construir consulta
$sql = "SELECT * FROM houses WHERE 1=1";
if ($pais !== 'todos') $sql .= " AND pais = '" . $conn->real_escape_string($pais) . "'";
if ($ciudad !== 'todos') $sql .= " AND ciudad = '" . $conn->real_escape_string($ciudad) . "'";
if ($tipo !== 'todos') $sql .= " AND tipo = '" . $conn->real_escape_string($tipo) . "'";
$sql .= " AND precio BETWEEN $precio_min AND $precio_max";

// Ejecutar consulta
$result = $conn->query($sql);

if (!$result) {
    die("<div class='error-message'>Error en la consulta: " . $conn->error . "</div>");
}

// Mostrar resultados
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Generar imagen de placeholder con texto descriptivo
        $imageText = urlencode($row['tipo'] . ' ' . $row['ciudad']);
        $imageUrl = "https://via.placeholder.com/600x400/cccccc/969696?text=" . $imageText;
        
        echo '<div class="property-card">';
        echo '  <img src="' . $imageUrl . '" alt="' . htmlspecialchars($row['tipo']) . '" class="property-image">';
        echo '  <div class="property-info">';
        echo '    <h3>' . htmlspecialchars($row['tipo']) . ' en ' . htmlspecialchars($row['ciudad']) . '</h3>';
        echo '    <p><i class="fas fa-map-marker-alt"></i> ' . htmlspecialchars($row['direccion']) . '</p>';
        echo '    <p><i class="fas fa-phone"></i> ' . htmlspecialchars($row['telefono']) . '</p>';
        echo '    <p><i class="fas fa-tag"></i> $' . number_format($row['precio']) . '</p>';
        echo '  </div>';
        echo '</div>';
    }
} else {
    echo '<div class="no-results">No se encontraron propiedades con los filtros seleccionados</div>';
}

$conn->close();
?>