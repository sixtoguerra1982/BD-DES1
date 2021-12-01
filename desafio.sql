-- DESAFIO 1

-- crear base de datos
DROP DATABASE POSTS;

CREATE DATABASE POSTS;

\c posts;

CREATE TABLE posts (
  id INT,
  username VARCHAR(30),
  created_at DATE,
  contenido VARCHAR(80),
  descripcion VARCHAR,
  PRIMARY KEY(id)
);

--3.Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".
INSERT INTO posts(id, username, created_at, contenido,descripcion) VALUES (1,'Pamela','19/07/2021','hola mundo','soy un post de Pamela');
INSERT INTO posts(id, username, created_at, contenido,descripcion) VALUES (2,'Pamela','19/07/2021','hola mundo2','soy un post de Pamela2');
INSERT INTO posts(id, username, created_at, contenido,descripcion) VALUES (3,'Carlos','19/07/2021','hola mundo de carlos','soy un post de carlos');

-- 1.Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts.

CREATE TABLE comentarios (
  id SERIAL PRIMARY KEY,
  created_at_date DATE,
  created_at_hour TIME,
  contenido VARCHAR(100),
  post_id INT,
  FOREIGN KEY(post_id) REFERENCES posts(id)
);