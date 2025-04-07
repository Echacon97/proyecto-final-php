document.addEventListener("DOMContentLoaded", function () {
  // Mapeo de países y sus ciudades correspondientes
  const countryCities = {
    "Guatemala": ["Guatemala City", "Antigua", "Quetzaltenango"],
    "Belize": ["Belize City", "San Ignacio", "Corozal"],
    "El Salvador": ["San Salvador", "Santa Ana", "San Miguel"],
    "Honduras": ["Tegucigalpa", "San Pedro Sula", "La Ceiba"],
    "Nicaragua": ["Managua", "León", "Granada"],
    "Costa Rica": ["San José", "Alajuela", "Heredia"],
    "Panamá": ["Panama City", "David", "Colón"]
  };

  const paisSelect = document.getElementById("pais");
  const ciudadSelect = document.getElementById("ciudad");
  const filterForm = document.getElementById("filterForm");
  const resultadosDiv = document.getElementById("resultados");
  const precioRange = document.getElementById("precio");
  const precioValue = document.getElementById("precioValue");

  // Cargar propiedades al inicio
  loadProperties();

  // Actualizar lista de ciudades según el país seleccionado
  paisSelect.addEventListener("change", function () {
    updateCities();
  });

  // Actualizar rango de precios dinámicamente
  precioRange.addEventListener("input", function () {
    precioValue.textContent = `0 - $${parseInt(this.value).toLocaleString()}`;
  });

  // Enviar el formulario al hacer cambios en los filtros
  filterForm.addEventListener("change", function () {
    loadProperties();
  });

  // También al hacer submit (por si acaso)
  filterForm.addEventListener("submit", function (e) {
    e.preventDefault();
    loadProperties();
  });

  function updateCities() {
    const selectedCountry = paisSelect.value;
    ciudadSelect.innerHTML = "";

    // Agregar la opción "Todos"
    const defaultOption = document.createElement("option");
    defaultOption.value = "todos";
    defaultOption.text = "Todos";
    ciudadSelect.appendChild(defaultOption);

    // Llenar las ciudades del país seleccionado
    if (selectedCountry !== "todos" && countryCities[selectedCountry]) {
      countryCities[selectedCountry].forEach(function (city) {
        const option = document.createElement("option");
        option.value = city;
        option.text = city;
        ciudadSelect.appendChild(option);
      });
    }
  }

  function loadProperties() {
    const formData = new FormData(filterForm);
    
    // Actualizar el rango de precios en el formData
    formData.set('precio', `0-${precioRange.value}`);

    fetch("search.php", {
      method: "POST",
      body: formData
    })
      .then((response) => response.text())
      .then((data) => {
        resultadosDiv.innerHTML = data;
      })
      .catch((error) => console.error("Error:", error));
  }
});
// Manejar carga de imágenes
document.addEventListener('DOMContentLoaded', function() {
  const images = document.querySelectorAll('.property-image');
  
  images.forEach(img => {
      // Forzar recarga para obtener imagen diferente
      const newUrl = img.src.split('&sig=')[0] + '&sig=' + Date.now();
      
      // Crear nueva imagen para precargar
      const tempImg = new Image();
      tempImg.src = newUrl;
      
      tempImg.onload = function() {
          img.src = newUrl;
          img.classList.add('loaded');
      };
      
      tempImg.onerror = function() {
          // Fallback si hay error
          img.src = 'https://via.placeholder.com/600x400?text=Propiedad';
          img.classList.add('loaded');
      };
  });
});