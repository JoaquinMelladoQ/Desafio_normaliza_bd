CREATE DATABASE libros;

\c libros;

CREATE TABLE libros(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    titulo VARCHAR(50)
);

CREATE TABLE editoriales_libros(
    libros_id INT NOT NULL,
    FOREIGN KEY (libros_id)
    REFERENCES libros (id),
    editoriales_id INT NOT NULL,
    FOREIGN KEY (editoriales_id)
    REFERENCES editoriales (id)
);

CREATE TABLE editoriales(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE lectores(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE prestamos(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    fecha_devo DATE NOT NULL,
    libros_id INT NOT NULL,
    FOREIGN KEY (libros_id)
    REFERENCES libros (id),
    lectores_id INT NOT NULL,
    FOREIGN KEY (lectores_id)
    REFERENCES lectores (id)
);


CREATE TABLE autores(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE autores_libros(

);
