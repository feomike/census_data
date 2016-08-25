--this script creates the summary file 1 File 04 

--this example is assuming one is working with the DC state, which is state FIPS 011.
--i am using table naming conventions which are geo_11 to stand for DC
--these files are csv and therefore delimited by ','s
--i pulled the fields from the technical document, and kept the p01...field naming 
--convention exactly the same as it is in the table doc, b/c, well it is easier, than
--naming things their english names b/c there are so many fields


--drop the geo_header file if it exists
DROP TABLE IF EXISTS census.sf1_file04_11;

 --create table and format it
CREATE TABLE census.sf1_file04_11 ( 
	fileid character varying (6), stusab character varying(2), chariter character varying(3), cifsn character varying(2), logrecno character varying(7),
	p0100001 numeric, p0100002 numeric, p0100003 numeric, p0100004 numeric, p0100005 numeric, p0100006 numeric, p0100007 numeric, p0100008 numeric, p0100009 numeric, 
	p0100010 numeric, p0100011 numeric, p0100012 numeric, p0100013 numeric, p0100014 numeric, p0100015 numeric, p0100016 numeric, p0100017 numeric, p0100018 numeric, p0100019 numeric, 
	p0100020 numeric, p0100021 numeric, p0100022 numeric, p0100023 numeric, p0100024 numeric, p0100025 numeric, p0100026 numeric, p0100027 numeric, p0100028 numeric, p0100029 numeric, 
	p0100030 numeric, p0100031 numeric, p0100032 numeric, p0100033 numeric, p0100034 numeric, p0100035 numeric, p0100036 numeric, p0100037 numeric, p0100038 numeric, p0100039 numeric, 
	p0100040 numeric, p0100041 numeric, p0100042 numeric, p0100043 numeric, p0100044 numeric, p0100045 numeric, p0100046 numeric, p0100047 numeric, p0100048 numeric, p0100049 numeric, 
	p0100050 numeric, p0100051 numeric, p0100052 numeric, p0100053 numeric, p0100054 numeric, p0100055 numeric, p0100056 numeric, p0100057 numeric, p0100058 numeric, p0100059 numeric, 
	p0100060 numeric, p0100061 numeric, p0100062 numeric, p0100063 numeric, p0100064 numeric, p0100065 numeric, p0100066 numeric, p0100067 numeric, p0100068 numeric, p0100069 numeric, 
	p0100070 numeric, p0100071 numeric, 
	p0110001 numeric, p0110002 numeric, p0110003 numeric, p0110004 numeric, p0110005 numeric, p0110006 numeric, p0110007 numeric, p0110008 numeric, p0110009 numeric, 
	p0110010 numeric, p0110011 numeric, p0110012 numeric, p0110013 numeric, p0110014 numeric, p0110015 numeric, p0110016 numeric, p0110017 numeric, p0110018 numeric, p0110019 numeric, 
	p0110020 numeric, p0110021 numeric, p0110022 numeric, p0110023 numeric, p0110024 numeric, p0110025 numeric, p0110026 numeric, p0110027 numeric, p0110028 numeric, p0110029 numeric, 
	p0110030 numeric, p0110031 numeric, p0110032 numeric, p0110033 numeric, p0110034 numeric, p0110035 numeric, p0110036 numeric, p0110037 numeric, p0110038 numeric, p0110039 numeric, 
	p0110040 numeric, p0110041 numeric, p0110042 numeric, p0110043 numeric, p0110044 numeric, p0110045 numeric, p0110046 numeric, p0110047 numeric, p0110048 numeric, p0110049 numeric, 
	p0110050 numeric, p0110051 numeric, p0110052 numeric, p0110053 numeric, p0110054 numeric, p0110055 numeric, p0110056 numeric, p0110057 numeric, p0110058 numeric, p0110059 numeric, 
	p0110060 numeric, p0110061 numeric, p0110062 numeric, p0110063 numeric, p0110064 numeric, p0110065 numeric, p0110066 numeric, p0110067 numeric, p0110068 numeric, p0110069 numeric, 
	p0110070 numeric, p0110071 numeric, p0110072 numeric, p0110073 numeric, 
	p0120001 numeric, p0120002 numeric, p0120003 numeric, p0120004 numeric, p0120005 numeric, p0120006 numeric, p0120007 numeric, p0120008 numeric, p0120009 numeric, 
	p0120010 numeric, p0120011 numeric, p0120012 numeric, p0120013 numeric, p0120014 numeric, p0120015 numeric, p0120016 numeric, p0120017 numeric, p0120018 numeric, p0120019 numeric, 
	p0120020 numeric, p0120021 numeric, p0120022 numeric, p0120023 numeric, p0120024 numeric, p0120025 numeric, p0120026 numeric, p0120027 numeric, p0120028 numeric, p0120029 numeric, 
	p0120030 numeric, p0120031 numeric, p0120032 numeric, p0120033 numeric, p0120034 numeric, p0120035 numeric, p0120036 numeric, p0120037 numeric, p0120038 numeric, p0120039 numeric, 
	p0120040 numeric, p0120041 numeric, p0120042 numeric, p0120043 numeric, p0120044 numeric, p0120045 numeric, p0120046 numeric, p0120047 numeric, p0120048 numeric, p0120049 numeric, 
	p0130001 numeric, p0130002 numeric, p0130003 numeric,
	p0140001 numeric, p0140002 numeric, p0140003 numeric, p0140004 numeric, p0140005 numeric, p0140006 numeric, p0140007 numeric, p0140008 numeric, p0140009 numeric, 
	p0140010 numeric, p0140011 numeric, p0140012 numeric, p0140013 numeric, p0140014 numeric, p0140015 numeric, p0140016 numeric, p0140017 numeric, p0140018 numeric, p0140019 numeric, 
	p0140020 numeric, p0140021 numeric, p0140022 numeric, p0140023 numeric, p0140024 numeric, p0140025 numeric, p0140026 numeric, p0140027 numeric, p0140028 numeric, p0140029 numeric, 
	p0140030 numeric, p0140031 numeric, p0140032 numeric, p0140033 numeric, p0140034 numeric, p0140035 numeric, p0140036 numeric, p0140037 numeric, p0140038 numeric, p0140039 numeric, 
	p0140040 numeric, p0140041 numeric, p0140042 numeric, p0140043 numeric 
	) WITH ( OIDS=TRUE ); 
	ALTER TABLE census.sf1_file04_11 OWNER TO mike; 
	COMMENT ON TABLE census.sf1_file04_11 IS 'Source downloaded from ## on ##'; 

COPY census.sf1_file04_11 
	from './dc2010.sf1/dc000042010.sf1' 
	delimiter ',' csv;
