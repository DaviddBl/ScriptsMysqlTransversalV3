
CREATE TABLE roles (
    id_rol INT NOT NULL,
    nombre_rol VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_rol)
);


CREATE TABLE generos_musicales (
    id_genero INT NOT NULL,
    nombre_genero VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_genero)
);


CREATE TABLE lugares (
    id_lugar INT NOT NULL,
    nombre_lugar VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_lugar)
);

CREATE TABLE usuarios (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    correo_electronico VARCHAR(50) NOT NULL,
    contrasena VARCHAR(50) NOT NULL,
    id_rol INT NOT NULL,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

CREATE TABLE eventos (
    id_evento INT NOT NULL AUTO_INCREMENT,
    artista_evento VARCHAR(50) NOT NULL,
    nombre_evento VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    id_lugar INT NOT NULL,
    id_genero INT NOT NULL,
    promotor INT NOT NULL,
    num_entradas INT NOT NULL,
    precio_entrada DECIMAL(8, 2) NOT NULL,
    url_imagen VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_evento),
    FOREIGN KEY (id_lugar) REFERENCES lugares(id_lugar),
    FOREIGN KEY (id_genero) REFERENCES generos_musicales(id_genero),
    FOREIGN KEY (promotor) REFERENCES usuarios(id_usuario)
);


