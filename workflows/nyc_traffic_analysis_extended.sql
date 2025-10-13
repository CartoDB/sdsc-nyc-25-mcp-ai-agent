CREATE OR REPLACE PROCEDURE
  `cartodb-on-gcp-pm-team.carto_workspace.wfproc_api_236dfc12072ff54c`(
)
BEGIN
  /*
   {"diagramJson":"{\"title\":\"nyc_traffic_analysis_extended\",\"description\":\"\",\"nodes\":[{\"id\":\"402fe84f-7ad5-4824-8716-3058a31ab25e\",\"data\":{\"name\":\"native.customsql\",\"type\":\"generic\",\"label\":\"Custom SQL Select\",\"title\":\"\",\"inputs\":[{\"name\":\"sourcea\",\"type\":\"Table\",\"title\":\"Source table a\",\"optional\":true,\"description\":\"Source table a\"},{\"name\":\"sourceb\",\"type\":\"Table\",\"title\":\"Source table b\",\"optional\":true,\"description\":\"Source table b\"},{\"name\":\"sourcec\",\"type\":\"Table\",\"title\":\"Source table c\",\"optional\":true,\"description\":\"Source table c\"},{\"name\":\"sql\",\"type\":\"StringSql\",\"title\":\"SQL SELECT statement\",\"mode\":\"multiline\",\"placeholder\":\"SELECT ST_Centroid(geom) AS geom,\\n  AVG(value) AS average_value,\\n  category\\nFROM $a\\nGROUP BY category\",\"allowExpressions\":false,\"description\":\"SQL SELECT statement\",\"value\":\"SELECT ST_GEOGFROMTEXT(@area_of_interest) as geom\"}],\"version\":\"2.0.0\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":48,\"y\":1056},\"selected\":false},{\"id\":\"6539e650-603d-4062-a481-bdc9f602412d\",\"data\":{\"name\":\"Note\",\"color\":\"#9EB9F3\",\"genAi\":false,\"label\":\"\",\"width\":959.985,\"height\":303.989,\"inputs\":[],\"markdown\":\"---\\nlabel:\\n---\\n## Traffic Counts (Before/After)\\n\",\"position\":{\"x\":480,\"y\":224}},\"type\":\"note\",\"zIndex\":-1,\"position\":{\"x\":480,\"y\":224},\"selected\":false},{\"id\":\"3565e5a5-c7e8-4d84-8f03-21d08cad5532\",\"data\":{\"name\":\"Note\",\"color\":\"#FE88B1\",\"genAi\":false,\"label\":\"\",\"width\":495.988,\"height\":415.999,\"inputs\":[],\"markdown\":\"---\\nlabel:\\n---\\n## Area of Interest (AOI)\\n\\nExtract input `area_of_interest` by user to perform analysis. \",\"position\":{\"x\":-167.363,\"y\":275.376}},\"type\":\"note\",\"zIndex\":-1,\"position\":{\"x\":-32,\"y\":752},\"selected\":false},{\"id\":\"f65ae5e7-82a0-48d3-9a3b-192481a638c2\",\"data\":{\"name\":\"Note\",\"color\":\"#9EB9F3\",\"genAi\":false,\"label\":\"\",\"width\":959.991,\"height\":303.98699999999997,\"inputs\":[],\"markdown\":\"---\\nlabel:\\n---\\n## Traffic Collisions (Before/After)\\n\",\"position\":{\"x\":480,\"y\":544}},\"type\":\"note\",\"zIndex\":-1,\"position\":{\"x\":480,\"y\":544},\"selected\":false},{\"id\":\"630982ec-fc3b-4d12-93ef-70bdfc8ee118\",\"data\":{\"name\":\"Note\",\"color\":\"#9EB9F3\",\"genAi\":false,\"label\":\"\",\"width\":959.991,\"height\":303.98699999999997,\"inputs\":[],\"markdown\":\"---\\nlabel:\\n---\\n## Air Quality (Before/After)\\n\",\"position\":{\"x\":480,\"y\":864}},\"type\":\"note\",\"zIndex\":-1,\"position\":{\"x\":480,\"y\":864},\"selected\":false},{\"id\":\"2902d432-41dd-44b2-9cff-c4925b140235\",\"data\":{\"name\":\"native.join\",\"type\":\"generic\",\"label\":\"Join\",\"inputs\":[{\"name\":\"maintable\",\"type\":\"Table\",\"title\":\"Main table\",\"description\":\"Main table\"},{\"name\":\"secondarytable\",\"type\":\"Table\",\"title\":\"Secondary table\",\"description\":\"Secondary table\"},{\"name\":\"maincolumn\",\"type\":\"Column\",\"title\":\"Column in main table\",\"parent\":\"maintable\",\"dataType\":[\"boolean\",\"date\",\"datetime\",\"time\",\"timestamp\",\"number\",\"string\"],\"description\":\"Column in main table\",\"value\":\"period\"},{\"name\":\"secondarycolumn\",\"type\":\"Column\",\"title\":\"Column in secondary table\",\"parent\":\"secondarytable\",\"dataType\":[\"boolean\",\"date\",\"datetime\",\"time\",\"timestamp\",\"number\",\"string\"],\"description\":\"Column in secondary table\",\"value\":\"period\"},{\"name\":\"jointype\",\"type\":\"Selection\",\"title\":\"Join type\",\"options\":[\"Inner\",\"Left\",\"Right\",\"Full outer\"],\"default\":\"Inner\",\"description\":\"Join type\",\"value\":\"Right\"}],\"version\":\"1.2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1584,\"y\":672},\"selected\":false},{\"id\":\"97c3444c-cfd1-4100-84a2-991b4747b2bc\",\"data\":{\"name\":\"native.join\",\"type\":\"generic\",\"label\":\"Join\",\"inputs\":[{\"name\":\"maintable\",\"type\":\"Table\",\"title\":\"Main table\",\"description\":\"Main table\"},{\"name\":\"secondarytable\",\"type\":\"Table\",\"title\":\"Secondary table\",\"description\":\"Secondary table\"},{\"name\":\"maincolumn\",\"type\":\"Column\",\"title\":\"Column in main table\",\"parent\":\"maintable\",\"dataType\":[\"boolean\",\"date\",\"datetime\",\"time\",\"timestamp\",\"number\",\"string\"],\"description\":\"Column in main table\",\"value\":\"period\"},{\"name\":\"secondarycolumn\",\"type\":\"Column\",\"title\":\"Column in secondary table\",\"parent\":\"secondarytable\",\"dataType\":[\"boolean\",\"date\",\"datetime\",\"time\",\"timestamp\",\"number\",\"string\"],\"description\":\"Column in secondary table\",\"value\":\"period\"},{\"name\":\"jointype\",\"type\":\"Selection\",\"title\":\"Join type\",\"options\":[\"Inner\",\"Left\",\"Right\",\"Full outer\"],\"default\":\"Inner\",\"description\":\"Join type\",\"value\":\"Right\"}],\"version\":\"1.2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1904,\"y\":736},\"selected\":false},{\"id\":\"5dfa359d-3842-44e6-b722-9e8f6647f581\",\"data\":{\"name\":\"Note\",\"color\":\"#F6CF71\",\"genAi\":false,\"label\":\"\",\"width\":784,\"height\":463.98999999999995,\"inputs\":[],\"markdown\":\"---\\nlabel:\\n---\\n## Prepare Insights\\n\",\"position\":{\"x\":1456,\"y\":464}},\"type\":\"note\",\"zIndex\":-1,\"position\":{\"x\":1456,\"y\":464},\"selected\":false},{\"id\":\"23eca300-bea3-4df4-81e2-f0b2ea33ba81\",\"data\":{\"name\":\"native.mcptooloutput\",\"type\":\"generic\",\"label\":\"MCP Tool Output\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"mode\",\"type\":\"Selection\",\"mode\":\"radio\",\"title\":\"Output type\",\"options\":[{\"icon\":\"sync\",\"name\":\"Sync\",\"value\":\"sync\",\"description\":\"Outputs a JSON object with the data and the FQN of the result when the tool is invoked.\"},{\"icon\":\"async\",\"name\":\"Async\",\"value\":\"async\",\"description\":\"When invoked, creates a job and outputs a JSON object with job metadata, including the result table FQN. The result is available once the job is complete.\"}],\"value\":\"async\",\"default\":\"async\",\"allowExpressions\":false,\"description\":\"Output type\"}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":2416,\"y\":736},\"selected\":false},{\"id\":\"af9ec39e-7c89-4244-a245-b69893f4ae5d\",\"data\":{\"name\":\"Note\",\"color\":\"#8BE0A4\",\"genAi\":false,\"label\":\"\",\"width\":383.98699999999997,\"height\":463.989,\"inputs\":[],\"markdown\":\"---\\nlabel:\\n---\\n## MCP Output (Sync Mode)\\nDefine the execution mode for MCP output. \",\"position\":{\"x\":2288,\"y\":464}},\"type\":\"note\",\"zIndex\":-1,\"position\":{\"x\":2256,\"y\":464},\"selected\":false},{\"id\":\"d18f159a-0576-4b60-a121-e5956c211d97\",\"data\":{\"id\":\"carto-demo-data.demo_tables.nyc_air_quality\",\"name\":\"ReadTable\",\"type\":\"table\",\"label\":\"nyc_air_quality\",\"inputs\":[{\"name\":\"source\",\"type\":\"String\",\"title\":\"Source table\",\"value\":\"carto-demo-data.demo_tables.nyc_air_quality\",\"description\":\"Read Table\"}]},\"type\":\"source\",\"zIndex\":2,\"position\":{\"x\":512,\"y\":1008},\"selected\":false},{\"id\":\"094f977b-fdce-458c-9d9c-41b427ccd808\",\"data\":{\"id\":\"carto-demo-data.demo_tables.nyc_collisions\",\"name\":\"ReadTable\",\"type\":\"table\",\"label\":\"nyc_collisions\",\"inputs\":[{\"name\":\"source\",\"type\":\"String\",\"title\":\"Source table\",\"value\":\"carto-demo-data.demo_tables.nyc_collisions\",\"description\":\"Read Table\"}]},\"type\":\"source\",\"zIndex\":2,\"position\":{\"x\":512,\"y\":688},\"selected\":false},{\"id\":\"29bae79f-99d9-42d9-ab1a-5ade7986214d\",\"data\":{\"id\":\"carto-demo-data.demo_tables.nyc_traffic_counts\",\"name\":\"ReadTable\",\"type\":\"table\",\"label\":\"nyc_traffic_counts\",\"inputs\":[{\"name\":\"source\",\"type\":\"String\",\"title\":\"Source table\",\"value\":\"carto-demo-data.demo_tables.nyc_traffic_counts\",\"description\":\"Read Table\"}]},\"type\":\"source\",\"zIndex\":2,\"position\":{\"x\":512,\"y\":368},\"selected\":false},{\"id\":\"8ba57150-136a-4aae-a468-4cf2b91b912b\",\"data\":{\"name\":\"native.spatialfilter\",\"type\":\"generic\",\"label\":\"Spatial Filter\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"filter\",\"type\":\"Table\",\"title\":\"Filter table\",\"description\":\"Filter table\"},{\"name\":\"geosource\",\"type\":\"Column\",\"title\":\"Geo column in source table\",\"parent\":\"source\",\"dataType\":[\"geography\"],\"description\":\"Geo column in source table\",\"value\":\"geom\"},{\"name\":\"geofilter\",\"type\":\"Column\",\"title\":\"Geo column in filter table\",\"parent\":\"filter\",\"dataType\":[\"geography\"],\"description\":\"Geo column in filter table\",\"value\":\"geom\"},{\"name\":\"predicate\",\"type\":\"Selection\",\"title\":\"Spatial predicate\",\"default\":\"intersects\",\"optional\":true,\"options\":[\"intersects\",\"contains\",\"within\",\"covers\"],\"description\":\"Spatial predicate\",\"value\":\"intersects\"}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":784,\"y\":416},\"selected\":false},{\"id\":\"5f96fdbf-5492-44e6-ad6f-8fe594d2b00d\",\"data\":{\"name\":\"native.spatialfilter\",\"type\":\"generic\",\"label\":\"Spatial Filter\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"filter\",\"type\":\"Table\",\"title\":\"Filter table\",\"description\":\"Filter table\"},{\"name\":\"geosource\",\"type\":\"Column\",\"title\":\"Geo column in source table\",\"parent\":\"source\",\"dataType\":[\"geography\"],\"description\":\"Geo column in source table\",\"value\":\"geom\"},{\"name\":\"geofilter\",\"type\":\"Column\",\"title\":\"Geo column in filter table\",\"parent\":\"filter\",\"dataType\":[\"geography\"],\"description\":\"Geo column in filter table\",\"value\":\"geom\"},{\"name\":\"predicate\",\"type\":\"Selection\",\"title\":\"Spatial predicate\",\"default\":\"intersects\",\"optional\":true,\"options\":[\"intersects\",\"contains\",\"within\",\"covers\"],\"description\":\"Spatial predicate\",\"value\":\"intersects\"}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":800,\"y\":736},\"selected\":false},{\"id\":\"b87dff01-7d2d-4863-87b8-077a9a97554d\",\"data\":{\"name\":\"native.spatialfilter\",\"type\":\"generic\",\"label\":\"Spatial Filter\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"filter\",\"type\":\"Table\",\"title\":\"Filter table\",\"description\":\"Filter table\"},{\"name\":\"geosource\",\"type\":\"Column\",\"title\":\"Geo column in source table\",\"parent\":\"source\",\"dataType\":[\"geography\"],\"description\":\"Geo column in source table\",\"value\":\"geom\"},{\"name\":\"geofilter\",\"type\":\"Column\",\"title\":\"Geo column in filter table\",\"parent\":\"filter\",\"dataType\":[\"geography\"],\"description\":\"Geo column in filter table\",\"value\":\"geom\"},{\"name\":\"predicate\",\"type\":\"Selection\",\"title\":\"Spatial predicate\",\"default\":\"intersects\",\"optional\":true,\"options\":[\"intersects\",\"contains\",\"within\",\"covers\"],\"description\":\"Spatial predicate\",\"value\":\"intersects\"}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":800,\"y\":1056},\"selected\":false},{\"id\":\"1389d214-eb8f-4f19-b2a1-57ed1c6aa923\",\"data\":{\"name\":\"native.cast\",\"type\":\"generic\",\"label\":\"Cast\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"optional\":true,\"description\":\"Source table\"},{\"name\":\"column\",\"type\":\"Column\",\"title\":\"Column\",\"parent\":\"source\",\"dataType\":[\"number\",\"string\",\"boolean\",\"date\",\"time\",\"datetime\",\"timestamp\",\"binary\"],\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"Column\",\"value\":\"datetime\"},{\"name\":\"newtype\",\"type\":\"SelectionType\",\"title\":\"New type\",\"parent\":\"column\",\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"New type\",\"value\":\"DATETIME\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":896,\"y\":416},\"selected\":false},{\"id\":\"6be65f2e-531c-4519-a73b-a9a4a7157488\",\"data\":{\"name\":\"native.casewhen\",\"type\":\"generic\",\"label\":\"Case When\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"conditions\",\"type\":\"Condition\",\"parent\":\"source\",\"title\":\"Conditions and returns\",\"placeholder\":\"workflows.parameterForm.selectAColumn\",\"description\":\"Conditions and returns\",\"value\":\"[{\\\"column\\\":\\\"datetime\\\",\\\"conditions\\\":[{\\\"condition\\\":\\\"<\\\",\\\"value\\\":\\\"2025-01-05 00:00:00\\\",\\\"return\\\":\\\"Before\\\"}]}]\"},{\"name\":\"else\",\"type\":\"String\",\"title\":\"Else\",\"placeholder\":\"workflows.parameterForm.returnValue\",\"optional\":true,\"helper\":\"workflows.parameterForm.elseHelper\",\"allowExpressions\":true,\"description\":\"Else\",\"value\":\"After\"},{\"name\":\"newcolumn\",\"type\":\"String\",\"title\":\"Name for new column\",\"placeholder\":\"workflows.parameterForm.returnColumn\",\"trimSpaces\":true,\"default\":\"new_column\",\"allowExpressions\":false,\"description\":\"Name for new column\",\"value\":\"period\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1168,\"y\":416},\"selected\":false},{\"id\":\"ac3c4d68-3de4-44d7-b641-a11ec1fce108\",\"data\":{\"name\":\"native.groupby\",\"type\":\"generic\",\"label\":\"Group by\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"columns\",\"type\":\"SelectColumnAggregation\",\"title\":\"Aggregation\",\"parent\":\"source\",\"placeholder\":\"workflows.parameterForm.selectAField\",\"allowExpression\":false,\"description\":\"Aggregation\",\"value\":\"vol_joined,sum\"},{\"name\":\"groupby\",\"type\":\"Column\",\"title\":\"Group by\",\"parent\":\"source\",\"mode\":\"multiple\",\"dataType\":[\"boolean\",\"number\",\"string\",\"date\",\"datetime\",\"time\",\"timestamp\"],\"noDefault\":true,\"maxSelectionsCount\":null,\"description\":\"Group by\",\"value\":[\"period\"]}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1296,\"y\":416},\"selected\":false},{\"id\":\"01543d38-1a7b-4d8d-8245-efc85c66b685\",\"data\":{\"name\":\"native.refactorcolumns\",\"type\":\"generic\",\"label\":\"Edit Schema\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"columns\",\"type\":\"SelectColumnType\",\"title\":\"Column name and type\",\"parent\":\"source\",\"noDefault\":true,\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"Column name and type\",\"value\":\"period_joined,period,STRING\\ncollision_id_count_joined,total_collisions,FLOAT64\\nvol_joined_sum,total_traffic_counts,FLOAT64\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1696,\"y\":672},\"selected\":false},{\"id\":\"0a4f057c-6151-4ce6-be1f-b5b7d7b640ea\",\"data\":{\"name\":\"native.refactorcolumns\",\"type\":\"generic\",\"label\":\"Edit Schema\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"columns\",\"type\":\"SelectColumnType\",\"title\":\"Column name and type\",\"parent\":\"source\",\"noDefault\":true,\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"Column name and type\",\"value\":\"period_joined,period,STRING\\nvalue_avg_joined,avg_polution,FLOAT64\\ntotal_collisions,total_collisions,FLOAT64\\ntotal_traffic_counts,total_traffic_counts,FLOAT64\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":2016,\"y\":736},\"selected\":false},{\"id\":\"a05c6a7f-299e-4723-a177-ccd74378dd63\",\"data\":{\"name\":\"native.cast\",\"type\":\"generic\",\"label\":\"Cast\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"optional\":true,\"description\":\"Source table\"},{\"name\":\"column\",\"type\":\"Column\",\"title\":\"Column\",\"parent\":\"source\",\"dataType\":[\"number\",\"string\",\"boolean\",\"date\",\"time\",\"datetime\",\"timestamp\",\"binary\"],\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"Column\",\"value\":\"crash_datetime\"},{\"name\":\"newtype\",\"type\":\"SelectionType\",\"title\":\"New type\",\"parent\":\"column\",\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"New type\",\"value\":\"DATETIME\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":912,\"y\":736},\"selected\":false},{\"id\":\"46cb20f0-5c30-41d6-af36-87b7ca381e63\",\"data\":{\"name\":\"native.casewhen\",\"type\":\"generic\",\"label\":\"Case When\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"conditions\",\"type\":\"Condition\",\"parent\":\"source\",\"title\":\"Conditions and returns\",\"placeholder\":\"workflows.parameterForm.selectAColumn\",\"description\":\"Conditions and returns\",\"value\":\"[{\\\"column\\\":\\\"crash_datetime\\\",\\\"conditions\\\":[{\\\"condition\\\":\\\"<\\\",\\\"value\\\":\\\"2025-01-05 00:00:00\\\",\\\"return\\\":\\\"Before\\\"}]}]\"},{\"name\":\"else\",\"type\":\"String\",\"title\":\"Else\",\"placeholder\":\"workflows.parameterForm.returnValue\",\"optional\":true,\"helper\":\"workflows.parameterForm.elseHelper\",\"allowExpressions\":true,\"description\":\"Else\",\"value\":\"After\"},{\"name\":\"newcolumn\",\"type\":\"String\",\"title\":\"Name for new column\",\"placeholder\":\"workflows.parameterForm.returnColumn\",\"trimSpaces\":true,\"default\":\"new_column\",\"allowExpressions\":false,\"description\":\"Name for new column\",\"value\":\"period\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1168,\"y\":736},\"selected\":false},{\"id\":\"80d8afea-0707-4594-ae7c-b8ee677fd246\",\"data\":{\"name\":\"native.groupby\",\"type\":\"generic\",\"label\":\"Group by\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"columns\",\"type\":\"SelectColumnAggregation\",\"title\":\"Aggregation\",\"parent\":\"source\",\"placeholder\":\"workflows.parameterForm.selectAField\",\"allowExpression\":false,\"description\":\"Aggregation\",\"value\":\"collision_id,count\"},{\"name\":\"groupby\",\"type\":\"Column\",\"title\":\"Group by\",\"parent\":\"source\",\"mode\":\"multiple\",\"dataType\":[\"boolean\",\"number\",\"string\",\"date\",\"datetime\",\"time\",\"timestamp\"],\"noDefault\":true,\"maxSelectionsCount\":null,\"description\":\"Group by\",\"value\":[\"period\"]}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1296,\"y\":736},\"selected\":false},{\"id\":\"17564e26-bfa3-4ba5-ac3a-8e825b521d24\",\"data\":{\"name\":\"native.cast\",\"type\":\"generic\",\"label\":\"Cast\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"optional\":true,\"description\":\"Source table\"},{\"name\":\"column\",\"type\":\"Column\",\"title\":\"Column\",\"parent\":\"source\",\"dataType\":[\"number\",\"string\",\"boolean\",\"date\",\"time\",\"datetime\",\"timestamp\",\"binary\"],\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"Column\",\"value\":\"datetime\"},{\"name\":\"newtype\",\"type\":\"SelectionType\",\"title\":\"New type\",\"parent\":\"column\",\"providers\":[\"bigquery\",\"snowflake\",\"redshift\",\"postgres\"],\"description\":\"New type\",\"value\":\"DATETIME\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":912,\"y\":1056},\"selected\":false},{\"id\":\"540bd274-00b2-4498-a3f2-c0fd60eec597\",\"data\":{\"name\":\"native.casewhen\",\"type\":\"generic\",\"label\":\"Case When\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"conditions\",\"type\":\"Condition\",\"parent\":\"source\",\"title\":\"Conditions and returns\",\"placeholder\":\"workflows.parameterForm.selectAColumn\",\"description\":\"Conditions and returns\",\"value\":\"[{\\\"column\\\":\\\"datetime\\\",\\\"conditions\\\":[{\\\"condition\\\":\\\"<\\\",\\\"value\\\":\\\"2025-01-05 00:00:00\\\",\\\"return\\\":\\\"Before\\\"}]}]\"},{\"name\":\"else\",\"type\":\"String\",\"title\":\"Else\",\"placeholder\":\"workflows.parameterForm.returnValue\",\"optional\":true,\"helper\":\"workflows.parameterForm.elseHelper\",\"allowExpressions\":true,\"description\":\"Else\",\"value\":\"After\"},{\"name\":\"newcolumn\",\"type\":\"String\",\"title\":\"Name for new column\",\"placeholder\":\"workflows.parameterForm.returnColumn\",\"trimSpaces\":true,\"default\":\"new_column\",\"allowExpressions\":false,\"description\":\"Name for new column\",\"value\":\"period\"}],\"version\":\"2\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1168,\"y\":1056},\"selected\":false},{\"id\":\"e2a98212-d5d5-4eb0-8ff4-950b1469c694\",\"data\":{\"name\":\"native.groupby\",\"type\":\"generic\",\"label\":\"Group by\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"columns\",\"type\":\"SelectColumnAggregation\",\"title\":\"Aggregation\",\"parent\":\"source\",\"placeholder\":\"workflows.parameterForm.selectAField\",\"allowExpression\":false,\"description\":\"Aggregation\",\"value\":\"value,avg\"},{\"name\":\"groupby\",\"type\":\"Column\",\"title\":\"Group by\",\"parent\":\"source\",\"mode\":\"multiple\",\"dataType\":[\"boolean\",\"number\",\"string\",\"date\",\"datetime\",\"time\",\"timestamp\"],\"noDefault\":true,\"maxSelectionsCount\":null,\"description\":\"Group by\",\"value\":[\"period\"]}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1296,\"y\":1056},\"selected\":false},{\"id\":\"944b1e30-90f1-4f6b-993e-bc77a5738ae7\",\"data\":{\"name\":\"native.customsql\",\"type\":\"generic\",\"label\":\"Custom SQL Select\",\"title\":\"Filter dates\",\"inputs\":[{\"name\":\"sourcea\",\"type\":\"Table\",\"title\":\"Source table a\",\"optional\":true,\"description\":\"Source table a\"},{\"name\":\"sourceb\",\"type\":\"Table\",\"title\":\"Source table b\",\"optional\":true,\"description\":\"Source table b\"},{\"name\":\"sourcec\",\"type\":\"Table\",\"title\":\"Source table c\",\"optional\":true,\"description\":\"Source table c\"},{\"name\":\"sql\",\"type\":\"StringSql\",\"title\":\"SQL SELECT statement\",\"mode\":\"multiline\",\"placeholder\":\"SELECT ST_Centroid(geom) AS geom,\\n  AVG(value) AS average_value,\\n  category\\nFROM $a\\nGROUP BY category\",\"allowExpressions\":false,\"description\":\"SQL SELECT statement\",\"value\":\"SELECT * from `$a` \\nWHERE\\ndatetime > '2024-10-05 00:00:00'\\nAND\\ndatetime < '2025-04-05 00:00:00'\"}],\"version\":\"2.0.0\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1040,\"y\":416},\"selected\":false},{\"id\":\"8cefa471-1143-4a6e-bca1-d4762db966bc\",\"data\":{\"name\":\"native.customsql\",\"type\":\"generic\",\"label\":\"Custom SQL Select\",\"title\":\"Filter dates\",\"inputs\":[{\"name\":\"sourcea\",\"type\":\"Table\",\"title\":\"Source table a\",\"optional\":true,\"description\":\"Source table a\"},{\"name\":\"sourceb\",\"type\":\"Table\",\"title\":\"Source table b\",\"optional\":true,\"description\":\"Source table b\"},{\"name\":\"sourcec\",\"type\":\"Table\",\"title\":\"Source table c\",\"optional\":true,\"description\":\"Source table c\"},{\"name\":\"sql\",\"type\":\"StringSql\",\"title\":\"SQL SELECT statement\",\"mode\":\"multiline\",\"placeholder\":\"SELECT ST_Centroid(geom) AS geom,\\n  AVG(value) AS average_value,\\n  category\\nFROM $a\\nGROUP BY category\",\"allowExpressions\":false,\"description\":\"SQL SELECT statement\",\"value\":\"SELECT * from `$a` \\nWHERE\\ncrash_datetime > '2024-10-05 00:00:00'\\nAND\\ncrash_datetime < '2025-04-05 00:00:00'\"}],\"version\":\"2.0.0\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1040,\"y\":736},\"selected\":false},{\"id\":\"68987f9c-9a87-4aa5-9596-38751e7cfbe6\",\"data\":{\"name\":\"native.customsql\",\"type\":\"generic\",\"label\":\"Custom SQL Select\",\"title\":\"Filter dates\",\"inputs\":[{\"name\":\"sourcea\",\"type\":\"Table\",\"title\":\"Source table a\",\"optional\":true,\"description\":\"Source table a\"},{\"name\":\"sourceb\",\"type\":\"Table\",\"title\":\"Source table b\",\"optional\":true,\"description\":\"Source table b\"},{\"name\":\"sourcec\",\"type\":\"Table\",\"title\":\"Source table c\",\"optional\":true,\"description\":\"Source table c\"},{\"name\":\"sql\",\"type\":\"StringSql\",\"title\":\"SQL SELECT statement\",\"mode\":\"multiline\",\"placeholder\":\"SELECT ST_Centroid(geom) AS geom,\\n  AVG(value) AS average_value,\\n  category\\nFROM $a\\nGROUP BY category\",\"allowExpressions\":false,\"description\":\"SQL SELECT statement\",\"value\":\"SELECT * from `$a` \\nWHERE\\ndatetime > '2024-10-05 00:00:00'\\nAND\\ndatetime < '2025-04-05 00:00:00'\"}],\"version\":\"2.0.0\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":1040,\"y\":1056},\"selected\":false}],\"edges\":[{\"id\":\"a4868013-f2f8-4059-936a-8f90ee40ec9e\",\"type\":\"default\",\"source\":\"402fe84f-7ad5-4824-8716-3058a31ab25e\",\"target\":\"8ba57150-136a-4aae-a468-4cf2b91b912b\",\"sourceHandle\":\"result\",\"targetHandle\":\"filter\",\"animated\":false},{\"id\":\"0f99fdf9-577f-46ad-8154-9725def7d65d\",\"type\":\"default\",\"source\":\"29bae79f-99d9-42d9-ab1a-5ade7986214d\",\"target\":\"8ba57150-136a-4aae-a468-4cf2b91b912b\",\"sourceHandle\":\"out\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"8431b065-15b1-4e81-ab5a-e459d0b15a2c\",\"type\":\"default\",\"source\":\"402fe84f-7ad5-4824-8716-3058a31ab25e\",\"target\":\"5f96fdbf-5492-44e6-ad6f-8fe594d2b00d\",\"sourceHandle\":\"result\",\"targetHandle\":\"filter\",\"animated\":false},{\"id\":\"553d401c-56c0-43ae-8389-f356e9a0c296\",\"type\":\"default\",\"source\":\"094f977b-fdce-458c-9d9c-41b427ccd808\",\"target\":\"5f96fdbf-5492-44e6-ad6f-8fe594d2b00d\",\"sourceHandle\":\"out\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"9a36d889-2413-4536-8d02-c769cdc67c43\",\"type\":\"default\",\"source\":\"d18f159a-0576-4b60-a121-e5956c211d97\",\"target\":\"b87dff01-7d2d-4863-87b8-077a9a97554d\",\"sourceHandle\":\"out\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"2c6110bb-1a8d-4aae-8fbb-6a774abbfa11\",\"type\":\"default\",\"source\":\"402fe84f-7ad5-4824-8716-3058a31ab25e\",\"target\":\"b87dff01-7d2d-4863-87b8-077a9a97554d\",\"sourceHandle\":\"result\",\"targetHandle\":\"filter\",\"animated\":false},{\"id\":\"cfaddd87-3604-40b0-b5f5-ca03b4c1ba2b\",\"type\":\"default\",\"source\":\"8ba57150-136a-4aae-a468-4cf2b91b912b\",\"target\":\"1389d214-eb8f-4f19-b2a1-57ed1c6aa923\",\"sourceHandle\":\"match\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"c537a8b7-68e0-4170-a00a-2fde7aa9d094\",\"type\":\"default\",\"source\":\"ac3c4d68-3de4-44d7-b641-a11ec1fce108\",\"target\":\"2902d432-41dd-44b2-9cff-c4925b140235\",\"sourceHandle\":\"result\",\"targetHandle\":\"maintable\",\"animated\":false},{\"id\":\"a4b803c2-70a3-4d61-b0bb-a2b90c69a858\",\"type\":\"default\",\"source\":\"6be65f2e-531c-4519-a73b-a9a4a7157488\",\"target\":\"ac3c4d68-3de4-44d7-b641-a11ec1fce108\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"7ae123a1-3fe3-4854-9cca-3e44a5f4e0b7\",\"type\":\"default\",\"source\":\"2902d432-41dd-44b2-9cff-c4925b140235\",\"target\":\"01543d38-1a7b-4d8d-8245-efc85c66b685\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"30cb0d6d-f000-4121-ad71-fa3b1554831c\",\"type\":\"default\",\"source\":\"01543d38-1a7b-4d8d-8245-efc85c66b685\",\"target\":\"97c3444c-cfd1-4100-84a2-991b4747b2bc\",\"sourceHandle\":\"result\",\"targetHandle\":\"maintable\",\"animated\":false},{\"id\":\"7cbc7b1c-bce7-41b1-8dc9-bcf36defda14\",\"type\":\"default\",\"source\":\"97c3444c-cfd1-4100-84a2-991b4747b2bc\",\"target\":\"0a4f057c-6151-4ce6-be1f-b5b7d7b640ea\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"b0ed4da6-f8bb-455b-848d-f753bf108478\",\"type\":\"default\",\"source\":\"0a4f057c-6151-4ce6-be1f-b5b7d7b640ea\",\"target\":\"23eca300-bea3-4df4-81e2-f0b2ea33ba81\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"68c19e17-b265-4696-b4e3-4b4f0708df3d\",\"type\":\"default\",\"source\":\"5f96fdbf-5492-44e6-ad6f-8fe594d2b00d\",\"target\":\"a05c6a7f-299e-4723-a177-ccd74378dd63\",\"sourceHandle\":\"match\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"d068bf8d-b3f3-48aa-9419-7b20be37d73d\",\"type\":\"default\",\"source\":\"46cb20f0-5c30-41d6-af36-87b7ca381e63\",\"target\":\"80d8afea-0707-4594-ae7c-b8ee677fd246\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"5892160e-646a-4bab-b1be-b8304cc108c7\",\"type\":\"default\",\"source\":\"80d8afea-0707-4594-ae7c-b8ee677fd246\",\"target\":\"2902d432-41dd-44b2-9cff-c4925b140235\",\"sourceHandle\":\"result\",\"targetHandle\":\"secondarytable\",\"animated\":false},{\"id\":\"d6b9d20a-2f15-49f8-a87e-103db4223309\",\"type\":\"default\",\"source\":\"b87dff01-7d2d-4863-87b8-077a9a97554d\",\"target\":\"17564e26-bfa3-4ba5-ac3a-8e825b521d24\",\"sourceHandle\":\"match\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"3d46b420-b249-4ed4-8dc2-8f478b931824\",\"type\":\"default\",\"source\":\"540bd274-00b2-4498-a3f2-c0fd60eec597\",\"target\":\"e2a98212-d5d5-4eb0-8ff4-950b1469c694\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"c0f2b68e-2f39-4dba-817b-5ed8e5eb5e2d\",\"type\":\"default\",\"source\":\"e2a98212-d5d5-4eb0-8ff4-950b1469c694\",\"target\":\"97c3444c-cfd1-4100-84a2-991b4747b2bc\",\"sourceHandle\":\"result\",\"targetHandle\":\"secondarytable\",\"animated\":false},{\"id\":\"1480a4ce-31a7-4a10-8695-bddd63e5d7ad\",\"type\":\"default\",\"source\":\"1389d214-eb8f-4f19-b2a1-57ed1c6aa923\",\"target\":\"944b1e30-90f1-4f6b-993e-bc77a5738ae7\",\"sourceHandle\":\"result\",\"targetHandle\":\"sourcea\",\"animated\":false},{\"id\":\"5715d6e2-3450-4adf-85f1-fb00365b6b1e\",\"type\":\"default\",\"source\":\"944b1e30-90f1-4f6b-993e-bc77a5738ae7\",\"target\":\"6be65f2e-531c-4519-a73b-a9a4a7157488\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"77b8f5b7-e46a-4039-8ed4-fe1e5bd2978d\",\"type\":\"default\",\"source\":\"8cefa471-1143-4a6e-bca1-d4762db966bc\",\"target\":\"46cb20f0-5c30-41d6-af36-87b7ca381e63\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"67cec8d8-9916-444b-801b-d1dc19ddea49\",\"type\":\"default\",\"source\":\"a05c6a7f-299e-4723-a177-ccd74378dd63\",\"target\":\"8cefa471-1143-4a6e-bca1-d4762db966bc\",\"sourceHandle\":\"result\",\"targetHandle\":\"sourcea\",\"animated\":false},{\"id\":\"4ecd9a70-f7ef-46b8-bae1-4f45115d3090\",\"type\":\"default\",\"source\":\"68987f9c-9a87-4aa5-9596-38751e7cfbe6\",\"target\":\"540bd274-00b2-4498-a3f2-c0fd60eec597\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false},{\"id\":\"945b49b0-ad53-486b-b0b8-047c25672da8\",\"type\":\"default\",\"source\":\"17564e26-bfa3-4ba5-ac3a-8e825b521d24\",\"target\":\"68987f9c-9a87-4aa5-9596-38751e7cfbe6\",\"sourceHandle\":\"result\",\"targetHandle\":\"sourcea\",\"animated\":false}],\"variables\":[{\"name\":\"area_of_interest\",\"type\":\"String\",\"order\":1,\"value\":\"POLYGON ((-74.010429 40.726055, -74.011116 40.722153, -74.014206 40.712525, -74.016094 40.703025, -74.011803 40.702244, -74.004936 40.705758, -73.996696 40.710052, -73.979874 40.711614, -73.976612 40.715517, -73.974895 40.721372, -73.973179 40.728917, -73.975925 40.734771, -73.974209 40.743876, -73.999615 40.752979, -74.006138 40.748818, -74.009571 40.743095, -74.010429 40.726055))\",\"scopes\":[\"mcptool\"]}],\"procedure\":{},\"schedule\":{},\"viewport\":{\"x\":38.27853662419636,\"y\":-50.439792385903445,\"zoom\":0.2797981266091389},\"schemaVersion\":\"1.0.0\",\"connectionProvider\":\"bigquery\",\"useCache\":true,\"mcpTool\":{\"id\":\"a1906c84-d793-4ee8-8b6c-9bd47e8f3ebd\",\"name\":\"nyc_traffic_analysis_extended\",\"draft\":{\"inputs\":{\"area_of_interest\":{\"description\":\"This parameter must be a WKT string of an area of interest.\"}},\"output\":{\"description\":\"The output contains aggregated collisions, traffic counts and air quality data for the area of interest from before and after the said regulation was approved.\"},\"description\":\"This tool is able to analyze congestion traffic in a specific area of interest in new york city, including collisions, traffic counts and air quality. \\nThe results are for before and after a traffic regulation was applied, so that we can explore how this regulation actually affected traffic.\\nThis tool needs to be used asynchronously, as the analysis will take a bit to be completed.\"},\"inputs\":[{\"name\":\"area_of_interest\",\"type\":\"String\",\"order\":1,\"value\":\"POLYGON ((-74.010429 40.726055, -74.011116 40.722153, -74.014206 40.712525, -74.016094 40.703025, -74.011803 40.702244, -74.004936 40.705758, -73.996696 40.710052, -73.979874 40.711614, -73.976612 40.715517, -73.974895 40.721372, -73.973179 40.728917, -73.975925 40.734771, -73.974209 40.743876, -73.999615 40.752979, -74.006138 40.748818, -74.009571 40.743095, -74.010429 40.726055))\",\"description\":\"This parameter must be a WKT string of an area of interest.\"}],\"output\":{\"method\":\"POST\",\"payload\":{\"q\":\"\",\"query\":\"CALL `cartodb-on-gcp-pm-team.carto_workspace.wfproc_mcptool_236dfc12072ff54c`(@area_of_interest)\",\"queryParameters\":{\"area_of_interest\":\"POLYGON ((-74.010429 40.726055, -74.011116 40.722153, -74.014206 40.712525, -74.016094 40.703025, -74.011803 40.702244, -74.004936 40.705758, -73.996696 40.710052, -73.979874 40.711614, -73.976612 40.715517, -73.974895 40.721372, -73.973179 40.728917, -73.975925 40.734771, -73.974209 40.743876, -73.999615 40.752979, -74.006138 40.748818, -74.009571 40.743095, -74.010429 40.726055))\"}},\"endpoint\":\"https://gcp-us-east1.api.carto.com/v3/sql/amanzanares-bq/job\",\"description\":\"The output contains aggregated collisions, traffic counts and air quality data for the area of interest from before and after the said regulation was approved.\"},\"enabled\":true,\"procedure\":{\"call\":\"CALL `cartodb-on-gcp-pm-team.carto_workspace.wfproc_mcptool_236dfc12072ff54c`(@area_of_interest)\",\"hash\":\"9d201c88530a5df4\",\"params\":\"{\\\"area_of_interest\\\":\\\"POLYGON ((-74.010429 40.726055, -74.011116 40.722153, -74.014206 40.712525, -74.016094 40.703025, -74.011803 40.702244, -74.004936 40.705758, -73.996696 40.710052, -73.979874 40.711614, -73.976612 40.715517, -73.974895 40.721372, -73.973179 40.728917, -73.975925 40.734771, -73.974209 40.743876, -73.999615 40.752979, -74.006138 40.748818, -74.009571 40.743095, -74.010429 40.726055))\\\"}\",\"status\":\"outdated\",\"updatedAt\":1760030213769},\"description\":\"This tool is able to analyze congestion traffic in a specific area of interest in new york city, including collisions, traffic counts and air quality. \\nThe results are for before and after a traffic regulation was applied, so that we can explore how this regulation actually affected traffic.\\nThis tool needs to be used asynchronously, as the analysis will take a bit to be completed.\"}}"}
  */
  DECLARE `area_of_interest` STRING DEFAULT 'POLYGON ((-74.010429 40.726055, -74.011116 40.722153, -74.014206 40.712525, -74.016094 40.703025, -74.011803 40.702244, -74.004936 40.705758, -73.996696 40.710052, -73.979874 40.711614, -73.976612 40.715517, -73.974895 40.721372, -73.973179 40.728917, -73.975925 40.734771, -73.974209 40.743876, -73.999615 40.752979, -74.006138 40.748818, -74.009571 40.743095, -74.010429 40.726055))';
  DECLARE __outputtable STRING;
  DECLARE __outputtablefqn STRING;
  SET __outputtable = 'wfproc_api_236dfc12072ff54c_out_' || SUBSTRING(TO_HEX(MD5('')), 1, 16);
  SET __outputtablefqn = 'cartodb-on-gcp-pm-team.carto_workspace.wfproc_api_236dfc12072ff54c_out_' || SUBSTRING(TO_HEX(MD5('')), 1, 16);
  BEGIN
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_2249aad783a8f582_result`
    AS
      SELECT ST_GEOGFROMTEXT(`area_of_interest`) as geom;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_3b2a08a6359af5e7_match`
    AS
      WITH withids AS (
        SELECT
          __source.*,
          ROW_NUMBER()
            OVER()
            __id
        FROM
          `carto-demo-data.demo_tables.nyc_traffic_counts` __source
      ),
      repeated AS (
        SELECT
          __source.*
        FROM
          withids __source,
          `WORKFLOW_236dfc12072ff54c_2249aad783a8f582_result` __filter
        WHERE ST_INTERSECTS(
          __filter.geom, __source.geom
        )
      )
      SELECT * EXCEPT(__id, __rn)
      FROM (
        SELECT
            *,
            ROW_NUMBER()
                OVER (PARTITION BY __id)
                __rn
        FROM repeated
      )
      WHERE __rn = 1;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_50e8f2635932dd03_result`
    AS
      SELECT * REPLACE (SAFE_CAST(datetime
      AS DATETIME) AS datetime)
      FROM `WORKFLOW_236dfc12072ff54c_3b2a08a6359af5e7_match`;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_8e64b5d226931568_result`
    AS
      SELECT * from `WORKFLOW_236dfc12072ff54c_50e8f2635932dd03_result` 
      WHERE
      datetime > '2024-10-05 00:00:00'
      AND
      datetime < '2025-04-05 00:00:00';
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_aeece211202a179a_result`
    AS
      SELECT
        *,
        CASE
          WHEN datetime < CAST ('2025-01-05 00:00:00' AS datetime) THEN 'Before'
        ELSE 'After'
        END AS period
      FROM `WORKFLOW_236dfc12072ff54c_8e64b5d226931568_result`;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_7278d96598bedd67_result`
    AS
      SELECT period,
        SUM(vol_joined) vol_joined_sum
      FROM `WORKFLOW_236dfc12072ff54c_aeece211202a179a_result`
      GROUP BY period;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_0fc064e999a608ef_match`
    AS
      WITH withids AS (
        SELECT
          __source.*,
          ROW_NUMBER()
            OVER()
            __id
        FROM
          `carto-demo-data.demo_tables.nyc_collisions` __source
      ),
      repeated AS (
        SELECT
          __source.*
        FROM
          withids __source,
          `WORKFLOW_236dfc12072ff54c_2249aad783a8f582_result` __filter
        WHERE ST_INTERSECTS(
          __filter.geom, __source.geom
        )
      )
      SELECT * EXCEPT(__id, __rn)
      FROM (
        SELECT
            *,
            ROW_NUMBER()
                OVER (PARTITION BY __id)
                __rn
        FROM repeated
      )
      WHERE __rn = 1;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_8f3ca26567cf8579_match`
    AS
      WITH withids AS (
        SELECT
          __source.*,
          ROW_NUMBER()
            OVER()
            __id
        FROM
          `carto-demo-data.demo_tables.nyc_air_quality` __source
      ),
      repeated AS (
        SELECT
          __source.*
        FROM
          withids __source,
          `WORKFLOW_236dfc12072ff54c_2249aad783a8f582_result` __filter
        WHERE ST_INTERSECTS(
          __filter.geom, __source.geom
        )
      )
      SELECT * EXCEPT(__id, __rn)
      FROM (
        SELECT
            *,
            ROW_NUMBER()
                OVER (PARTITION BY __id)
                __rn
        FROM repeated
      )
      WHERE __rn = 1;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_dbf51ff288e9c1e3_result`
    AS
      SELECT * REPLACE (SAFE_CAST(crash_datetime
      AS DATETIME) AS crash_datetime)
      FROM `WORKFLOW_236dfc12072ff54c_0fc064e999a608ef_match`;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_a959b7b3bee434e7_result`
    AS
      SELECT * REPLACE (SAFE_CAST(datetime
      AS DATETIME) AS datetime)
      FROM `WORKFLOW_236dfc12072ff54c_8f3ca26567cf8579_match`;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_3c8128653b620f97_result`
    AS
      SELECT * from `WORKFLOW_236dfc12072ff54c_dbf51ff288e9c1e3_result` 
      WHERE
      crash_datetime > '2024-10-05 00:00:00'
      AND
      crash_datetime < '2025-04-05 00:00:00';
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_6e49f6df4aa209e5_result`
    AS
      SELECT * from `WORKFLOW_236dfc12072ff54c_a959b7b3bee434e7_result` 
      WHERE
      datetime > '2024-10-05 00:00:00'
      AND
      datetime < '2025-04-05 00:00:00';
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_2308ea67fecd66ac_result`
    AS
      SELECT
        *,
        CASE
          WHEN crash_datetime < CAST ('2025-01-05 00:00:00' AS datetime) THEN 'Before'
        ELSE 'After'
        END AS period
      FROM `WORKFLOW_236dfc12072ff54c_3c8128653b620f97_result`;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_303e2ce3aa113f31_result`
    AS
      SELECT period,
        COUNT(collision_id) collision_id_count
      FROM `WORKFLOW_236dfc12072ff54c_2308ea67fecd66ac_result`
      GROUP BY period;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_36ebd98546bbbb0c_result`
    AS
      SELECT
        *,
        CASE
          WHEN datetime < CAST ('2025-01-05 00:00:00' AS datetime) THEN 'Before'
        ELSE 'After'
        END AS period
      FROM `WORKFLOW_236dfc12072ff54c_6e49f6df4aa209e5_result`;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_72183e97eaa2cf41_result`
    AS
      SELECT period,
        AVG(value) value_avg
      FROM `WORKFLOW_236dfc12072ff54c_36ebd98546bbbb0c_result`
      GROUP BY period;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_1973eb7fab846b5d_result`
    AS
      SELECT 
        _main.*,
        _joined.period AS period_joined, _joined.collision_id_count AS collision_id_count_joined
      FROM
        `WORKFLOW_236dfc12072ff54c_7278d96598bedd67_result` AS _main
      RIGHT JOIN
        `WORKFLOW_236dfc12072ff54c_303e2ce3aa113f31_result` AS _joined
      ON
        _main.period = _joined.period;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_9ced046aeda08700_result`
    AS
      SELECT
        SAFE_CAST(period_joined AS STRING) AS period,
        SAFE_CAST(collision_id_count_joined AS FLOAT64) AS total_collisions,
        SAFE_CAST(vol_joined_sum AS FLOAT64) AS total_traffic_counts
      FROM `WORKFLOW_236dfc12072ff54c_1973eb7fab846b5d_result`;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_88140fe0edb51761_result`
    AS
      SELECT 
        _main.*,
        _joined.period AS period_joined, _joined.value_avg AS value_avg_joined
      FROM
        `WORKFLOW_236dfc12072ff54c_9ced046aeda08700_result` AS _main
      RIGHT JOIN
        `WORKFLOW_236dfc12072ff54c_72183e97eaa2cf41_result` AS _joined
      ON
        _main.period = _joined.period;
    END;
    BEGIN
    CREATE TEMPORARY TABLE `WORKFLOW_236dfc12072ff54c_866d34afa1c7a22b_result`
    AS
      SELECT
        SAFE_CAST(period_joined AS STRING) AS period,
        SAFE_CAST(value_avg_joined AS FLOAT64) AS avg_polution,
        SAFE_CAST(total_collisions AS FLOAT64) AS total_collisions,
        SAFE_CAST(total_traffic_counts AS FLOAT64) AS total_traffic_counts
      FROM `WORKFLOW_236dfc12072ff54c_88140fe0edb51761_result`;
    END;
    EXECUTE IMMEDIATE
    REPLACE(
      '''DROP TABLE IF EXISTS `##TABLENAME##`''',
      '##TABLENAME##',
      __outputtablefqn
    );
    EXECUTE IMMEDIATE
    REPLACE(
      '''CREATE OR REPLACE TABLE `##TABLENAME##`
      OPTIONS (
        expiration_timestamp = TIMESTAMP_ADD(
          CURRENT_TIMESTAMP(), INTERVAL 30 DAY
        )
      )
      AS
        SELECT 1 as dummy''',
      '##TABLENAME##',
      __outputtablefqn
    );
  END;
END;