-- Crear la base de datos y usarla
CREATE DATABASE IF NOT EXISTS realestate;
USE realestate;

-- Crear la tabla de propiedades
CREATE TABLE IF NOT EXISTS houses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  direccion VARCHAR(255) NOT NULL,
  ciudad VARCHAR(100) NOT NULL,
  pais VARCHAR(100) NOT NULL,
  telefono VARCHAR(50),
  codigo_postal VARCHAR(50),
  precio INT,
  tipo VARCHAR(50),
  foto VARCHAR(255)
);

-- Insertar datos de ejemplo
INSERT INTO houses (direccion, ciudad, pais, telefono, codigo_postal, precio, tipo, foto) VALUES
-- Guatemala City
('Avenida Reforma 123', 'Guatemala City', 'Guatemala', '50212345678', '01001', 55000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa1'),
('Zona 10, Calle F', 'Guatemala City', 'Guatemala', '50298765432', '01010', 75000, 'Apartamento', 'https://via.placeholder.com/300x200?text=Casa2'),
('Boulevard Los Próceres', 'Guatemala City', 'Guatemala', '50255512345', '01002', 65000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa3'),
('Calle Martí 45', 'Guatemala City', 'Guatemala', '50233334444', '01003', 80000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa4'),

-- Belize City
('George Street 101', 'Belize City', 'Belize', '50111122345', '00101', 50000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa5'),
('Princess Margaret Dr 202', 'Belize City', 'Belize', '50155566778', '00102', 40000, 'Apartamento', 'https://via.placeholder.com/300x200?text=Casa6'),
('Albert Street 303', 'Belize City', 'Belize', '50122233445', '00103', 65000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa7'),
('Barracks Road 404', 'Belize City', 'Belize', '50199988877', '00104', 70000, 'Condominio', 'https://via.placeholder.com/300x200?text=Casa8'),

-- San Salvador
('Zona Rosa 12', 'San Salvador', 'El Salvador', '50311112222', '11001', 60000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa9'),
('Colonia Escalón 45', 'San Salvador', 'El Salvador', '50333334444', '11002', 90000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa10'),
('Boulevard Constitución 78', 'San Salvador', 'El Salvador', '50355556666', '11003', 65000, 'Apartamento', 'https://via.placeholder.com/300x200?text=Casa11'),
('Colonia San Benito 90', 'San Salvador', 'El Salvador', '50377778888', '11004', 75000, 'Condominio', 'https://via.placeholder.com/300x200?text=Casa12'),

-- Tegucigalpa
('Avenida Paz 33', 'Tegucigalpa', 'Honduras', '50411112222', '22001', 55000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa13'),
('Colonia Miraflores 78', 'Tegucigalpa', 'Honduras', '50433334444', '22002', 95000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa14'),
('Boulevard Suyapa 123', 'Tegucigalpa', 'Honduras', '50455556666', '22003', 70000, 'Apartamento', 'https://via.placeholder.com/300x200?text=Casa15'),
('Residencial El Hatillo 89', 'Tegucigalpa', 'Honduras', '50477778888', '22004', 85000, 'Condominio', 'https://via.placeholder.com/300x200?text=Casa16'),

-- Managua
('Colonial Los Robles', 'Managua', 'Nicaragua', '50511112222', '44001', 60000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa17'),
('Villa Fontana 45', 'Managua', 'Nicaragua', '50533334444', '44002', 50000, 'Apartamento', 'https://via.placeholder.com/300x200?text=Casa18'),
('Altamira 78', 'Managua', 'Nicaragua', '50555556666', '44003', 75000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa19'),
('Villa Reconciliación 90', 'Managua', 'Nicaragua', '50577778888', '44004', 70000, 'Condominio', 'https://via.placeholder.com/300x200?text=Casa20'),

-- San José
('Barrio Escalante 12', 'San José', 'Costa Rica', '50611112222', '50101', 70000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa21'),
('Sabanilla 45', 'San José', 'Costa Rica', '50633334444', '50102', 80000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa22'),
('Curridabat 78', 'San José', 'Costa Rica', '50655556666', '50103', 90000, 'Apartamento', 'https://via.placeholder.com/300x200?text=Casa23'),
('La Uruca 90', 'San José', 'Costa Rica', '50677778888', '50104', 85000, 'Condominio', 'https://via.placeholder.com/300x200?text=Casa24'),

-- Panama City
('Calle Uruguay 123', 'Panama City', 'Panamá', '50711112222', '07001', 95000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa25'),
('Avenida Balboa 45', 'Panama City', 'Panamá', '50733334444', '07002', 80000, 'Apartamento', 'https://via.placeholder.com/300x200?text=Casa26'),
('El Cangrejo 78', 'Panama City', 'Panamá', '50755556666', '07003', 70000, 'Casa', 'https://via.placeholder.com/300x200?text=Casa27'),
('Costa del Este 90', 'Panama City', 'Panamá', '50777778888', '07004', 75000, 'Condominio', 'https://via.placeholder.com/300x200?text=Casa28');
