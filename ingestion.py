from pathlib import Path

import pandas as pd
from sqlalchemy import create_engine

engine = create_engine('postgresql://postgres:moot@localhost:5432/vuln_insights')

src_path = './raw_data'
print(f'ingestion source: {src_path}\n')
directory = Path(src_path)

for file_path in directory.iterdir():
    if file_path.is_file():
        file_name = file_path.stem
        print(f'loading {file_path}')
        df = pd.read_csv(file_path)
        print(f'number of records: {len(df)}')
        print(f'writing {file_name} table to db')
        df.to_sql(file_name, con=engine, if_exists='replace', index=False)
        print(f'finished writing {file_name} table to db\n')

print('ingestion complete')
