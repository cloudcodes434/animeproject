--[[

	CODED BY: @Cloud, 

	25-07-06 

	
	[Motivation]

	------------------------------------
	|Tried making it look like assmebly |
	-------------------------------------




	HEX and BINARY: |
					|
					--[ 
		
		----------------------------------------------
		|BINARY: 									 |
		|0b01100001 	 | 		0b01100010			 |
		|0b01100011 	 | . . .					 |
		|				 |							 |
		|BINARY_NUM: 	 |							 |
		|0b00110000		 | 		0b00110001			 |
		|0b00110111		 |							 |
		|				 |               			 | 
		|HEX: 			 |							 |
		|0x41			 |		0x42				 |
		|0x43										 |
		----------------------------------------------
	]
]]

export type _BYTES1 = {
	_B_1: string | number | _BYTES1,
	_B_2: string | number | _BYTES1,
	_B_3: string | number | _BYTES1,
}

export type _Num = {
	_Num_1: number | _Num,
	_Num_2: number | _Num,
	_Num_3: number | _Num,
}

export type _BINARY = {

	_BINARY_01: number | string | _BINARY,
	_BINARY_02: number | string | _BINARY,
	_BINARY_03: number | string | _BINARY,
}

local _BINARY_ = {}

local _BINARY: { _BINARY | number | string } = {

	_BINARY_01 = 0b01100001 :: _BINARY | number | string,
	_BINARY_02 = 0b01100010 :: _BINARY | number | string,
	_BINARY_03 = 0b01100011 :: _BINARY | number | string,
}

local _NUMBERS: { _Num | number } = {

	_NUM_1 = 0b00110001 :: _Num | number,
	_NUM_2 = 0b00110010 :: _Num | number,
	_NUM_3 = 0b00110011 :: _Num | number,
}

local _BYTES: { _BYTES1 | string | number } = {

	_B_1 = 0x41 :: _BYTES1 | string | number,
	_B_2 = 0x42 :: _BYTES1 | string | number,
	_B_3 = 0x43 :: _BYTES1 | string | number,
}

function b()
	local _R0: { string | number | _BINARY } = {

		string.char(_BINARY._BINARY_01) :: _BINARY | string | number,
		string.char(_BINARY._BINARY_02) :: _BINARY | string | number,
		string.char(_BINARY._BINARY_03) :: _BINARY | string | number,
	}

	warn(tostring(table.concat(_R0) :: string | number | _BINARY))
end

function w()
	local _N: { number | any | _Num } = {

		string.char(_NUMBERS._NUM_1) :: _Num | any | number,
		string.char(_NUMBERS._NUM_2) :: _Num | any | number,
		string.char(_NUMBERS._NUM_3) :: _Num | any | number,
	}

	print(tonumber(table.concat(_N) :: number | any | _Num))
end

function t()
	local _BYTES: { string | _BYTES1 | number } = {

		string.char(_BYTES._B_1) :: _BYTES1 | string | number,
		string.char(_BYTES._B_2) :: _BYTES1 | string | number,
		string.char(_BYTES._B_3) :: _BYTES1 | string | number,
	}

	if _BYTES == nil then
		return error("There's an error" :: string | _BYTES1 | number)
	else
		print(tostring(table.concat(_BYTES)))
	end
end

--// IGNORE THIS BULLSHIT

-- local str: { number | any } = {

-- 	_NUMBERS.NUM_1,
-- 	_NUMBERS.NUM_2,
-- 	_NUMBERS.NUM_3,
-- }

-- print(str)

return {
	b = b :: () -> (),
	w = w :: () -> (),
	t = t :: () -> (),

	_BINARY_01 = _BINARY._BINARY_01 :: _BINARY | number,
	_BINARY_02 = _BINARY._BINARY_02 :: _BINARY | number,
	_BINARY_03 = _BINARY_._BINARY_03 :: _BINARY | number,

	_Num_1 = _NUMBERS._NUM_1 :: _Num | number,
	_Num_2 = _NUMBERS._NUM_2 :: _Num | number,
	_Num_3 = _NUMBERS._NUM_3 :: _Num | number,

	_B_1 = _BYTES._B_1 :: _BINARY | number | string,
	_B_2 = _BYTES._B_2 :: _BINARY | number | string,
	_B_3 = _BYTES._B_3 :: _BINARY | number | string,
}
