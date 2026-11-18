-- Crear tabla clientes
CREATE TABLE clientes(
    id_cliente SERIAL PRIMARY KEY,     -- es serial ya que es un valor numérico que va a ir incrementándose. Es la PK y es única.
    nombre VARCHAR(100) NOT NULL,      --VARCHAR(100) ya que es suficiente para escribir el nombre, y es texto.
    email VARCHAR(100) NOT NULL UNIQUE,--VARCHAR ya que se necesita texto para poder ingresar el mail, y puse UNIQUE para que no se repitan nunca los correos.
    perfil_bio TEXT,                   --elegí TEXT ya que es un tipo de texto largo sin límite, para poder escribir una BIO.
    fecha_registro DATE                --elegí date ya que debe indicar la fecha de registro.
  );

CREATE TABLE productos(
    id_producto SERIAL PRIMARY KEY,    -- Elijo serial porque es un número de ID y va a ir incrementando.
    descripcion VARCHAR(250) NOT NULL, --Texto largo que describe el producto
    precio DECIMAL(10,2) NOT NULL,     --valor numérico para el precio. Permite hasta 8 dígitos y dos decimales. No se elije FLOAT porque es importante la precisión de los decimales.
    esta_activo CHAR(2) NOT NULL       --Elegí CHAR ya que siempre van a ser dos caracteres los que describen si el producto está activo o no, SI o NO.
  );
