-- Implement classes for two geometric shapes: Circle and Rectangle. Each shape class should have methods to calculate its area and perimeter.
-- Implement using dual representation.
-- You'll need to decide which parameters / attributes / keys should be private.

function privateCalculation(value, value2, shape)
    if shape == "circle" then
        local r = value    
        local CircleArea = math.pi * r ^ 2
        CircleResult = CircleArea
        return CircleResult

    elseif shape == "rectangle" then
        local w = value
        local l = value2
        local RectangleArea = w * l
        RectangleResult = RectangleArea
        return RectangleResult
    end

end

print("Circle or Rectangle")
local pickShape = io.read() --Must write "circle" and "rectangle" in lowercase

if pickShape == "circle" then
    print("Write radius")
    local prevalue1 = io.read()
    local prevalue2 = nil
    print("Circle area is: " .. privateCalculation(prevalue1, prevalue2, pickShape))
    
elseif pickShape == "rectangle" then
    print("Write width")
    local prevalue1 = io.read()
    print("Write length")
    local prevalue2 = io.read()
    print("Rectangle area is: " .. privateCalculation(prevalue1, prevalue2, pickShape))
end


