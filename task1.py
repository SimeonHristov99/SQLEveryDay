import pandas as pd
import numpy as np

df = pd.merge(db_employee, db_dept, left_on='department_id', right_on='id')

cond_m = df['department'] == 'marketing'
cond_eng = df['department'] == 'engineering'

np.abs(df[cond_m]['salary'].max() - df[cond_eng]['salary'].max())
