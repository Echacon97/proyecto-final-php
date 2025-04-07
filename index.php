<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Venta de Casas - Bienes Raíces</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <aside class="sidebar">
      <h2>Filtros</h2>
      <form id="filterForm">
        <div class="filter-group">
          <label for="pais"><i class="fas fa-globe-americas"></i> País:</label>
          <select name="pais" id="pais">
            <option value="todos">Todos los países</option>
            <option value="Guatemala">Guatemala</option>
            <option value="Belize">Belize</option>
            <option value="El Salvador">El Salvador</option>
            <option value="Honduras">Honduras</option>
            <option value="Nicaragua">Nicaragua</option>
            <option value="Costa Rica">Costa Rica</option>
            <option value="Panamá">Panamá</option>
          </select>
        </div>
        <div class="filter-group">
          <label for="ciudad"><i class="fas fa-city"></i> Ciudad:</label>
          <select name="ciudad" id="ciudad">
            <option value="todos">Todas las ciudades</option>
          </select>
        </div>
        <div class="filter-group">
          <label for="precio"><i class="fas fa-dollar-sign"></i> Rango de Precios: <span id="precioValue">0 - $150,000</span></label>
          <input type="range" id="precio" name="precio" min="0" max="150000" step="500" value="150000">
        </div>
        <div class="filter-group">
          <label for="tipo"><i class="fas fa-home"></i> Tipo de Propiedad:</label>
          <select name="tipo" id="tipo">
            <option value="todos">Todos los tipos</option>
            <option value="Casa">Casa</option>
            <option value="Apartamento">Apartamento</option>
            <option value="Condominio">Condominio</option>
          </select>
        </div>
        <div class="filter-group">
          <button id="buscarBtn" type="submit"><i class="fas fa-search"></i> BUSCAR</button>
        </div>
      </form>
    </aside>
    <main class="content">
      <h2><i class="fas fa-search"></i> Resultados de la Búsqueda</h2>
      <div id="resultados">
        <!-- Resultados aparecerán aquí -->
      </div>
    </main>
  </div>
  <script src="script.js"></script>
</body>
</html>