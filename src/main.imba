global css * bd:px dashed red box-sizing:border-box m:0 ff:sans

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

tag Stories
	def routed
		let url = 'https://node-hnapi.herokuapp.com/news'
		res = await global.fetch(url)
		data = await res.json()
	
	<self bg@suspend=red>
		for s, index in data
			<Story @click.log(s) data=s>
	

tag Nav
	<self>
		css 
			%header bg:sky8 h:55px t:0 l:0 d:hcl g:2 px:2
			a c:gray2 @hover:white td:none ease:1s
		<%header>
			<a href='/'> <strong> "HN" 
			<a href='/news'> <strong> "News" 
			<a href='/show'> <strong> "Show" 
			<a href='/ask'> <strong> "Ask" 
			<a href='/jobs'> <strong> "Jobs" 
			<div[fl:1]>
			<a href='https://imba.io'> "Build with Imba" 

tag User
	<self[pl:4]>
		<h2[mt:2]> "User: {route.params.name}"
		<div[mt:3]> "Created: {route.params.name}"
		<div[mb:3]> "Karma: {route.params.name}"
		<p[mb:2]> "Check out http: {route.params.name}"
		<p>
			<a href='/'> "submission"
			" | "
			<a href='/'> "comments"

tag App
	<self>
		<Nav>
		<Stories route='/'>
		<User route='/user/:name'>

imba.mount <App>
