# vuln-insights-dashboard

## Questions around data integrity

How many null values are in each col of CVE fact table?
> 0 in 

What's the date range of the data?

What does the distribution of CVSS scores look like?

How many CVEs have multiple products or vendors?

Are there any duplicate CVE IDs?

What are the most common CWE categories?

## SETUP

spin up application stack

```bash
docker compose up -d
```

manual run of ingestion script (will be run a pre-condition once application service is ready)

```bash
(.venv) ptyhon ingestion.py
```
