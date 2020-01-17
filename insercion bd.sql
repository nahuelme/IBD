use empresa_transporte;

-- PROVINCIA
insert into provincia
values(1,"Buenos aires");
insert into provincia
values(2,"cordoba");

-- LOCALIDAD
insert into localidad
values(1,"lanus",1);
insert into localidad
values(2,"avellaneda",1);
insert into localidad
values(3,"nueva pompeya",1);
insert into localidad
values(4,"flores",1);
insert into localidad
values(5,"monserrat",1);
insert into localidad
values(6,"lomas de zamora",1);
insert into localidad
values(7,"la falda",2);

-- CALLE
insert into calle
values(1,"hipolito Irigoyen");
insert into calle
values(2,"brasil");
insert into calle
values(3,"cabildo");
insert into calle
values(4,"av.Sant Fe");
insert into calle
values(5,"rivadavia");
insert into calle 
values(6,"uruguay");
insert into calle
values(7,"av.Velez Sarfield");
insert into calle
values(8,"zepita");
insert into calle
values(9,"av.Osvaldo Cruz");
insert into calle
values(10,"Iguazu");
insert into calle
values(11,"Av.Almancio Alcorta");
insert into calle
values(12,"Suarez");
insert into calle
values(13,"Cayena"); 
insert into calle
values(14,"Pringles");
insert into calle
values(15,"Gral.Madariaga");
insert into calle
values(16,"Cmte.Mamberti");
insert into calle
values(17,"Tte.Coronel Bueras");
insert into calle
values(18,"Almte.Cordero");
insert into calle
values(19,"Asuncion");
insert into calle
values(20,"Av.San Juan");
insert into calle
values(21,"Tacuari");
insert into calle
values(22,"Av.Paseo Colon");
insert into calle
values(23,"Av.Independencia");
insert into calle
values(24,"Catamarca");
insert into calle
values(25,"Gord.Carlos Tejedor");
insert into calle
values(26,"Av 27 de Febrero");
insert into calle
values(27,"Pergamino");
insert into calle
values(28,"Mariano Acosta");
insert into calle
values(29,"av.CastaÃ±ares");
insert into calle
values(30,"Tte.Cnel.Casimiero Recuero");
insert into calle
values(31,"Av.san Pedrito");
insert into calle
values(32,"Av.Francisco Bilbao");
insert into calle
values(33,"Av.Directorio");
insert into calle
values(34,"Dr.Luis Belaustegui");
insert into calle
values(35,"Terrada");
insert into calle
values(36,"Marcos Sastre");
insert into calle
values(37,"Av.Nazca");
insert into calle
values(38,"Av.San Pedro");
insert into calle
values(39,"Humaita");
insert into calle
values(40, "Emilio Mitre");
insert into calle
values(41,"	Quesada");
insert into calle
values(42,"Achega");
insert into calle
values(43,"Bahia Blanca");
insert  into calle
values(44,"Paso de la Patria");
insert into calle
values(45,"Ituzaingo");
insert into calle
values(46,"Alicia Moro del Justo");
insert into calle
values(47,"Mario Francioni");
insert into calle
values(48,"Leandro Alem");
insert into calle
values(49,"M.Acevedo");
insert into calle
values(50,"Del paso Federico");

-- PARADAS
select * from paradas;
insert into paradas
values(13,1,1);
insert into paradas
values(2,1,2);
insert into paradas
values(3,4,3);
insert into paradas
values(5,6,4);
insert into paradas
values(9,10,5);
insert into paradas
values(11,7,5);
insert into paradas
values(1,19,4);
insert into paradas
values(20,22,5);
insert into paradas
values(22,23,5);
insert into paradas
values(26,27,2);
insert into paradas
values(28,30,4);
insert into paradas
values(31,33,4);
insert into paradas
values(35,36,5);

-- CHOFER
insert into chofer
values(20169877896,"roberto","rodriquez",23288746,30,50,'2010/02/12');
insert into chofer
values(20174455527,"Luis","Lopez",99999999,1,6500,'2014/05/23');
insert into chofer
values(20203455246,"Rodrigo","Rojas",86378844,1,5300,'2016/02/15');
insert into chofer
values(27254322340,"Brisa","Branco",24900607,4,2500,'2018/5/01');

-- PASAJERO
insert into pasajero
values(39984654,"Emilia","Ponce",29,6000);
insert into pasajero
values(21321654,"Mariela","Garabello",38,400);
insert into pasajero
values(16654987,"Horacio","Britos",25,500);
insert into pasajero
values(10789354,"Jimena","Guerrero",41,1400);
insert into pasajero
values(39349658,"Joaquin","Ventura",39,1900);
insert into pasajero
values(17012465,"Amalia","Shneider",2,1800);
insert into pasajero
values(18357951,"Noelia","Perez",1,5400);
insert into pasajero
values(25021369,"Mariano","Aguirre",4,6100);
insert into pasajero
values(29147369,"Esteban","Navarro",26,300);
insert into pasajero
values(35102030,"Juan","Lagos",4,4500  );
insert into pasajero
values(34102030,"Juana","Del Arco",22,800);   
insert into pasajero
values(23456789,"Jesus","De la Cruz",4,200);

-- TALLER
insert into taller
values(2345671982,"hermanos pepe",34,536);
insert into taller 
values(2386472349,"Mecanico Avellaneda",42,7665);

-- MARCA
insert into marca
values(1,"Mercedes-Benz");
insert into marca
values(2,"Ford");
insert into marca
values(3,"Renault");

-- MODELO

insert into modelo
values(1,"sprinter",1);
insert into modelo
values(2,"transit",2);
insert into modelo
values(3,"master",3);

-- MINIBUS
insert into minibus
values("AA146LH",10000,1);
insert into minibus
values("AD263JH",15000,2);
insert into minibus
values("AB302PO",11500,3);
insert into minibus
values("AB465IJ",21500,1);

-- EST SERVICIO
 insert into est_servicio
 values(23123321778,"YPF",1,500);
 insert into est_servicio
 values(23678876669,"SHELL",3,2347);

-- COMBUSTIBLE
insert into combustible
values('2018/10/02',"AA146LH",20169877896,90,2500,23123321778);
insert into combustible
values('2018/10/09',"AD263JH",20174455527,101,3010,23678876669);
insert into combustible
values('2018/09/16',"AB302PO",20203455246,95,2800,23123321778);
insert into combustible
values('2018/10/23',"AB465IJ",27254322340,99,2900,23678876669);
insert into combustible
values('2018/10/30',"AA146LH",20169877896,110,3100,23123321778);
insert into combustible
values('2018/11/02',"AD263JH",20174455527,91,2550,23678876669);
insert into combustible
values('2018/11/09',"AB302PO",20203455246,92,2600,23123321778);
insert into combustible
values('2018/11/16',"AB465IJ",27254322340,93,2650,23678876669);
insert into combustible
values('2018/11/23',"AA146LH",20169877896,102,3040,23678876669);
insert into combustible
values('2018/11/30',"AD263JH",20174455527,103,3050,23123321778);

-- RECORRIDO
 insert into recorrido
 values(1,"plaza constitucion","Est.Lanus/Cayena_Av.Hipolito Yrigoyen/Brasil_Av Hipolito Yrigoyen/Cabildo_Av.Santa Fe/Rivadavia_Uruguay/Av.Velez Sarfield_Zepita//av.Osvaldo Cruz_Iguazu/Av.Almancio Alcorta_Suarez/Av.Almancio Alcorta_Av.Velez Sarsfield/Plaza Constitucion", 10);
 insert into recorrido
 values(2,"correo central","Est.Lanus/Pringles_Gral.Madariaga/Cmte.Mamberti_Tte.Coronel Bueras/Cabildo_Av.Santa Fe/Av.Hipolito Irigoyen_Almte.Cordero/Av.Hipolito irigoyen_Asuncion/Av.San Juan_Tacuari/Av.San Juan_Av.Paseo Colon/Av.Paseo Colon_Av.Independencia/Correo Central",13);
 insert into recorrido
 values(3,"agronomia","Catamarca_Gdor.Carlos Tejedor/Av.27 de Febrero_Pergamino/Mariano Acosta_Av.CastaÃ±ares/Mariano Acosta_Tte.Cnel.Casimiento Recuero/Av.San Pedrito/Av.Francisco Bilbao/Av.San Pedrito/Av.Directorio/Dr.Luis BelÃ¡ustegui_Terrada/Terrada_Marcos Satre/Agronomia",18);

-- TIPO TARIFA
insert into tipo_tarifa
values(1,"Tarifa Plana",2500,true);
insert into tipo_tarifa
values(2,"Recorrido",1250,true);
insert into tipo_tarifa
values(3,"eventual",110,false);

-- SALIDA
insert into salida
values("AA146LH",'2018/10/02',450,20169877896,'14:00:00',460,null,2000 ,6,4830,5831,999); 
insert into salida
values("AD263JH",'2018/10/02',500,20174455527,'08:00:00',513 ,null,2700,5,4330,6480,550);
insert into salida  
values("AB302PO",'2018/10/12',420  ,20203455246,'13:00:00',438,null,2000,8,6330,553,7777);
insert into salida
values("AB465IJ",'2018/10/23',570 ,27254322340,'12:00:00', 580,null,2500,5,1830,4330 ,null);
insert into salida
values("AA146LH",'2018/10/30', 470 ,20169877896,'09:00:00',483,null,1500 ,5,7500,8500,500);
insert into salida
values("AD263JH",'2018/11/02', 500 ,20174455527,'11:00:00',518 ,null,2000 ,6,7220,9220,null);
insert into salida
values( "AB302PO",'2018/11/09',400 ,20203455246,'07:00:00',  410,null,1800 ,4, 3220,4420,600);
insert into salida
values("AB465IJ",'2018/11/16',540,27254322340,'15:00:00', 553 ,null,1100 ,9,7830,8930 ,null);
insert into salida
values("AA146LH",'2018/11/23', 450 ,20169877896,'10:00:00',468 ,null,1400 ,4,6000,7000 ,400);
insert into salida
values("AD263JH",'2018/11/30',500 ,20174455527,'08:00:00', 510 ,null,2000 ,7,7610,9610 ,null );



-- SERVICE
insert into service
values('2018/10/03',"reparacion de frenos",6000, 2345671982,"AA146LH",10000);
insert into service
values('2018/10/13',"limpieza interior y exterior del vehiculo",8430,2386472349,"AD263JH",15000);
insert into service
values('2018/10/20',"aplicacion y secado de pintura",5660, 2345671982,"AB302PO",11500);
insert into service
values('2018/10/26',"reparacion neumatico",4200,2386472349,"AB465IJ",21500);
insert into service
values('2018/11/03',"sistema de aire comprimido",8000,2345671982,"AA146LH",10000);
insert into service
values('2018/11/07',"mantenimiento y reparaciones del motor",8000,2386472349,"AD263JH",15000);
insert into service
values('2018/11/14',"mantenimiento y reparaciones del motor",10000,2345671982,"AB302PO",11500);
insert into service
values('2018/11/19',"mantenimiento y reparaciones en general",9000,2386472349,"AB465IJ",21500);
insert into service
values('2018/11/28',"lavado de vehiculo",1120,2345671982,"AA146LH",10000);
insert into service
values('2018/11/30',"sustiucion de elementos de desgaste",9200,2386472349,"AD263JH",15000);

-- RECORRIDO_HAS_PARADAS
insert into recorrido_has_paradas
values(1,13,1);
insert into recorrido_has_paradas
values(1,2,1);
insert into recorrido_has_paradas
values(1,3,4);
insert into recorrido_has_paradas
values(1,5,6);
insert into recorrido_has_paradas
values(1,9,10);
insert into recorrido_has_paradas
values(1,11,7);
insert into recorrido_has_paradas
values(2,13,1);
insert into recorrido_has_paradas
values(2,3,4);
insert into recorrido_has_paradas
values(2,1,19);
insert into recorrido_has_paradas
values(2,20,22);
insert into recorrido_has_paradas
values(2,22,23);
insert into recorrido_has_paradas
values(3,13,1);
insert into recorrido_has_paradas
values(3,26,27);
insert into recorrido_has_paradas
values(3,28,30);
insert into recorrido_has_paradas
values(3,31,33);
insert into recorrido_has_paradas
values(3,35,36);


-- BOLETO
-- 1ra salida
insert into boleto
values(1,3,35102030,'2018/10/02','2018/10/02',"AA146LH",'2018/10/02',1,13,1);
insert into boleto
values(2,3,34102030,'2018/10/02','2018/10/02',"AA146LH",'2018/10/02',1,2,1);
insert into boleto
values(3,3,23456789,'2018/09/29','2018/10/02',"AA146LH",'2018/10/02',1,13,1);
insert into boleto
values(4,2,18357951,'2018/10/02','2018/11/02',"AA146LH",'2018/10/02',1,2,1);
insert into boleto
values(5,2,39984654,'2018/10/01','2018/11/01',"AA146LH",'2018/10/02',1,9,10);                                     
insert into boleto
values(6,2,39349658,'2018/09/30','2018/10/30',"AA146LH",'2018/10/02',1,5,6);

-- 2da salida--
insert into boleto
values(7,1,25021369,'2018/10/09','2018/11/09',"AD263JH",'2018/10/09',2,13,1);
insert into boleto
values(8,2,39984654,'2018/10/01','2018/11/01',"AD263JH",'2018/10/09',2,13,1);
insert into boleto
values(9,3,35102030,'2018/10/09','2018/10/09',"AD263JH",'2018/10/09',2,1,19);
insert into boleto
values(10,3,34102030,'2018/10/09','2018/10/09',"AD263JH",'2018/10/09',2,22,23);
insert into boleto
values(11,3,23456789,'2018/10/09','2018/10/09',"AD263JH",'2018/10/09',2,20,22);

-- 3ra salida--
insert into boleto
values(12,1,29147369,'2018/10/10','2018/11/10',"AB302PO",'2018/10/16', 3,13,1);
insert into boleto
values(13,2,21321654,'2018/10/15','2018/11/15',"AB302PO",'2018/10/16',3,13,1);
insert into boleto
values(14,2,16654987,'2018/10/14','2018/11/14',"AB302PO",'2018/10/16',3,26,27);
insert into boleto
values(15,2,39349658,'2018/09/30','2018/10/30',"AB302PO",'2018/10/16',3,35,36);
insert into boleto
values(16,2,17012465,'2018/10/16','2018/11/16',"AB302PO",'2018/10/16',3,35,36);
insert into boleto
values(17,3,35102030,'2018/10/16','2018/10/16',"AB302PO",'2018/10/16',3,35,36);
insert into boleto
values(18,3,34102030,'2018/10/16','2018/11/16',"AB302PO",'2018/10/16', 3,13,1);
insert into boleto
values(19,3,23456789,'2018/10/16','2018/11/16',"AB302PO",'2018/10/16',3,28,30);

-- 4ta salida--
insert into boleto
values(20,3,35102030,'2018/10/23','2018/10/23',"AB465IJ",'2018/10/23', 1,13,1);
insert into boleto
values(21,3,34102030,'2018/10/23','2018/10/23',"AB465IJ",'2018/10/23',1,13,1);
insert into boleto
values(22,3,23456789,'2018/10/23','2018/11/23',"AB465IJ",'2018/10/23',1,11,7);
insert into boleto
values(23,2,16654987,'2018/10/14','2018/11/14',"AB465IJ",'2018/10/23',1,9,10);
insert into boleto
values(24,2,39349658,'2018/09/30','2018/10/30',"AB465IJ",'2018/10/23',1,11,7);

-- 5ta salida--
insert into boleto
values(25,2,21321654,'2018/10/15','2018/11/15',"AA146LH",'2018/10/30',2,13,1);
insert into boleto
values(26,2,39349658,'2018/09/30','2018/10/30',"AA146LH",'2018/10/30',2,13,1);
insert into boleto
values(27,2,16654987,'2018/10/14','2018/11/14',"AA146LH",'2018/10/30',2,20,22);
insert into boleto
values(28,2,17012465,'2018/10/16','2018/10/16',"AA146LH",'2018/10/30',2,22,23);
insert into boleto
values(29,2,39349658,'2018/09/30','2018/10/30',"AA146LH",'2018/10/30',2,3,4);

-- 6ta salida--
insert into boleto
values(30,3,35102030,'2018/11/02','2018/11/02',"AD263JH",'2018/11/02',3,13,1);
insert into boleto
values(31,3,34102030,'2018/11/02','2018/11/02',"AD263JH",'2018/11/02',3,13,1);
insert into boleto
values(32,2,39349658,'2018/10/30','2018/10/30',"AD263JH",'2018/11/02',3,26,27);
insert into boleto
values(33,2,16654987,'2018/10/14','2018/11/14',"AD263JH",'2018/11/02',3,28,30);
insert into boleto
values(34,2,17012465,'2018/10/16','2018/11/16',"AD263JH",'2018/11/02',3,28,30);

-- 7ma SALIDA---
insert into boleto
values(35,3,16654987,'2018/10/14','2018/11/14',"AB302PO",'2018/11/09',1,13,1);
insert into boleto
values(36,3,17012465,'2018/10/16','2018/11/16',"AB302PO",'2018/11/09',1,11,7);
insert into boleto
values(37,2,35102030,'2018/10/09','2018/11/09',"AB302PO",'2018/11/09',1,11,7);
insert into boleto
values(38,2,34102030,'2018/11/09','2018/11/09',"AB302PO",'2018/11/09',1,2,1);

-- 8va SALIDA---
insert into boleto
values(39,3,35102030,'2018/11/16','2018/11/16',"AB465IJ",'2018/11/16',2,13,1);
insert into boleto
values(40,3,34102030,'2018/11/16','2018/11/16',"AB465IJ",'2018/11/16',2,22,23);
insert into boleto
values(41,3,23456789,'2018/11/16','2018/11/16',"AB465IJ",'2018/11/16',2,22,23);
insert into boleto
values(42,1,29147369,'2018/11/16','2018/12/16',"AB465IJ",'2018/11/16',2,1,19);
insert into boleto
values(43,2,17012465,'2018/10/16','2018/11/16',"AB465IJ",'2018/11/16',2,3,4);
insert into boleto
values(44,2,16654987,'2018/11/16','2018/12/16',"AB465IJ",'2018/11/16',2,1,19);
insert into boleto
values(45,2,39349658,'2018/10/30','2018/11/30',"AB465IJ",'2018/11/16',2,3,4);
insert into boleto
values(46,2,34102030,'2018/11/15','2018/12/15',"AB465IJ",'2018/11/16',2,22,23);
insert into boleto
values(47,2,39984654,'2018/11/16','2018/12/16',"AB465IJ",'2018/11/16',2,22,23);
insert into boleto
values(48,2,34102030,'2018/11/16','2018/12/16',"AB465IJ",'2018/11/16',2,20,22);

-- 9na SALIDA----

insert into boleto
values(49,2,16654987,'2018/11/16','2018/12/16',"AA146LH",'2018/11/23',3,31,33);
insert into boleto
values(50,2,34102030,'2018/11/16','2018/12/15',"AA146LH",'2018/11/23',3,35,36);
insert into boleto
values(51,2,39984654,'2018/11/16','2018/12/16',"AA146LH",'2018/11/23',3,31,33);
insert into boleto
values(52,2,39349658,'2018/10/30','2018/11/30',"AA146LH",'2018/11/23',3,26,27);
 
 -- 10ma SALIDA--
insert into boleto
values(53,1,29147369,'2018/11/16','2018/12/16',"AD263JH",'2018/11/30',1,5,6);
insert into boleto
values(54,3,23456789,'2018/11/30','2018/11/30',"AD263JH",'2018/11/30',1,3,4);
insert into boleto
values(55,2,39349658,'2018/10/30','2018/11/30',"AD263JH",'2018/11/30',1,5,6);
insert into boleto
values(56,2,39984654,'2018/11/16','2018/12/16',"AD263JH",'2018/11/30',1,9,10);
insert into boleto
values(57,2,34102030,'2018/11/15','2018/12/15',"AD263JH",'2018/11/30',1,2,1);
