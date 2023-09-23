-- Identify the error and implement error handling to deal with the "File not found" situation.

-- This program has a runtime error
print("Enter the name of the file to read:")
local fileName = io.read() -- For testing, please enter "errorTest.txt"
local file = io.open(fileName, "r")

-- Attempt to read and display the content
if file then
    local content = file:read("a")
    print("File content:")
    print(content)
    file:close()
else
    print("Error: File not found or unable to open.")
end