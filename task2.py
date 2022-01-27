import pandas as pd

ms_employee_salary.groupby(by='id').max().reset_index()