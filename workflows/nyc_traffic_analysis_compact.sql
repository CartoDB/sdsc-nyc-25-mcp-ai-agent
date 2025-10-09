CREATE OR REPLACE PROCEDURE
  `carto-dw-ac-8l15x5rr.workflows_temp_ernesto_sdscnyc_9fdb3fb4.wfproc_api_c3d90dd82d76f779`(
)
BEGIN
  /*
   {"diagramJson":"{\"title\":\"NYC Traffic analysis - compact version\",\"description\":\"\",\"nodes\":[{\"id\":\"ca5c951f-1482-4d5b-ac91-f78766138252\",\"data\":{\"id\":\"carto-demo-data.demo_tables.nyc_air_quality\",\"name\":\"ReadTable\",\"type\":\"table\",\"label\":\"nyc_air_quality\",\"inputs\":[{\"name\":\"source\",\"type\":\"String\",\"title\":\"Source table\",\"value\":\"carto-demo-data.demo_tables.nyc_air_quality\",\"description\":\"Read Table\"}]},\"type\":\"source\",\"zIndex\":2,\"position\":{\"x\":400,\"y\":176},\"selected\":false},{\"id\":\"95522091-bc43-472c-bd81-a809e1e2babf\",\"data\":{\"id\":\"carto-demo-data.demo_tables.nyc_collisions\",\"name\":\"ReadTable\",\"type\":\"table\",\"label\":\"nyc_collisions\",\"inputs\":[{\"name\":\"source\",\"type\":\"String\",\"title\":\"Source table\",\"value\":\"carto-demo-data.demo_tables.nyc_collisions\",\"description\":\"Read Table\"}]},\"type\":\"source\",\"zIndex\":2,\"position\":{\"x\":400,\"y\":96},\"selected\":false},{\"id\":\"7747e6db-920b-4e98-acf1-b7c9b80686b9\",\"data\":{\"id\":\"carto-demo-data.demo_tables.nyc_traffic_counts\",\"name\":\"ReadTable\",\"type\":\"table\",\"label\":\"nyc_traffic_counts\",\"inputs\":[{\"name\":\"source\",\"type\":\"String\",\"title\":\"Source table\",\"value\":\"carto-demo-data.demo_tables.nyc_traffic_counts\",\"description\":\"Read Table\"}]},\"type\":\"source\",\"zIndex\":2,\"position\":{\"x\":400,\"y\":16},\"selected\":false},{\"id\":\"2851f57b-91b0-447f-9e29-e84f415eed7b\",\"data\":{\"name\":\"native.customsql\",\"type\":\"generic\",\"label\":\"Custom SQL Select\",\"inputs\":[{\"name\":\"sourcea\",\"type\":\"Table\",\"title\":\"Source table a\",\"optional\":true,\"description\":\"Source table a\"},{\"name\":\"sourceb\",\"type\":\"Table\",\"title\":\"Source table b\",\"optional\":true,\"description\":\"Source table b\"},{\"name\":\"sourcec\",\"type\":\"Table\",\"title\":\"Source table c\",\"optional\":true,\"description\":\"Source table c\"},{\"name\":\"sql\",\"type\":\"StringSql\",\"title\":\"SQL SELECT statement\",\"mode\":\"multiline\",\"placeholder\":\"SELECT ST_Centroid(geom) AS geom,\\n  AVG(value) AS average_value,\\n  category\\nFROM $a\\nGROUP BY category\",\"allowExpressions\":false,\"description\":\"SQL SELECT statement\",\"value\":\"WITH counts AS (\\n  SELECT\\n  \\n    CASE WHEN DATETIME(datetime) < DATETIME '2025-01-05 00:00:00'\\n      THEN 'Before'\\n      ELSE 'After'\\n    END AS period,\\n    SUM(vol_joined) AS total_traffic_counts\\n  FROM `$a`\\n  WHERE\\n    ST_INTERSECTS(geom, (SELECT ST_GEOGFROMTEXT(@area_of_interest)))\\n    AND datetime BETWEEN '2024-06-01' AND '2025-06-01'\\n  GROUP BY period\\n),\\ncollisions AS (\\n  SELECT\\n    CASE WHEN DATETIME(crash_datetime) < DATETIME '2025-01-05 00:00:00'\\n      THEN 'Before'\\n      ELSE 'After'\\n    END AS period,\\n    COUNT(collision_id) AS total_collisions\\n  FROM `$b`\\n  WHERE\\n    ST_INTERSECTS(geom, (SELECT ST_GEOGFROMTEXT(@area_of_interest)))\\n    AND crash_datetime BETWEEN '2024-06-01' AND '2025-06-01'\\n  GROUP BY period\\n),\\nair_quality AS (\\n  SELECT\\n    CASE WHEN DATETIME(datetime) < DATETIME '2025-01-05 00:00:00'\\n      THEN 'Before'\\n      ELSE 'After'\\n    END AS period,\\n    AVG(value) AS average_air_quality\\n  FROM `$c`\\n  WHERE\\n    ST_INTERSECTS(geom, (SELECT ST_GEOGFROMTEXT(@area_of_interest)))\\n    AND datetime BETWEEN '2024-06-01' AND '2025-06-01'\\n  GROUP BY period\\n)\\nSELECT\\n  counts.period,\\n  counts.total_traffic_counts,\\n  collisions.total_collisions,\\n  air_quality.average_air_quality\\nFROM counts\\nFULL OUTER JOIN collisions USING (period)\\nFULL OUTER JOIN air_quality USING (period);\"}],\"version\":\"2.0.0\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":768,\"y\":96},\"selected\":false},{\"id\":\"4b44f24f-6bc1-4d4a-840a-50c3beedec0b\",\"data\":{\"name\":\"native.mcptooloutput\",\"type\":\"generic\",\"label\":\"MCP Tool Output\",\"inputs\":[{\"name\":\"source\",\"type\":\"Table\",\"title\":\"Source table\",\"description\":\"Source table\"},{\"name\":\"mode\",\"type\":\"Selection\",\"mode\":\"radio\",\"title\":\"Output type\",\"options\":[{\"icon\":\"sync\",\"name\":\"Sync\",\"value\":\"sync\",\"description\":\"Outputs a JSON object with the data and the FQN of the result when the tool is invoked.\"},{\"icon\":\"async\",\"name\":\"Async\",\"value\":\"async\",\"description\":\"When invoked, creates a job and outputs a JSON object with job metadata, including the result table FQN. The result is available once the job is complete.\"}],\"value\":\"sync\",\"default\":\"async\",\"allowExpressions\":false,\"description\":\"Output type\"}],\"version\":\"1\"},\"type\":\"generic\",\"zIndex\":2,\"position\":{\"x\":944,\"y\":96},\"selected\":false}],\"edges\":[{\"id\":\"09f4e1ed-eab5-4de4-956c-aa9c0dcd24c5\",\"type\":\"default\",\"source\":\"7747e6db-920b-4e98-acf1-b7c9b80686b9\",\"target\":\"2851f57b-91b0-447f-9e29-e84f415eed7b\",\"sourceHandle\":\"out\",\"targetHandle\":\"sourcea\",\"animated\":false,\"className\":\"\"},{\"id\":\"767ced71-6934-406e-8e9f-8939b21fa5a7\",\"type\":\"default\",\"source\":\"95522091-bc43-472c-bd81-a809e1e2babf\",\"target\":\"2851f57b-91b0-447f-9e29-e84f415eed7b\",\"sourceHandle\":\"out\",\"targetHandle\":\"sourceb\",\"animated\":false,\"className\":\"\"},{\"id\":\"68aae879-b90f-4e8e-ad7a-5ff45be6f725\",\"type\":\"default\",\"source\":\"ca5c951f-1482-4d5b-ac91-f78766138252\",\"target\":\"2851f57b-91b0-447f-9e29-e84f415eed7b\",\"sourceHandle\":\"out\",\"targetHandle\":\"sourcec\",\"animated\":false,\"className\":\"\"},{\"id\":\"2851f57b-91b0-447f-9e29-e84f415eed7bresult-4b44f24f-6bc1-4d4a-840a-50c3beedec0bsource\",\"source\":\"2851f57b-91b0-447f-9e29-e84f415eed7b\",\"target\":\"4b44f24f-6bc1-4d4a-840a-50c3beedec0b\",\"sourceHandle\":\"result\",\"targetHandle\":\"source\",\"animated\":false,\"className\":\"\"}],\"variables\":[{\"name\":\"area_of_interest\",\"type\":\"String\",\"order\":1,\"value\":\"POLYGON ((-74.00116 40.752719, -74.013519 40.744916, -74.016953 40.717859, -74.014549 40.70797, -73.985023 40.710313, -73.981247 40.723063, -73.965797 40.746737, -73.976097 40.762601, -74.00116 40.752719))\",\"scopes\":[\"mcptool\"]}],\"procedure\":{},\"schedule\":{},\"viewport\":{\"x\":-87.56203116664881,\"y\":132.67053978788206,\"zoom\":0.8814801579071716},\"schemaVersion\":\"1.0.0\",\"connectionProvider\":\"bigquery\",\"useCache\":false,\"mcpTool\":{\"id\":\"6d07cbcd-bb0b-4adb-83dc-3e7709a03686\",\"name\":\"nyc_traffic_analysis_compact_version\",\"draft\":{\"inputs\":{\"area_of_interest\":{\"description\":\"This parameter must be a WKT string of an area of interest.\"}},\"output\":{\"description\":\"The output contains aggregated collisions, traffic counts and air quality data for the area of interest from before and after the said regulation was approved.\"},\"description\":\"This tool is able to analyze congestion traffic in a specific area of interest in new york city, including collisions, traffic counts and air quality. \\nThe results are for before and after a traffic regulation was applied, so that we can explore how this regulation actually affected traffic.\"},\"inputs\":[{\"name\":\"area_of_interest\",\"type\":\"String\",\"order\":1,\"value\":\"POLYGON ((-74.00116 40.752719, -74.013519 40.744916, -74.016953 40.717859, -74.014549 40.70797, -73.985023 40.710313, -73.981247 40.723063, -73.965797 40.746737, -73.976097 40.762601, -74.00116 40.752719))\",\"description\":\"This parameter must be a WKT string of an area of interest.\"}],\"output\":{\"method\":\"POST\",\"payload\":{\"q\":\"CALL `carto-dw-ac-8l15x5rr.workflows_temp_amanzanares_sdscfelix_8d26e2b7.wfproc_mcptool_c3d90dd82d76f779`(@area_of_interest)\",\"query\":\"\",\"queryParameters\":{\"area_of_interest\":\"POLYGON ((-74.00116 40.752719, -74.013519 40.744916, -74.016953 40.717859, -74.014549 40.70797, -73.985023 40.710313, -73.981247 40.723063, -73.965797 40.746737, -73.976097 40.762601, -74.00116 40.752719))\"}},\"endpoint\":\"https://gcp-us-east1.api.carto.com/v3/sql/carto_dw/query\",\"description\":\"The output contains aggregated collisions, traffic counts and air quality data for the area of interest from before and after the said regulation was approved.\"},\"enabled\":true,\"procedure\":{\"call\":\"CALL `carto-dw-ac-8l15x5rr.workflows_temp_amanzanares_sdscfelix_8d26e2b7.wfproc_mcptool_c3d90dd82d76f779`(@area_of_interest)\",\"hash\":\"05a2052220e02582\",\"params\":\"{\\\"area_of_interest\\\":\\\"POLYGON ((-74.00116 40.752719, -74.013519 40.744916, -74.016953 40.717859, -74.014549 40.70797, -73.985023 40.710313, -73.981247 40.723063, -73.965797 40.746737, -73.976097 40.762601, -74.00116 40.752719))\\\"}\",\"status\":\"outdated\",\"updatedAt\":1760027667686},\"description\":\"This tool is able to analyze congestion traffic in a specific area of interest in new york city, including collisions, traffic counts and air quality. \\nThe results are for before and after a traffic regulation was applied, so that we can explore how this regulation actually affected traffic.\"}}"}
  */
  DECLARE `area_of_interest` STRING DEFAULT 'POLYGON ((-74.00116 40.752719, -74.013519 40.744916, -74.016953 40.717859, -74.014549 40.70797, -73.985023 40.710313, -73.981247 40.723063, -73.965797 40.746737, -73.976097 40.762601, -74.00116 40.752719))';
  BEGIN
  CREATE TEMPORARY TABLE `WORKFLOW_c3d90dd82d76f779_78ec4f2cf956ce12_result`
  AS
    WITH counts AS (
      SELECT
        CASE WHEN DATETIME(datetime) < DATETIME '2025-01-05 00:00:00'
          THEN 'Before'
          ELSE 'After'
        END AS period,
        SUM(vol_joined) AS total_traffic_counts
      FROM `carto-demo-data.demo_tables.nyc_traffic_counts`
      WHERE
        ST_INTERSECTS(geom, (SELECT ST_GEOGFROMTEXT(`area_of_interest`)))
        AND datetime BETWEEN '2024-06-01' AND '2025-06-01'
      GROUP BY period
    ),
    collisions AS (
      SELECT
        CASE WHEN DATETIME(crash_datetime) < DATETIME '2025-01-05 00:00:00'
          THEN 'Before'
          ELSE 'After'
        END AS period,
        COUNT(collision_id) AS total_collisions
      FROM `carto-demo-data.demo_tables.nyc_collisions`
      WHERE
        ST_INTERSECTS(geom, (SELECT ST_GEOGFROMTEXT(`area_of_interest`)))
        AND crash_datetime BETWEEN '2024-06-01' AND '2025-06-01'
      GROUP BY period
    ),
    air_quality AS (
      SELECT
        CASE WHEN DATETIME(datetime) < DATETIME '2025-01-05 00:00:00'
          THEN 'Before'
          ELSE 'After'
        END AS period,
        AVG(value) AS average_air_quality
      FROM `carto-demo-data.demo_tables.nyc_air_quality`
      WHERE
        ST_INTERSECTS(geom, (SELECT ST_GEOGFROMTEXT(`area_of_interest`)))
        AND datetime BETWEEN '2024-06-01' AND '2025-06-01'
      GROUP BY period
    )
    SELECT
      counts.period,
      counts.total_traffic_counts,
      collisions.total_collisions,
      air_quality.average_air_quality
    FROM counts
    FULL OUTER JOIN collisions USING (period)
    FULL OUTER JOIN air_quality USING (period);
  END;
END;