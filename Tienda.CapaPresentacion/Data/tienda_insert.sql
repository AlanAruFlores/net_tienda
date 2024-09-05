use tienda_bd;

insert into usuario(Nombres,Apellidos,Correo,Clave) values ('test nombre','test apellido','test@example.com','ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae');


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
('02', 'Córdoba'),
('03', 'Santa Fe');

-- Insertar Localidades
INSERT INTO LOCALIDAD(IdLocalidad, Descripcion, IdProvincia) 
VALUES 
-- Buenos Aires - Localidades
('0101', 'La Plata', '01'),
('0102', 'Mar del Plata', '01'),
-- Córdoba - Localidades
('0201', 'Córdoba Capital', '02'),
('0202', 'Villa María', '02'),
-- Santa Fe - Localidades
('0301', 'Santa Fe Capital', '03'),
('0302', 'Rosario', '03');

select * from provincia;
select * from localidad;
select * from usuario;
