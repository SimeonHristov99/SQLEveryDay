import pandas as pd

merged = pd.merge(airbnb_guests, airbnb_reviews,
                  left_on='guest_id', right_on='from_user')

guests_only = merged[merged['from_type'] == 'guest']

guests_only.groupby(by='gender').mean().reset_index()[
    ['gender', 'review_score']]
