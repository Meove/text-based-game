function split(inputstr, delimiter)
    local result = {}
    for chunk in string.gmatch(inputstr, "([^" .. delimiter .. "]+)") do
        table.insert(result, chunk)
    end
    return result
end

-- Test the split function
local input = "a whole new world"
local delimiter = " "
local t = split(input, delimiter)

-- Print the result
for i, chunk in ipairs(t) do
    print(i, chunk)
end