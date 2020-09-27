CREATE DATABASE libros;

\c libros;

CREATE TABLE libros(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    titulo VARCHAR(50)
);

CREATE TABLE lectores(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE prestamos(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    fecha_devo DATE NOT NULL,
    libros_id INT,
    FOREIGN KEY (libros_id)
    REFERENCES libros (id),
    lectores_id INT,
    FOREIGN KEY (lectores_id)
    REFERENCES lectores (id)
);


CREATE TABLE editoriales_libros(

);

CREATE TABLE editoriales(

);

CREATE autores_libros(

);

CREATE TABLE autores(

);

