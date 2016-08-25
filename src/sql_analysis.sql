--this two scripts perform the analysis of summarizing age classes by tracts for 
--5 and 10 year increments.  in order to do this, one has to add male and female cohorts
--for the require age clases of interest.  these are found in P12 of the technical 
--documentation.  the output is the screen.  notice here that a join is made to the
--geography header table on logrecno, and to summarize by tract, the sumlev is 080

--age at 5 year increments
select state, county, tract, p0120001, pop100,
		(p0120003 + p0120027) as p_u_5, (p0120004 + p0120028) as p_5_9, (p0120005 + p0120029) as p_10_14, (p0120006 + p0120007 + p0120030 + p0120031) as p_15_19, 
		(p0120008 + p0120009 + p0120010 + p0120032 + p0120033 + p0120034) as p_20_24, (p0120011 + p0120035) as p_25_29, (p0120012 + p0120036) as p_30_34,
		(p0120013 + p0120037) as p_35_39, (p0120014 + p0120038) as p_40_44, (p0120015 + p0120039) as p_45_49, (p0120016 + p0120040) as p_50_54,
		(p0120017 + p0120041) as p_55_59, (p0120018 + p0120019 + p0120042 + p0120043) as p_60_64, (p0120020 + p0120021 + p0120044 + p0120045) as p_65_69, 
		(p0120022 + p0120046) as p_70_74, (p0120023 + p0120047) as p_75_79, (p0120024 + p0120048) as p_80_84, (p0120025 + p0120049) as p_o_85
	from census.geo_11, census.sf1_file04_11
	where geo_11.logrecno = sf1_file04_11.logrecno
	and sumlev = '080'

--age at 10 year increments
select state, county, tract, p0120001, pop100,
		(p0120003 + p0120027 + p0120004 + p0120028) as p_u_10, (p0120005 + p0120029 + p0120006 + p0120007 + p0120030 + p0120031) as p_10_19, 
		(p0120008 + p0120009 + p0120010 + p0120032 + p0120033 + p0120034 + p0120011 + p0120035) as p_20_29, 
		(p0120012 + p0120036 + p0120013 + p0120037) as p_30_39, (p0120014 + p0120038 + p0120015 + p0120039) as p_40_49, 
		(p0120016 + p0120040 + p0120017 + p0120041) as p_50_59, 
		(p0120018 + p0120019 + p0120042 + p0120043 + p0120020 + p0120021 + p0120044 + p0120045) as p_60_69, 
		(p0120022 + p0120046 + p0120023 + p0120047) as p_70_79, (p0120024 + p0120048 + p0120025 + p0120049) as p_o_80
	from census.geo_11, census.sf1_file04_11
	where geo_11.logrecno = sf1_file04_11.logrecno
	and sumlev = '080'