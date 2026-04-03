-- how many null values in source cve (designated fact table)
SELECT 
	COUNT(*) FILTER (WHERE cve_id IS NULL) as cve_id_nulls,
	COUNT(*) FILTER (WHERE mod_date IS NULL) as mod_date_nulls,
	COUNT(*) FILTER (WHERE pub_date IS NULL) as pub_date_nulls,
	COUNT(*) FILTER (WHERE CVSS IS NULL) as cvss_nulls,
	COUNT(*) FILTER (WHERE cwe_code IS NULL) as cwe_code_nulls,
	COUNT(*) FILTER (WHERE cwe_name IS NULL) as cwe_name_nulls,
	COUNT(*) FILTER (WHERE summary IS NULL) as summary_nulls
FROM cve
