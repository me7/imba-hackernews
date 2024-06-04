import {User} from './user.imba'
import {Stories} from './stories.imba'
global.Log = console.log

global css * bd:px dashed red box-sizing:border-box m:0 ff:sans

	

tag Nav
	<self>
		css 
			%header bg:sky8 h:55px t:0 l:0 d:hcl g:2 px:2
			a c:gray2 @hover:white td:none ease:1s
		<%header @click=L("AA")>
			<a route-to='/'> <strong> "HN" 
			<a route-to='/newest'> <strong> "New" 
			<a route-to='/show'> <strong> "Show" 
			<a route-to='/ask'> <strong> "Ask" 
			<a route-to='/jobs'> <strong> "Jobs" 
			<div[fl:1]>
			<a href='https://imba.io'> "Build with Imba" 


tag App
	<self>
		<Nav>
		<User route='/user/:name'>
		<Stories route='/:page'>
		<Stories route='/'>

imba.mount <App>
