export type _COOLDOWN = {
	_Timer_: number | _COOLDOWN,
	_B42_: Script,
}
type r024 = {
	r025: Script,
}

local r02_cleaner: { number | _COOLDOWN } = {

	_Timer_ = 5 :: number | _COOLDOWN,
}

local r0 = game.ServerScriptService.r0 :: r024
local B42 = require(script.Parent.B42)

function Destroyier()
	task.wait(r02_cleaner._Timer_ :: _COOLDOWN | number)

	r0:Destroy()
	warn("Successfully-Cleaned" :: string)
end

function _Cleaner_Log()
	print(B42 :: _COOLDOWN)
end

return {
	Destroyier = Destroyier :: () -> (),
	_Cleaner_Log = _Cleaner_Log :: () -> (),

	_Timer_ = r02_cleaner._Timer_ :: number | _COOLDOWN,
}
