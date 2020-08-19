select distinct agentid, agentname, rating
from surgery natural join schedule natural join agent
where surgeonid = '569775473'
order by rating DESC
