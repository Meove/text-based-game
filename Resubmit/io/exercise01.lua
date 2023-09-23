-- Write a program that reads a text file and rewrites it with its lines sorted in alphabetical order. 
--When called with no arguments, it should read from standard input and write to standard output. 
--When called with one file-name argument, it should read from that file and write to standard output. 
--When called with two file-name arguments, it should read from the first file and write to the second.

local outputFile = io.open("simple.txt", "w")
io.output(outputFile)

for i = 1, 5, 1 do
    a = io.read()
    io.write(a .. "\n")
end
io.close(outputFile)