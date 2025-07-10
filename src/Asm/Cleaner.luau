--[[
	Coded by: @Cloud






	The cleaner is still being worked-on, I won't say it will be as usefull/resourcful 
	because it giving bad progress/vibes (at the moment) ( bull shit )


]]

export type _COOLDOWN = {
	_Timer_: number | _COOLDOWN,
	_B42_: Script,
}

export type turned_On = {
	_return_: nil | number,
}

type r024 = {
	r025: Script,
}

local r02_cleaner: { number | _COOLDOWN } = {

	_Timer_ = 5 :: number | _COOLDOWN,
}

local r0 = game.ServerScriptService.r0 :: r024
local B42 = require(script.Parent.B42)

function _high_off_Coffee()
	local int = 0
	return int
end

function Destroyier()
	task.wait(r02_cleaner._Timer_ :: _COOLDOWN | number)

	r0:Destroy()
	warn("Successfully-Cleaned" :: string)
end

function _Cleaner_Log()
	print(B42, r0 :: _COOLDOWN | r024)
	print(_high_off_Coffee)
end

return {
	Destroyier = Destroyier :: () -> "Destroyier destroyes the script",
	_Cleaner_Log = _Cleaner_Log :: () -> "Log everything ",

	_Timer_ = r02_cleaner._Timer_ :: number | _COOLDOWN,
	_high_off_Coffee = _high_off_Coffee :: () -> "Fucking dying",
}
