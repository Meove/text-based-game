--  Explain the output of the following program
local count = 0

local mt = {__gc = function () count = count - 1 end}
local a = {}

for i = 1, 10000 do
	count = count + 1
	a[i] = setmetatable({}, mt)
end

collectgarbage()
print(collectgarbage("count") * 1024, count)
a = nil
collectgarbage()
print(collectgarbage("count") * 1024, count)
collectgarbage()
print(collectgarbage("count") * 1024, count)

-- Line 7 is creating a table with 10000 elements

-- First collectgarbage() call will collect some table object. Memory usage and "count" will decrease. The output show the memory usage and the updated "count".

-- variable 'a' become nil

-- Second collectgarbage() call Setting a to nil removes the reference to the table a, so it should become eligible for garbage collection. The memory usage and count will be updated accordingly.

-- Third collectgarbage() call triggered again to ensure any remaining unreferenced objects are collected. The output shows the final memory usage and count value.