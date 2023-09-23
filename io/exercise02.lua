-- Write a Lua program that reads student names and their corresponding scores from a file, calculates their grades, and saves the grades to an output file (could either saved to a json or text file or just output on console).

-- Load the json library (you may need to install it)
-- I'm using the json library from (https://github.com/rxi/json.lua)
-- Credits to RXI for this library
local json = require "json"

-- Function to calculate the grade based on the score
function calculate_grade(score)
    if score >= 90 then
        return "A"
    elseif score >= 80 then
        return "B"
    elseif score >= 70 then
        return "C"
    elseif score >= 60 then
        return "D"
    else
        return "F"
    end
end

-- Read student data from JSON input file
local input_file = "student.json"

-- Insert your code here
local file = io.open(input_file, "r")
if file then
    local content = file:read("*all")
    file:close()

    local student_data = json.decode(content)

    -- Calculate grades and store them in a new table
    local graded_students = {}
    for _, student in ipairs(student_data) do
        local name = student.name
        local score = student.score
        local grade = calculate_grade(score)
        table.insert(graded_students, {name = name, score = score, grade = grade})
    end

    -- Save the graded data to an output JSON file
    local output_file = "graded_student.json"
    local output_content = json.encode(graded_students)

    local output = io.open(output_file, "w")
    if output then
        output:write(output_content)
        output:close()
        print("Grades saved to " .. output_file)
    else
        print("Error: Unable to open the output file for writing.")
    end
else
    print("Error: Unable to open the input file.")
end

print(input_file)


--[[
[
    {"name": "Alice", "score": 92},
    {"name": "Bob", "score": 78},
    {"name": "Charlie", "score": 60},
    {"name": "David", "score": 85},
    {"name": "Eva", "score": 45}
]
]]