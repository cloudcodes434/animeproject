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
		|BINARY_NUM: 	 |							 |		--// Yeah added more shit, ignore this. \\ -- 
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
	_B_1: string | number | _BYTES1 | BinaryStringValue | IntValue | StringValue,
	_B_2: string | number | _BYTES1 | BinaryStringValue | IntValue | StringValue,
	_B_3: string | number | _BYTES1 | BinaryStringValue | IntValue | StringValue,
}

export type _Num = {
	_Num_1: number | _Num | IntValue,
	_Num_2: number | _Num | IntValue,
	_Num_3: number | _Num | IntValue,
}

export type _BINARY = {

	_BINARY_01: number | string | _BINARY | BinaryStringValue,
	_BINARY_02: number | string | _BINARY | BinaryStringValue,
	_BINARY_03: number | string | _BINARY | BinaryStringValue,
	_BINARY_04: number | string | _BINARY | BinaryStringValue,
	_BINARY_05: number | string | _BINARY | BinaryStringValue,
}

local _BINARY_ = {}

local _BINARY: { _BINARY | number | string | IntValue | StringValue | BinaryStringValue } = {

	_BINARY_01 = 0b01100001 :: _BINARY | number | string | BinaryStringValue | IntValue | ValueBase,
	_BINARY_02 = 0b01100010 :: _BINARY | number | string | BinaryStringValue | IntValue | ValueBase,
	_BINARY_03 = 0b01100011 :: _BINARY | number | string | BinaryStringValue | IntValue | ValueBase,
	_BINARY_04 = 0b1000100 :: _BINARY | number | string | BinaryStringValue | IntValue | ValueBase,
	_BINARY_05 = 0b1000011 :: _BINARY | number | string | BinaryStringValue | IntValue | ValueBase,
}

local _NUMBERS: { _Num | number } = {

	_NUM_1 = 0b00110001 :: _Num | number | IntValue | ValueBase,
	_NUM_2 = 0b00110010 :: _Num | number | IntValue | ValueBase,
	_NUM_3 = 0b00110011 :: _Num | number | IntValue | ValueBase,
}

local _BYTES: { _BYTES1 | string | number | StringValue | IntValue } = {

	_B_1 = 0x41 :: _BYTES1 | string | number | IntValue,
	_B_2 = 0x42 :: _BYTES1 | string | number | IntValue,
	_B_3 = 0x43 :: _BYTES1 | string | number | IntValue,
}

function b()
	local _R0: { string | number | _BINARY } = {

		string.char(_BINARY._BINARY_01) :: _BINARY | string | number | BinaryStringValue,
		string.char(_BINARY._BINARY_02) :: _BINARY | string | number | BinaryStringValue,
		string.char(_BINARY._BINARY_03) :: _BINARY | string | number | BinaryStringValue,
		string.char(_BINARY._BINARY_04) :: _BINARY | string | number | BinaryStringValue,
		string.char(_BINARY._BINARY_05) :: _BINARY | string | number | BinaryStringValue,
	}

	if _BINARY == nil then
		return error("binary is nil" :: string) :: boolean
	else
		warn(tostring(table.concat(_R0) :: string | number | _BINARY | table))
	end
end

function w()
	local _N: { number | any | _Num | IntValue } = {

		string.char(_NUMBERS._NUM_1) :: _Num | any | number,
		string.char(_NUMBERS._NUM_2) :: _Num | any | number,
		string.char(_NUMBERS._NUM_3) :: _Num | any | number,
	}

	if _NUMBERS == nil then
		return error("number returned nothing" :: string)
	else
		print(tonumber(table.concat(_N) :: number | any | _Num))
	end
end

function t()
	local _BYTES: { string | _BYTES1 | number | StringValue | IntValue } = {

		string.char(_BYTES._B_1) :: _BYTES1 | string | number | BinaryStringValue,
		string.char(_BYTES._B_2) :: _BYTES1 | string | number | BinaryStringValue,
		string.char(_BYTES._B_3) :: _BYTES1 | string | number | BinaryStringValue,
	}

	if _BYTES == nil then
		return error("There's an error" :: string | _BYTES1 | number)
	else
		print(tostring(table.concat(_BYTES) :: string | number | _BYTES1))
	end
end

--// Useless ass shit. .  \\ --

-- task.wait()

-- function _Cleaner()
-- 	table.clear(_BINARY)
-- 	print("CLeaner| worked")
-- end

--// IGNORE THIS BULLSHIT

-- local str: { number | any } = {

-- 	_NUMBERS.NUM_1,
-- 	_NUMBERS.NUM_2,
-- 	_NUMBERS.NUM_3,
-- }

-- print(str)

return {
	b = b :: () -> "'B' is a returning function",
	w = w :: () -> "function",
	t = t :: () -> "function",

	_BINARY_01 = _BINARY._BINARY_01 :: _BINARY | number | IntValue | StringValue | ValueBase | string,
	_BINARY_02 = _BINARY._BINARY_02 :: _BINARY | number | IntValue | StringValue | ValueBase | string,
	_BINARY_03 = _BINARY_._BINARY_03 :: _BINARY | number | IntValue | StringValue | ValueBase | string,
	_BINARY_04 = _BINARY._BINARY_04 :: _BINARY | number | IntValue | StringValue | ValueBase | string,

	_Num_1 = _NUMBERS._NUM_1 :: _Num | number | ValueBase | IntValue,
	_Num_2 = _NUMBERS._NUM_2 :: _Num | number | ValueBase | IntValue,
	_Num_3 = _NUMBERS._NUM_3 :: _Num | number | ValueBase | IntValue,

	_B_1 = _BYTES._B_1 :: _BINARY | number | IntValue | StringValue | ValueBase | string,
	_B_2 = _BYTES._B_2 :: _BINARY | number | IntValue | StringValue | ValueBase | string,
	_B_3 = _BYTES._B_3 :: _BINARY | number | IntValue | StringValue | ValueBase | string,
}
