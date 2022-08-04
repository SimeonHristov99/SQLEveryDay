import pandas as pd

merged = pd.merge(facebook_reactions, facebook_posts,
                  left_on='post_id', right_on='post_id')

filtered = merged[merged['reaction'] == 'heart']

filtered[['post_id', 'poster_y', 'post_text', 'post_keywords',
          'post_date', 'post_keywords', 'post_date']].drop_duplicates()
