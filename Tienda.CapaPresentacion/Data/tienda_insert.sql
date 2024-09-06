use tienda_bd;

insert into usuario(Nombres,Apellidos,Correo,Clave) values ('test nombre','test apellido','test@example.com','ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae');
INSERT INTO usuario (Nombres, Apellidos, Correo, Clave) VALUES
('Juan', 'P�rez', 'juan.perez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Ana', 'G�mez', 'ana.gomez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Luis', 'Mart�nez', 'luis.martinez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Marta', 'Fern�ndez', 'marta.fernandez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Carlos', 'Ram�rez', 'carlos.ramirez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Luc�a', 'Garc�a', 'lucia.garcia@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Pedro', 'Jim�nez', 'pedro.jimenez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Isabel', 'Moreno', 'isabel.moreno@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Fernando', 'S�nchez', 'fernando.sanchez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Elena', 'Romero', 'elena.romero@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('David', 'Morales', 'david.morales@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Laura', 'Hern�ndez', 'laura.hernandez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Jos�', 'G�mez', 'jose.gomez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Carmen', '�lvarez', 'carmen.alvarez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Ra�l', 'P�rez', 'raul.perez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Ana Mar�a', 'Serrano', 'anamaria.serrano@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Javier', 'Guerrero', 'javier.guerrero@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Sof�a', 'Castro', 'sofia.castro@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Alberto', 'Castillo', 'alberto.castillo@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Natalia', 'V�squez', 'natalia.vasquez@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
('Marcelo', 'Torres', 'marcelo.torres@example.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae');


/*Categorias de los productos*/
 insert into CATEGORIA(Descripcion) values 
 ('Tecnologia'),
 ('Muebles'),
 ('Dormitorio'),
 ('Deportes');


-- Insertar Marcas
INSERT INTO MARCA(Descripcion) 
VALUES 
('SONY'),
('HP'),
('LG'),
('HYUNDAI'),
('CANON'),
('ROBERTA ALLEN');

-- Insertar Provincias
INSERT INTO PROVINCIA(IdProvincia, Descripcion)
VALUES 
('01', 'Buenos Aires'),
('02', 'C�rdoba'),
('03', 'Santa Fe');

-- Insertar Localidades
INSERT INTO LOCALIDAD(IdLocalidad, Descripcion, IdProvincia) 
VALUES 
-- Buenos Aires - Localidades
('0101', 'La Plata', '01'),
('0102', 'Mar del Plata', '01'),
-- C�rdoba - Localidades
('0201', 'C�rdoba Capital', '02'),
('0202', 'Villa Mar�a', '02'),
-- Santa Fe - Localidades
('0301', 'Santa Fe Capital', '03'),
('0302', 'Rosario', '03');

select * from provincia;
select * from localidad;
select * from usuario;

select idUsuario,nombres,apellidos,correo,clave, reestablecer, activo from usuario;