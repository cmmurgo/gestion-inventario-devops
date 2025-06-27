CREATE TABLE usuario (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  clave VARCHAR(255) NOT NULL,
  rol VARCHAR(50) NOT NULL DEFAULT 'user',
  fecha_baja TIMESTAMP
);

INSERT INTO usuario (id,nombre, email, clave, rol, fecha_baja)
VALUES (1, 'Admin', 'admin@test.com',
        '$2b$10$ykGbEhacKHtjT94O/X0mxeg2ypCqwcW.hJEPegTBODw173WfwiwsO', 'admin', null);
