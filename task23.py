import pandas as pd

max_salary = worker['salary'].max()

df = pd.merge(worker, title, left_on = 'worker_id', right_on = 'worker_ref_id')

df.loc[(df['salary'] == max_salary), ['worker_title']]