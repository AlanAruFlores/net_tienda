create database tienda_bd;
use tienda_bd;

create table categoria(
	idCategoria int primary key identity,
	descripcion text not null,
	activo bit default 1, -- Valor acepta 1 o 0 para boolean
	fecha datetime default getdate()
);



create table marca(
	idMarca int primary key identity,
	descripcion text not null,
	activo bit default 1, -- Valor acepta 1 o 0 para boolean
	fecha datetime default getdate()
);


create table producto(
	idProducto int primary key identity,
	nombre varchar(100),
	descripcion text,
	idMarca int references marca(idMarca),
	idCategoria int references categoria(idCategoria), --Foreign key
	precio decimal (10,2) default 0, 
	stock int,
	rutaImagen varchar(255),
	nombreImagen varchar(100),
	activo bit default 1,
	fecha datetime default getdate()
);


create table cliente(
	idCliente int primary key identity,
	nombre varchar(255),
	apellido varchar(255),
	correo varchar(255),
	clave varchar(100),
	reestablecer bit default 0,
	fecha datetime default getdate()
);

create table carrito(
	idCarrito int primary key identity,
	idCliente int references cliente(idCliente),
	idProducto int references producto(idProducto),
	cantidad int
);


create table venta(
	idVenta int primary key identity,
	idCliente int references cliente(idCliente),
	totalProducto int,
	montoTotal decimal(10,2),
	contacto varchar(100),
	idDistrito varchar(10), --indica que distrito quiere que le llegue al producto al cliente
	telefono varchar(50),
	direccion varchar(200),
	fecha datetime default getdate(), --Registro de cuando se hizo la venta
	idTransaccion varchar(100) --id de la transaccion de paypal, ese codigo identifica el pago de un producto
);

create table detalle_venta(
	idDetalleVenta int primary key identity,
	idVenta int references venta(idVenta),
	idProducto int references producto(idProducto),
	cantidad int,
	total decimal(10,2)
);
	

--El administrador
create table usuario(
	idUsuario int primary key identity,
	nombres varchar(255),
	apellidos varchar(255),
	correo varchar(100),
	clave varchar(100),
	reestablecer bit default 1,
	activo bit default 1,
	fecha datetime default getdate()
);


create table provincia(
	idProvincia varchar(2),
	descripcion varchar(45),
);


create table localidad(
	idLocalidad varchar(4),
	descripcion varchar(100),
	idProvincia varchar(2)
);