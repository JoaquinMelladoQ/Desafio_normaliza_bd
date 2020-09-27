CREATE DATABASE libros;

\c libros;

CREATE TABLE libros(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    titulo VARCHAR(50)
);

CREATE TABLE lectores(

);

CREATE TABLE prestamos(
    id INT NOT NULL UNIQUE PRIMARY KEY,
    libros_id INT,
    FOREIGN KEY (libros_id)
    REFERENCES libros (id)
);


CREATE TABLE editoriales_libros(

);

CREATE TABLE editoriales(

);

CREATE autores_libros(

);

CREATE TABLE autores(

);

