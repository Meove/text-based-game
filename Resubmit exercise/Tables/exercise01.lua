-- Work with Lua tables to store and manipulate student records.

-- Create a Lua table named students that stores student records. Each record should contain the following information:
-- Student Name (string)
-- Student ID (integer)
-- GPA (floating-point number)

-- Create at least three student records in the students table. Then, write a function named print_students that takes the students table as a parameter and prints the records in a readable format.
-- Create the students table with at least three student records


-- Function to print student records

-- Call the function to print the student records

    studentTable = {
    {Name = "Joe", ID = 69420, GPA = 3.50},
    {Name = "Mista", ID = 66392, GPA = 3.42},
    {Name = "Meove", ID = 67890, GPA = 3.68}
    }

function print_students(x)
    print(studentTable[x].Name, studentTable[x].ID, studentTable[x].GPA)
end

print("Choose the student 1 - 3")
a = io.read("*n") 
print_students(a)