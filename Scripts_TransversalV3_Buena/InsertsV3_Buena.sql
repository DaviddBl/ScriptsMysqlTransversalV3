INSERT INTO roles (id_rol, nombre_rol) VALUES
(1, 'Usuario Normal'),
(2, 'Usuario Promotor');

INSERT INTO generos_musicales (id_genero, nombre_genero) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Reggaeton'),
(4, 'Electrónica'),
(5, 'Hip-Hop'),
(6, 'Jazz'),
(7, 'Blues'),
(8, 'Clásica'),
(9, 'Metal'),
(10, 'Folk');

INSERT INTO lugares (id_lugar, nombre_lugar, ciudad) VALUES
(1, 'Estadio Nacional', 'Santiago'),
(2, 'Movistar Arena', 'Santiago'),
(3, 'Teatro Caupolicán', 'Santiago'),
(4, 'Teatro Municipal', 'Santiago'),
(5, 'Arena Monticello', 'Rancagua'),
(6, 'Casino Marina del Sol', 'Talcahuano');

INSERT INTO usuarios (nombre, correo_electronico, contrasena, id_rol) VALUES
('Juan Pérez', 'juanperez@mail.com', 'contraseña123', 1),
('María González', 'mariagonzalez@mail.com', 'contraseña456', 1),
('Pedro Fernández', 'pedrofernandez@mail.com', 'contraseña789', 2),
('Luisa Herrera', 'luisaherrera@mail.com', 'contraseña012', 2);

INSERT INTO eventos (artista_evento, nombre_evento, fecha, hora, id_lugar, id_genero, promotor, num_entradas, precio_entrada, url_imagen) VALUES
('Foo Fighters', 'Concierto de Foo Fighters', '2023-04-01', '20:00:00', 1, 1, 4, 1000, 35000, 'https://www.example.com/foo-fighters.jpg'),
('Shakira', 'Concierto de Shakira', '2023-05-15', '21:00:00', 2, 3, 4, 500, 50000, 'https://www.example.com/shakira.jpg'),
('The Weeknd', 'Concierto de The Weeknd', '2023-06-20', '20:30:00', 3, 2, 4, 800, 40000, 'https://www.example.com/the-weeknd.jpg'),
('Steve Aoki', 'Concierto de Steve Aoki', '2023-07-10', '22:00:00', 5, 4, 4, 1200, 45000, 'https://www.example.com/steve-aoki.jpg'),
('Guns N Roses', 'Concierto de Guns N Roses', '2023-08-30', '19:30:00', 6, 1, 4, 700, 60000, 'https://www.example.com/guns-n-roses.jpg');

