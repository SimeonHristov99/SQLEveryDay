import pandas as pd

airbnb_search_details.groupby(by=['city', 'property_type']).mean()[['bedrooms', 'bathrooms']].reset_index()