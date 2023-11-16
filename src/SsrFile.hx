typedef SsrFile = {
	packages:Array<String>,
	groups:Array<String>,
	users:Array<{name:String, password:String, groups:Array<String>}>
}
