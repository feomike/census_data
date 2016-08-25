--this script creates the geo header table and loads the data from the downloaded 
--fixed field file into a working table.  

--this example is assuming one is working with the DC state, which is state FIPS 011.
--i am using table naming conventions which are geo_11 to stand for DC

--load into a working table, so clear that out first
DROP TABLE IF EXISTS census.working; 
--create the working table and load all the data in, as it is fixed fied
CREATE TABLE census.working (data text); 
COPY census.working 
	from './dc2010.sf1/dcgeo2010.sf1' ;
COMMIT; 

--drop the geo_header file if it exists
DROP TABLE IF EXISTS census.geo_11;

--next create the final table it will reside in, based on the sf_geo_header.md table definitions
 --create table and format it
CREATE TABLE census.geo_11 ( fileid character varying (6), stusab character varying(2), sumlev character varying(3),
	geocomp character varying(2), chariter character varying(3), cifsn character varying(2), logrecno character varying(7),
	region character varying(1), division character varying(1), state character varying(2), county character varying(3),
	countycc character varying(2), countysc character varying(2), cousub character varying(5), cousubcc character varying(2),
	cousubsc character varying(2), place character varying(5), placecc character varying(2), placesc character varying(2),
	tract character varying(6), blkgrp character varying(1), block character varying(4), iuc character varying(2),
	concit character varying(5), concitcc character varying(2), concitsc character varying(2),aianhh character varying(4),
	aianhhfp character varying(5), aianhhcc character varying(2),aihhtli character varying(1),aitsce character varying(3),
	aits character varying(5), aitscc character varying(2), ttract character varying(6), tblkgrp character varying(1),
	anrc character varying(5), anrccc character varying(2), cbsa character varying(5), cbsasc character varying(2),
	metdiv character varying(5), csa character varying(3), necta character varying(5), nectasc character varying(2),
	nectadiv character varying(5), cnecta character varying(3), cbsapci character varying(1), nectapci character varying(1),
	ua character varying(5), uasc character varying(2), uatype character varying(1), ur character varying(1),
	cd character varying(2), sldu character varying(3), sldl character varying(3), vtd character varying(6),
	vtdi character varying(1), reserve2 character varying(3), zcta5 character varying(5), submcd character varying(5),
	submcdcc character varying(2), sdelm character varying(5), sdsec character varying(5), sduni character varying(5),
	arealand character varying(14), areawtr character varying(14), area_name character varying(90), funcstat character varying(1), gcuni character varying(1),
	pop100 numeric, hu100 numeric, intptlat character varying(11), intptlon character varying(12), lsadc character varying(2),
	partflag character varying(1), reserve3 character varying(6), uga character varying(5), statens character varying(8),
	countyns character varying(8), cousubns character varying(8), placens character varying(8), concitns character varying(8),
	aianhhns character varying(8), aitsns character varying(8), anrcns character varying(8), submcdns character varying(8),
	cd113 character varying(2), cd114 character varying(2), cd115 character varying(2), sldu2 character varying(3), sldu3 character varying(3),
	sldu4 character varying(3), sldl2 character varying(3),  sldl3 character varying(3), sldl4 character varying(3), aianhhsc character varying(2),
	csasc character varying(2), cnectasc character varying(2), memi character varying(1), nmemi character varying(1),puma character varying(5),
	reserved character varying(18) 
	) WITH ( OIDS=TRUE ); 
	ALTER TABLE census.geo_11 OWNER TO mike; 
	COMMENT ON TABLE census.geo_11 IS 'Source downloaded from ## on ##'; 

--parse out the data in the fixed field working table to its appropriate fields
INSERT INTO census.geo_11 ( 
	fileid, stusab, sumlev, geocomp, chariter, cifsn, logrecno, region, division, state, county,
	countycc, countysc, cousub, cousubcc, cousubsc, place, placecc, placesc, tract, blkgrp, block, iuc,
	concit, concitcc, concitsc, aianhh, aianhhfp, aianhhcc, aihhtli, aitsce, aits, aitscc, ttract, tblkgrp,
	anrc, anrccc, cbsa, cbsasc, metdiv, csa, necta, nectasc, nectadiv, cnecta, cbsapci, nectapci,
	ua, uasc, uatype, ur, cd, sldu, sldl, vtd, vtdi, reserve2, zcta5, submcd, submcdcc, sdelm, sdsec, sduni,
	arealand, areawtr, area_name, funcstat, gcuni, pop100, hu100, intptlat, intptlon, lsadc, partflag, reserve3, 
	uga, statens, countyns, cousubns, placens, concitns, aianhhns, aitsns, anrcns, submcdns, cd113, cd114, cd115, 
	sldu2, sldu3, sldu4, sldl2, sldl3, sldl4, aianhhsc, csasc, cnectasc, memi, nmemi, puma, reserved )
	SELECT  substring(data,1,6) as fileid, substring(data,7,2) as stusab, substring(data,9,3) as sumlev,
		substring(data,12,2) as geocomp, substring(data,14,3) as chariter, substring(data,17,2) as cifsn,
		substring(data,19,7) as logrecno, substring(data,26,1) as region, substring(data,27,1) as division,
		substring(data,28,2) as state, substring(data,30,3) as county, substring(data,33,2) as countycc, 
		substring(data,35,2) as countysc, substring(data,37,5) as cousub, substring(data,42,2) as cousubcc, 
		substring(data,44,2) as cousubsc, substring(data,46,5) as place, substring(data,51,2) as placecc, 
		substring(data,53,2) as placesc, substring(data,55,6) as tract, substring(data,61,1) as blkgrp,
		substring(data,62,4) as block, substring(data,66,2) as iuc, 
		substring(data,68,5) as concit, substring(data,73,2) as concitcc, substring(data,75,2) as concitsc, 
		substring(data,77,4) as aianhh, substring(data,81,5) as aianhhfp, substring(data,86,2) as aianhhcc, 
		substring(data,88,1) as aihhtli, substring(data,89,3) as aitsce, substring(data,92,5) as aits, 
		substring(data,97,2) as aitscc, substring(data,99,6) as ttract, substring(data,105,1) as tblkgrp, 
		substring(data,106,5) as anrc, substring(data,111,2) as anrccc, substring(data,113,5) as cbsa, 
		substring(data,118,2) as cbsasc, substring(data,120,5) as metdiv, substring(data,125,3) as csa, 
		substring(data,128,5) as necta, substring(data,133,2) as nectasc, substring(data,135,5) as nectadiv, 
		substring(data,140,3) as cnecta, substring(data,143,1) as cbsapci, substring(data,144,1) as nectapci, 
		substring(data,145,5) as ua, substring(data,150,2) as uasc, substring(data,152,1) as uatype, 
		substring(data,153,1) as ur, substring(data,154,2) as cd, substring(data,156,3) as sldu, 
		substring(data,159,3) as sldl, substring(data,162,6) as vtd, substring(data,168,1) as vtdi, 
		substring(data,169,3) as reserve2, substring(data,172,5) as zcta5, substring(data,177,5) as submcd, 
		substring(data,182,2) as submcdcc, substring(data,184,5) as sdelm, substring(data,189,5) as sdsec, 
		substring(data,194,5) as sduni, 
		substring(data,199,14) as arealand, substring(data,213,14) as areawtr, 
		substring(data,227,90) as area_name, substring(data,317,1) as funcstat, substring(data,318,1) as gcuni, 
		to_number(substring(data,319,9),'999999999') as pop100, to_number(substring(data,328,9),'999999999') as hu100, 
		substring(data,337,11) as intptlat, substring(data,348,12) as intptlon, substring(data,360,2) as lsadc, 
		substring(data,362,1) as partflag, substring(data,363,6) as reserve3, substring(data,369,5) as uga, 
		substring(data,374,8) as statens, substring(data,382,8) as countyns, substring(data,390,8) as cousubns, 
		substring(data,398,8) as placens, substring(data,406,8) as concitns, substring(data,414,8) as aianhhns, 
		substring(data,422,8) as aitsns, substring(data,430,8) as anrcns, substring(data,438,8) as submcdns, 
		substring(data,446,2) as cd113, substring(data,448,2) as cd114, substring(data,450,2) as cd115, 
		substring(data,452,3) as sldu2, substring(data,455,3) as sldu3, substring(data,458,3) as sldu4, 
		substring(data,461,3) as sldl2, substring(data,464,3) as sldl3, substring(data,467,3) as sldl4, 
		substring(data,470,2) as aianhhsc, substring(data,472,2) as csasc, substring(data,474,2) as cnectasc, 
		substring(data,476,1) as memi, substring(data,477,1) as nmemi, substring(data,478,5) as puma, 
		substring(data,483,18) as reserved
	FROM census.working; 


