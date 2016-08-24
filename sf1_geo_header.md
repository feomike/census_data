this is the geographic header file document

source description is this file - http://www.census.gov/prod/cen2010/doc/sf1.pdf

to load the state geographic header file (a fixed field format) use the
	below field separations.

Figure 2-5.
Geographic Header Record—Summary File 1 State

| Num | Field | Name | Size | Start Position | Data Type |
|-----|-------|------|------|----------------|-----------|
|1|File Identification|FILEID | 6 | 1 | A/N | 
|2|State/U.S. Abbreviation (USPS) | STUSAB | 2 | 7 | A |
|3|Summary Level | SUMLEV | 3 | 9 | A/N |
|4|Geographic Component | GEOCOMP | 2 | 12 | A/N |
|5|Characteristic Iteration | CHARITER | 3 | 14 | A/N |
|6|Characteristic Iteration File Sequence Number | CIFSN | 2 | 17 | A/N |
|7Logical Record Number | LOGRECNO | 7 | 19 | N |
|8|Region | REGION | 1 | 26 | A/N |
|9|Division | DIVISION | 1 | 27 | A/N |
|10|State (FIPS) | STATE | 2 | 28 | A/N |
|11|County | COUNTY | 3 | 30 | A/N |
|12|FIPS County Class Code | COUNTYCC | 2 | 33 | A/N |
|13|County Size Code | COUNTYSC | 2 | 35 | A/N |
|14|County Subdivision (FIPS) | COUSUB | 5 | 37 | A/N |
|15FIPS County Subdivision Class Code | COUSUBCC | 2 | 42 | A/N |
|16|County Subdivision Size Code | COUSUBSC | 2 | 44 | A/N |
|17|Place (FIPS) | PLACE | 5 | 46 | A/N |
|18|FIPS Place Class Code | PLACECC | 2 | 51 | A/N |
|19|Place Size Code | PLACESC | 2 | 53 | A/N |
|20|Census Tract | TRACT | 6 | 55 | A/N |
|21|Block Group | BLKGRP | 1 | 61 |A/N |
|22|Block | BLOCK | 4 | 62 | A/N |
|23|Internal Use Code | IUC | 2 | 66 | A/N |
|24|Consolidated City (FIPS) | CONCIT | 5 | 68 | A/N |
|25|FIPS Consolidated City Class Code | CONCITCC | 2 | 73 | A/N |
|26|Consolidated City Size Code | CONCITSC | 2 | 75 | A/N |
|27|American Indian Area/Alaska Native Area/Hawaiian Home Land (Census) | AIANHH | 4 | 77 | A/N |
|28|American Indian Area/Alaska Native Area/Hawaiian Home Land (FIPS) | AIANHHFP | 5 | 81 | A/N |
|29|FIPS American Indian Area/Alaska NativeArea/Hawaiian Home Land ClassCode | AIANHHCC | 2 | 86 | A/N |
|29|American Indian Trust Land/HawaiianHome Land Indicator | AIHHTLI | 1 | 88 | A/N |
|30|American Indian Tribal Subdivision(Census) | AITSCE | 3 | 89 | A/N |
|31|American Indian Tribal Subdivision(FIPS) | AITS | 5 | 92 | A/N | 
|32|FIPS American Indian Tribal Subdivision Class Code | AITSCC | 2 | 97 | A/N |
|33|Tribal Census Tract | TTRACT | 6 | 99 | A/N |
|34|Tribal Block Group | TBLKGRP | 1 | 105 | A/N |
|35|Alaska Native Regional Corporation (FIPS) | ANRC | 5 | 106 | A/N |
|36|FIPS Alaska Native Regional Corporation Class Code | ANRCCC | 2 | 111 | A/N |
|37|Metropolitan Statistical Area/Micropolitan Statistical Area | CBSA | 5 | 113 | A/N |
|38|Metropolitan Statistical Area/Micropolitan Statistical Area Size Code | CBSASC | 2 | 118 | A/N |
|39|Metropolitan Division | METDIV | 5 | 120 | A/N |
|40|Combined Statistical Area | CSA | 3 | 125 | A/N |
|41|New England City and Town Area | NECTA | 5 | 128 | A/N |
|42|New England City and Town Area SizeCode | NECTASC | 2 | 133 | A/N |
|43|New England City and Town Area Division | NECTADIV | 5 | 135 | A/N |
|44|Combined New England City and Town Area | CNECTA | 3 | 140 | A/N |
|45|Metropolitan Statistical Area/Micropolitan Statistical Area Principal City Indicator | CBSAPCI | 1 | 143 | A/N |
|46|New England City and Town Area Principal City Indicator | NECTAPCI | 1 | 144 | A/N |
|47|Urban Area | UA | 5 | 145 | A/N |
|48|Urban Area Size Code | UASC | 2 | 150 | A/N |
|49|Urban Area Type | UATYPE | 1 | 152 | A/N |
|50|Urban/Rural | UR | 1 | 153 | A/N |
|51|Congressional District (111th) | CD | 2 | 154 | A/N |
|52|State Legislative District (Upper Chamber) (Year 1) | SLDU | 3 | 156 | A/N |
|53|State Legislative District (Lower Chamber) (Year 1) | SLDL | 3 | 159 | A/N |
|54|Voting District | VTD | 6 | 162 | A/N |
|55|Voting District Indicator | VTDI | 1 | 168 | A/N |
|56|Reserved | RESERVE2 | 3 | 169 | A/N |
|57|ZIP Code Tabulation Area (5-Digit) | ZCTA5 | 5 | 172 | A/N |
|58|Subminor Civil Division (FIPS) | SUBMCD | 5 | 177 | A/N |
|59|FIPS Subminor Civil Division Class Code | SUBMCDCC | 2 | 182 | A/N |
|60|School District (Elementary) | SDELM | 5 | 184 | A/N |
|61|School District (Secondary) | SDSEC | 5 | 189 | A/N |
|62|School District (Unified) | SDUNI | 5 | 194 | A/N |
|63|Area (Land) | AREALAND | 14 | 199 | N |
|64|Area (Water) | AREAWATR | 14 | 213 | N |
|65|Area Name-Legal/Statistical Area Description (LSAD) Term-Part Indicator | NAME | 90 | 227 | A/N |
|66|Functional Status Code | FUNCSTAT | 1 | 317 | A/N |
|67|Geographic Change User Note Indicator | GCUNI | 1 | 318 | A/N |
|68|Population Count (100%) | POP100 | 9 | 319 | N |
|69|Housing Unit Count (100%) | HU100 | 9 | 328 | N |
|70|Internal Point (Latitude) | INTPTLAT | 11 | 337 | A/N |
|71|Internal Point (Longitude) | INTPTLON | 12 | 348 | A/N |
|72|Legal/Statistical Area Description Code | LSADC | 2 | 360 | A/N |
|73|Part Flag | PARTFLAG | 1 | 362 | A/N |
|74|Reserved | RESERVE3 | 6 | 363 | A/N |
|75|Urban Growth Area | UGA | 5 | 369 | A/N |
|76|State (ANSI) | STATENS | 8 | 374 | A/N |
|77|County (ANSI) | COUNTYNS | 8 | 382 | A/N |
|78|County Subdivision (ANSI) | COUSUBNS | 8 | 390 | A/N |
|79|Place (ANSI) | PLACENS | 8 | 398 | A/N |
|80|Consolidated City (ANSI) | CONCITNS | 8 | 406 | A/N |
|81|American Indian Area/Alaska Native Area/Hawaiian Home Land (ANSI) | AIANHHNS | 8 | 414 | A/N |
|82|American Indian Tribal Subdivision (ANSI) | AITSNS | 8 | 422 | A/N |
|83|Alaska Native Regional Corporation (ANSI) | ANRCNS | 8 | 430 | A/N |
|84|Subminor Civil Division (ANSI) | SUBMCDNS | 8 | 438 | A/N |
|85|Congressional District (113th) | CD113 | 2 | 446 | A/N |
|86|Congressional District (114th) | CD114 | 2 | 448 | A/N |
|87|Congressional District (115th) | CD115 | 2 | 450 | A/N |
|88|State Legislative District (Upper Chamber) (Year 2) | SLDU2 | 3 | 452 | A/N |
|89|State Legislative District (Upper Chamber) (Year 3) | SLDU3 | 3 | 455 | A/N |
|90|State Legislative District (Upper Chamber) (Year 4) | SLDU4 | 3 | 458 | A/N |
|91|State Legislative District (Lower Chamber) (Year 2) | SLDL2 | 3 | 461 | A/N |
|92|State Legislative District (Lower Chamber) (Year 3) | SLDL3 | 3 | 464 | A/N |
|93|State Legislative District (Lower Chamber) (Year 4) | SLDL4 | 3 | 467 | A/N |
|94|American Indian Area/Alaska Native Area/Hawaiian Home Land Size Code | AIANHHSC | 2 | 470 | A/N |
|95|Combined Statistical Area Size Code | CSASC | 2 | 472 | A/N |
|96|Combined NECTA Size Code | CNECTASC | 2 | 474 | A/N |
|97|Metropolitan/Micropolitan Indicator | MEMI | 1 | 476 | A/N |
|98|NECTA Metropolitan/Micropolitan Indicator | NMEMI | 1 |477 | A/N |
|99|Public Use Microdata Area | PUMA | 5 | 478 | A/N |
|100|Reserved | RESERVED | 18 | 483 | A/N |
