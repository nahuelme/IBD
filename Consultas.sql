use empresa_transporte;

-- 1) Emitir listados de clientes con su correspondiente abono si lo tiene.
select p.dni, p.nombre, p.apellido, b.idboleto, b.tipo_tarifa_idtipo_tarifa from pasajero p left join boleto b on b.pasajero_dni=p.dni
 group by p.dni;

-- 2) Emitir listados de recorridos, con sus paradas.

select * from recorrido_has_paradas;

-- 3) Emitir listados de historial de mantenimiento entre fechas,por movil o por taller

SELECT s.fecha ,razon_social,s.descripcion, s.minibus_patente FROM service s
	INNER JOIN taller t ON s.taller_cuit = t.cuit
	where s.fecha between '2018/10/03' AND '2018/11/26' and s.minibus_patente="AA146LH";

SELECT s.fecha, razon_social,s.descripcion, s.minibus_patente FROM service s
	INNER JOIN taller t ON s.taller_cuit = t.cuit
	where s.fecha between '2018/10/03' AND '2018/11/26' and t.cuit=2345671982;

-- 4) Confeccionar las planillas de salida, con las paradas en las que deba detenerse el móvil, y los pasajeros a recoger en cada una de ellas.



-- 5) Consultar la recaudación bruta ya sea por recorrido o por destino (provincia de Buenos Aires o CABA)

	select sum(s.total_cobrado) as total
	from salida s
    INNER JOIN boleto b ON s.minibus_patente = b.salida_minibus_patente
    INNER JOIN recorrido_has_paradas rp ON rp.recorrido_idrecorrido = recorrido_idrecorrido;

-- 6) Consultar los gastos por recorrido, por chofer o por chofer y entre fechas

select sum(s.gastos_inesperados) as gastosXrecorrido, b.recorrido_has_paradas_recorrido_idrecorrido as id_recorrido    
	from salida s
    INNER JOIN boleto b ON s.fecha=b.salida_fecha
	Group by b.recorrido_has_paradas_recorrido_idrecorrido;

select sum(s.gastos_inesperados) as gastosXchofer, ch.cuil 
	from salida s
    INNER JOIN chofer ch ON s.chofer_cuil = ch.cuil
     Group by ch.cuil;

select  sum(s.gastos_inesperados) as gastosXchoferANDfecha, ch.cuil
	from salida s
    INNER JOIN chofer ch ON s.chofer_cuil = ch.cuil  
	where s.fecha between '2018/09/09' AND '2018/11/11'
   Group by ch.cuil ;

-- 7) Emitir un listado mensual de los gastos realizados por todos los choferes.
    select sum(s.gastos_inesperados) as gastos_mensuales from salida s;
    
-- 8) Emitir listados de consumo medio de combustible por km entre fechas (por recorrido, por móvil o por chofer), ordenado de mayor a menor.
    
select b.recorrido_has_paradas_recorrido_idrecorrido as idrecorrido, sum(c.litros_carga)/(km_fin-km_ini) as MediaCombustibleXrecorrido  from combustible c
		INNER JOIN minibus m ON c.minibus_patente = m.patente 
        INNER JOIN salida s ON m.patente = s.minibus_patente 
		inner join boleto b on s.fecha = b.salida_fecha
        where fecha between '2018/09/09' AND '2018/11/11'
		Group by b.recorrido_has_paradas_recorrido_idrecorrido
        ORDER BY MediaCombustibleXrecorrido desc;

select m.patente, sum(c.litros_carga)/(km_fin-km_ini) as MediaCombustibleXmovil  from combustible c  
		INNER JOIN minibus m ON c.minibus_patente = m.patente 
        INNER JOIN salida s ON m.patente = s.minibus_patente  
		where fecha between '2018/09/09' AND '2018/11/11'
        Group By patente
        ORDER BY MediaCombustibleXmovil desc;

select ch.cuil, sum(c.litros_carga)/(km_fin-km_ini) as MediaCombustibleXchofer  from combustible c  
		INNER JOIN minibus m ON c.minibus_patente = m.patente 
        INNER JOIN salida s ON m.patente = s.minibus_patente 
		inner join chofer ch on c.chofer_cuil=ch.cuil
		where fecha between '2018/09/09' AND '2018/11/11'
        Group By ch.cuil
        ORDER BY MediaCombustibleXchofer desc;

-- 9) Emitir listados de ganancia bruta por km, por recorrido

select (sum(s.caja_final)-sum(c.costo_carga)-sum(sv.costo_service))/(km_fin-km_ini) as ganancia_brutaXkm  from salida s
		inner join minibus m on s.minibus_patente = m.patente
		inner join combustible c on m.patente = c.minibus_patente
		INNER JOIN boleto b ON s.minibus_patente = b.salida_minibus_patente		
		inner join service sv on m.patente = sv.minibus_patente;

select b.recorrido_has_paradas_recorrido_idrecorrido as idrecorrido, sum(s.caja_final)-sum(c.costo_carga)-sum(sv.costo_service) as ganancia_bruta  from salida s
		inner join minibus m on s.minibus_patente = m.patente
		inner join combustible c on m.patente = c.minibus_patente
		INNER JOIN boleto b ON s.minibus_patente = b.salida_minibus_patente		
		inner join service sv on m.patente = sv.minibus_patente
        GROUP BY b.recorrido_has_paradas_recorrido_idrecorrido;

-- 10) Emitir listado de cantidad de pasajeros transportados entre fechas por recorrido.
    select recorrido_has_paradas_recorrido_idrecorrido as idrecorrido, count(dni) as cant_pasajeros from pasajero
		INNER JOIN boleto ON pasajero.dni = boleto.pasajero_dni
		where salida_fecha BETWEEN '2018/10/02' AND '2018/11/30'
		Group By recorrido_has_paradas_recorrido_idrecorrido;

-- 11)Emitir listado mensual de recaudación por recorrido o parada final.

    select recorrido_has_paradas_recorrido_idrecorrido as idrecorrido, sum(caja_final) as cajamensual from salida 
    INNER JOIN BOLETO ON salida.minibus_patente = boleto.salida_minibus_patente
    Where salida.fecha BETWEEN '2018/10/02' AND '2018/11/02'
	Group by recorrido_has_paradas_recorrido_idrecorrido;

-- 12)Emitir listado de km recorridos entre fecha, para móvil o chofer.

	select m.patente, sum(km_fin-km_ini) as KmRecorridosXmovil from salida s
    INNER JOIN minibus m ON s.minibus_patente = m.patente
    Where s.fecha between  '2018/10/02' AND '2018/12/16'
	group by m.patente;

	select ch.cuil, sum(km_fin-km_ini) as KmRecorridosXchofer from salida s
    INNER JOIN chofer ch ON s.chofer_cuil = ch.cuil
    Where s.fecha between  '2018/10/02' AND '2018/12/16'
	group by ch.cuil;

-- 13)Emitir listado de gastos de mantenimiento, por móvil

select service.minibus_patente AS PatenteVehicular, sum(service.costo_service) as TOTALGASTOS from service
		Where service.fecha >= '2018/10/02' AND service.fecha <= '2018/12/16'
        Group by PatenteVehicular
        Order By costo_service desc;
	
-- 14)Emitir listado de ganancia bruta por recorrido, calculada como el total de pasajes vendidos menos los gastos entre fechas.

	Select boleto.recorrido_has_paradas_recorrido_idrecorrido as Idrecorrido ,sum(salida.total_cobrado) - sum(salida.gastos_inesperados) as Total from salida
    INNER JOIN BOLETO ON salida.minibus_patente = boleto.salida_minibus_patente
    Where salida.fecha BETWEEN '2018/10/02' AND '2018/11/30'
	Group by recorrido_has_paradas_recorrido_idrecorrido;

-- 15)Consultar la ganancia bruta de la empresa, calculada como el total de pasajes vendidos, más los abonos, menos el combustible y menos los gastos de mantenimiento. 

select sum(salida.caja_final) - sum(combustible.costo_carga) + sum(service.costo_service) as Total from combustible
    INNER JOIN minibus ON combustible.minibus_patente = minibus.patente
    INNER JOIN service ON minibus.patente = service.minibus_patente 
	INNER JOIN salida ON minibus.patente = salida.minibus_patente;



