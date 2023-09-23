-- Identify the error and implement error handling to gracefully handle it. 
-- The program should prompt the user for a number and attempt to calculate its square root.

-- This program has a compile time and runtime error
print("Enter a number:")
local stNum = io.read()
local sqrt = math.sqrt(stNum)
local num = tonumber(stNum)

if num then
    local success, sqrt = pcall(function() return math.sqrt(num) end)
    if success then
        print("The square root is: " .. sqrt)
    else
        print("Error: Unable to calculate square root.")
    end
else
    print("Error: Invalid input. Please enter a valid number.")
end

-- Example of a test case:
-- 4 
-- 0 
-- -4 
-- a 
-- (

-- use pcall to catch the error and display a message in case of an error

