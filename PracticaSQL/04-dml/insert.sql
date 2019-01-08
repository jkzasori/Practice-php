# INSERTAR NUEVOS REGISTROS #
INSERT INTO usuarios VALUES(null, 'MiNombre', 'MisApellidos', 'miemail@miemail.com', '1234', '2019-05-01');

# INSERTAR FILAS SOLO CON CIERTAS COLUMNAS #
INSERT INTO usuarios(email, password) VALUES('admin@admin.com', 'admin');