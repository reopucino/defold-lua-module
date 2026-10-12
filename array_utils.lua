local M={}

function M.clear_table(original_table)
	for index in pairs(original_table) do original_table[index] = nil end
end

function M.clone_array_table(original_table)
	local copy = { table.unpack(original_table) }
	return copy
end


function M.pick_different(original_table, different)
	local clone_table = M.clone_array_table(original_table)
	for i, val in ipairs(clone_table) do
		if val == different then
			table.remove(clone_table, i)
			break
		end
	end

	local randomIndex = math.random(1, #clone_table)
	local chosen = clone_table[randomIndex]
	return chosen
end

return M
