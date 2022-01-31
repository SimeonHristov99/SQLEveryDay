import pandas as pd

averages_df = employee.groupby(by='department').mean()[['salary']]

merged_df = pd.merge(employee, averages_df, how='inner',
                     left_on='department', right_on=averages_df.index)

merged_df[['department', 'first_name', 'salary_x', 'salary_y']]
