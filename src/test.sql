--some junk test statements






select * from census.geo_11
	where area_name like '%Tract%'
	limit 100

select *from census.geo_11 limit 100
where sumlev = '101'  limit 100 
select count (*) 
	from census.geo_11
	where sumlev = '101';
select sum(pop100)
	from census.geo_11 
	where sumlev = '080';
select count(*)
	from census.geo_11
	where sumlev = '101';
select count(*) 
	from carto.block_dc
select * from carto.tracts limit 1
select count(*) 
	from carto.tracts
	where state = '11'
--	DROP TABLE IF EXISTS census.working; 