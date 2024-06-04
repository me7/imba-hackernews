tag Story
	css a c:gray8
	<self[d:flex ai:center bdb:1px solid gray2 py:4]>
		<%pt[fw:600 px:3 min-width:14 c:sky8 ta:center]> data.points or 0
		<div[d:vflex]>
			<a[td:none] href="{data.url}" target="_blank"> "{data.title} " 
				<span[c:gray6 fs:sm]> "({data.domain})"
			<div[c:gray6 fs:sm]> "by "
				<a href="/user/{data.user}"> "{data.user or "ads"} "
				"{data.time_ago} | " 
				<a href="/story/{data.id}"> "{+data.comments_count} comments"

export tag Stories
	
	def routed
		let page = route.params.topic or "news"
		let url = "https://node-hnapi.herokuapp.com/{page}"
		res = await global.fetch(url)
		data = await res.json()
	
	<self bg@suspend=red>
		Log route
		for s, index in data
			<Story @click.log(s) data=s>
