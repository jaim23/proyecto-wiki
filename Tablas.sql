CREATE TABLE IF NOT EXISTS tiempo (
  dia VARCHAR(100)
, mes VARCHAR(10)
, anno VARCHAR(100)
, id_tiempo INT
, hora VARCHAR(100)
, minutos VARCHAR(100)
, segundos VARCHAR(100)
, fecha TINYTEXT
, PRIMARY KEY (id_tiempo));

commit;

CREATE TABLE IF NOT EXISTS usuario (
  Nombre_usuario VARCHAR(255)
, Nombre_real VARCHAR(255)
, Total_ediciones INT
, id_usuario INT
, PRIMARY KEY (id_usuario));

commit;
CREATE TABLE IF NOT EXISTS articulo (
  Titulo VARCHAR(255)
, Categoria VARCHAR(21)
, Tamano INT
, id_articulo INT
, PRIMARY KEY (id_articulo));
commit;  
CREATE TABLE IF NOT EXISTS staginarticulo (
  page_id INT
, page_title VARCHAR(255)
, page_counter BIGINT
, id INT
, PRIMARY KEY (id));
commit;

CREATE TABLE IF NOT EXISTS staginuser (
  user_id INT
, user_name VARCHAR(255)
, nuevo_id INT
, PRIMARY KEY (nuevo_id));

commit;
CREATE TABLE IF NOT EXISTS stagintiempo (
  rc_id INT
, rc_timestamp TINYTEXT
, rc_cur_time TINYTEXT
, rc_user INT
, rc_title VARCHAR(255)
, rc_old_len INT
, rc_new_len INT
, id INT
, PRIMARY KEY (id));  

commit;
CREATE TABLE IF NOT EXISTS hechos (
  id_hecho INT(11) NOT NULL,
  id_usuario INT(11) NOT NULL,
  id_articulo INT(11) NOT NULL,
  id_tiempo INT(11) NOT NULL,
  num_ediciones BIGINT(20) NULL,
  num_bytes DOUBLE NULL,
  PRIMARY KEY (id_hecho, id_usuario, id_articulo, id_tiempo),
  CONSTRAINT fk_Hechos_Tiempo
    FOREIGN KEY (id_tiempo)
    REFERENCES tiempo (id_tiempo),
  CONSTRAINT fk_Hechos_Usuario
    FOREIGN KEY (id_usuario)
    REFERENCES usuario (id_usuario),
  CONSTRAINT fk_Hechos_Articulo
    FOREIGN KEY (id_articulo)
    REFERENCES articulo (id_articulo));
commit;

