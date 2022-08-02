import pandas as pd

pd.merge(customers, orders, left_on='id', right_on='cust_id')\
    .groupby(by=['cust_id', 'first_name']).sum().reset_index()[['cust_id', 'first_name', 'total_order_cost']]
