import pandas as pd

df = pd.merge(customers, orders, how='left', left_on='id', right_on='cust_id')
df = df[['first_name', 'last_name', 'city', 'order_details']]
df.sort_values(['first_name', 'order_details'])
