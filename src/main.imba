global css * bd:1px dashed red box-sizing:border-box m:0 ff:sans

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

tag App
	<self>
		<Nav>

imba.mount <App>
