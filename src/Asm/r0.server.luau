--[[ 

	NOTES: [
		
		If there's any INIT problems then review the [b42.luau] other-wise if the error is on 
		cleaner.luau then debug that ( but Cleaner.luau shouldn't be touched the meantime because It's not as resourceful as it is)
		
		Consider not over-doing the [INIT] CODE, because it can lead to un-optimized code. 


	]
	 




]]

export type INIT = {
	_I_: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue, -- Any errors with TemporaryScriptService ( remove-it )
	_N_: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue,
	_I2_: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue,
	_T_: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue,
	_r0: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue,
}

export type _TIME_ = { -- Time might be useless so remove later

	_T: number | IntValue,
}

local _INIT: { string | number } = {

	_I_ = 0x49 :: number | INIT | string | IntValue | TemporaryScriptService | BinaryStringValue, -- Hex
	_N_ = 0x4E :: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue, -- Hex
	_I2_ = 0x49 :: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue, -- Hex
	_T_ = 0x54 :: number | string | INIT | IntValue | TemporaryScriptService | BinaryStringValue, -- Hex
}

local R0: { string | number | INIT } = {

	string.char(_INIT._I_) :: number | string | INIT | IntValue | thread | BinaryStringValue, -- Binary-Value
	string.char(_INIT._N_) :: number | string | INIT | IntValue | thread | BinaryStringValue, -- B
	string.char(_INIT._I2_) :: number | string | INIT | IntValue | thread | BinaryStringValue, -- B
	string.char(_INIT._T_) :: number | string | INIT | IntValue | thread | BinaryStringValue, -- B
}

warn(tostring(table.concat(R0) .. ": ") :: string | INIT | number | any | IntValue | thread | table) -- If thread is messing with the printing (Remove it)

local _BINARY = require(script.B42)

_BINARY.t() -- Retrun my functions
_BINARY.b() -- >>

task.wait() -- Useless ass wait-function.

---------------------------------------

--// Enable-cleaner if needed \\ --

-- local Cleaner = require(script.Cleaner)

-- Cleaner.Destroyier()
-- Cleaner._Cleaner_Log()

--[[ 

	Shit errors out when code running 
	*(Don't use unless you're using the cleaner. . ) 


]]

-- return _BINARY({
-- 	_BINARY = _BINARY :: Script,
-- 	-- Cleaner = Cleaner :: Script,
-- })
