name = 'OpenRA'
words = {'WorldLoaded', 'Tick'}
configs = {
	{
		key    = 'Lua.runtime.version',
		action = 'set',
		value  = 'Lua 5.1',
	},
	{
		key    = 'Lua.runtime.builtin',
		action = 'prop',
		prop   = 'io',
		value  = 'disable',
	},
}