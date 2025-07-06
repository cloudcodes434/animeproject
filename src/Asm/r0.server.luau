export type INIT = {
	_I_: number | string | INIT,
	_N_: number | string | INIT,
	_I2_: number | string | INIT,
	_T_: number | string | INIT,
	_r0: number | string | INIT,
}

local _INIT: { string | number } = {

	_I_ = 0x49 :: number | INIT | string,
	_N_ = 0x4E :: number | string | INIT,
	_I2_ = 0x49 :: number | string | INIT,
	_T_ = 0x54 :: number | string | INIT,
}

local R0: { string | number | INIT } = {

	string.char(_INIT._I_) :: number | string | INIT,
	string.char(_INIT._N_) :: number | string | INIT,
	string.char(_INIT._I2_) :: number | string | INIT,
	string.char(_INIT._T_) :: number | string | INIT,
}

warn(tostring(table.concat(R0) .. ": ") :: string | INIT | number | any)

local _BINARY = require(script.B42)

_BINARY.t()
_BINARY.b()

task.wait()

local Cleaner = require(script.Cleaner)

Cleaner.Destroyier()
Cleaner._Cleaner_Log()
