-- https://github.com/nightmareci

local input_filename = "input.txt"
local asm_filename = "../asm/text.s"

local find_data = {}
local input_data = {}
for line in io.lines(input_filename) do
	local input = string.match(line, "^([^%c]*)%c*")
	table.insert(find_data, "/* " .. input .. " ") -- Optimization, reduces amount of string manipulation in the big loop.
	table.insert(input_data, input)
end

local asm_data = {}
for line in io.lines(asm_filename) do
	table.insert(asm_data, line)
end

local function find_input(input, asm_data)
	for text_index, line in ipairs(asm_data) do
		if string.find(line, input, 1, true) then -- Plain text search is faster, we don't need regex.
			return text_index
		end
	end
	return nil
end

for i, input in ipairs(input_data) do
	local text_index = find_input(find_data[i], asm_data)
	if text_index then
		local func = "func_" .. input
		local global = ".global " .. func

		-- Insert lines in reverse order, bottom-most first, above-bottom-most next, ..., top-most last.
		-- Insert empty strings for empty lines.
		-- Don't change the second argument to table.insert, keep it the same for all calls of the reverse-order call list.
		-- It has to be reverse order because all lines after the inserted index move up one index forwards to make room.
		table.insert(asm_data, text_index, func .. ":")
		table.insert(asm_data, text_index, global)
		table.insert(asm_data, text_index, "")
	end
end

local asm_file = io.open(asm_filename, "w")
asm_file:write(table.concat(asm_data, "\n"))
asm_file:close()
