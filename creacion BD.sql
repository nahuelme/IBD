create schema empresa_transporte;
use empresa_transporte;

create table provincia(							
idprovincia int primary key,
nombre varchar (45) not null
);

create table localidad( 
idlocalidad int primary key,
nombre varchar (45) not null,
provincia_idprovincia int,
foreign key (provincia_idprovincia) references provincia (idprovincia)
);

create table calle(					  			
idcalle int primary key,
nombre varchar(45) not null
);

create table paradas(									
calle1 int,
calle2 int,
localidad_idlocalidad int,
primary key(calle1,calle2),
constraint paradas_calle1 foreign key (calle1) references calle(idcalle),
constraint paradas_calle2 foreign key (calle2) references calle(idcalle),
foreign key(localidad_idlocalidad) references localidad(idlocalidad)
);

create table chofer(								
cuil bigint primary  key ,
nombre varchar(45)not null,
apellido varchar(45) not null,
licencia bigint ,
calle_idcalle int,
calle_altura int,
fecha_ingreso DATE not null,
foreign key(calle_idcalle) references calle(idcalle)
);

create table pasajero(					
dni bigint primary key ,
nombre varchar(45)not null,
apellido varchar (45) not null,
calle_idcalle int,
calle_altura int,
foreign key (calle_idcalle) references calle(idcalle)
); 

create table taller(						
cuit bigint primary key ,
razon_social varchar(45) ,
calle_idcalle int,
calle_num int,
foreign key (calle_idcalle) references calle(idcalle)
);

create table marca( 									
id_marca int primary key ,
nombre varchar(45) not null
);

create table modelo(							
id int primary key,
nombre varchar(45) not null,
marca_idmarca int,
foreign key (marca_idmarca) references marca (id_marca)
);

create table minibus(			
patente varchar(7) primary key,
service_km bigint,
marca_idmarca int,
foreign key (marca_idmarca) references marca( id_marca)

);

 create table est_servicio(				
 cuit bigint primary key,
 razon_social varchar(45) not null,
 calle_idcalle int,
 calle_num int 
 );
 
create table combustible(						
fecha_carga date,
minibus_patente varchar(7),
chofer_cuil bigint,
litros_carga int,
costo_carga bigint,
est_servicio_cuit bigint,
primary key(fecha_carga,minibus_patente),
foreign key (minibus_patente) references minibus(patente),
foreign key (chofer_cuil) references chofer(cuil),
foreign key (est_servicio_cuit) references est_servicio(cuit)
);

create table recorrido(										
 idrecorrido int primary key,
 nombre varchar(45) not null,
 descripcion varchar(280) not null,
 km int
 );

 create table tipo_tarifa(								
idtipo_tarifa int primary key,
nombre varchar(45) not null,
monto bigint,
mensual_sino  boolean
);

create table salida(											
minibus_patente varchar(7),
fecha date not null,
km_ini bigint,
chofer_cuil bigint,
hora_inicial time,
km_fin bigint,
novedades varchar (200),
caja_inicial  bigint,
boletos_cobrado int,
total_cobrado bigint,
caja_final bigint,
gastos_inesperados bigint,
primary key(minibus_patente,fecha),
foreign key (minibus_patente) references minibus(patente),
foreign key (chofer_cuil) references chofer(cuil)
);

create table service(																			
fecha date,
descripcion varchar(250),
costo_service bigint, 
taller_cuit bigint,
minibus_patente varchar(7),
km_registrado bigint,
primary key (fecha,taller_cuit),
foreign key(taller_cuit) references taller(cuit),
foreign key (minibus_patente) references minibus(patente)
);

create table recorrido_has_paradas(																
recorrido_idrecorrido int,
paradas_calle1 int,
paradas_calle2 int,
primary key(recorrido_idrecorrido, paradas_calle1 , paradas_calle2),
index recorrido_has_paradas_paradas1(paradas_calle1,paradas_calle2),
index recorrido_has_paradas_recorrido1 (recorrido_idrecorrido),
constraint recorrido_has_paradas_recorrido1 foreign key(recorrido_idrecorrido) references recorrido(idrecorrido),
constraint recorrido_has_paradas_paradas1 foreign key(paradas_calle1,paradas_calle2) references paradas (calle1, calle2)
);

create table boleto(																	
idboleto int,		
tipo_tarifa_idtipo_tarifa int,
pasajero_dni bigint,
fecha_compra date,
fecha_vencimiento date,
salida_minibus_patente varchar(7) not null,
salida_fecha date not null,
recorrido_has_paradas_recorrido_idrecorrido int,
recorrido_has_paradas_paradas_calle1 int,
recorrido_has_paradas_paradas_calle2 int,
primary key(idboleto,pasajero_dni),
foreign key (tipo_tarifa_idtipo_tarifa) references tipo_tarifa(idtipo_tarifa),
foreign key (pasajero_dni) references pasajero(dni),
foreign key(salida_minibus_patente) references salida(minibus_patente),
foreign key (recorrido_has_paradas_recorrido_idrecorrido,recorrido_has_paradas_paradas_calle1,recorrido_has_paradas_paradas_calle2)  references recorrido_has_paradas( recorrido_idrecorrido,paradas_calle1,paradas_calle2)
);
