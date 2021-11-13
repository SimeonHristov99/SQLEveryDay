import pandas as pd

df = pd.merge(db_employee, db_dept,left_on = ['department_id'], right_on=['id'])

max_marketing = df.loc[df.department == 'marketing','salary'].max()

max_engineering = df.loc[df.department == 'engineering','salary'].max()

max_marketing - max_engineering