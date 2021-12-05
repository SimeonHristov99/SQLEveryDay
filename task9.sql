select distinct fp.post_id, fr.poster, fp.post_text, fp.post_keywords, fp.post_date
from facebook_posts fp
join facebook_reactions fr
on fp.post_id = fr.post_id
where fr.reaction = 'heart'