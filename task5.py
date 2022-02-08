import numpy as np
import pandas as pd

df = pd.merge(facebook_employees, facebook_hack_survey, left_on='id', right_on='employee_id', suffixes=('_fe', '_surv')).groupby(by='location').mean()[['popularity']]

df.insert(0, 'location', df.index)
df
