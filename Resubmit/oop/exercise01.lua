-- a) implement a class Stack, with methods push, pop, top, and isempty
-- b) implement a class StackQueue as a subclass of Stack. besides the inherited methods, add to this class a method insertbottom, which inserts an element at the bottom of the stack.
-- c) write some test codes

-- Stack class
Stack = {
    items = {},
}

-- StackQueue class (subclass of Stack)
function Stack:new()
    local newObj = { items = {} }
    self.__index = self
    setmetatable(newObj, self)
    return newObj
end

-- Insert your code here

function Stack:push(item)
    table.insert(self.items, item)
end

function Stack:pop()
    if self:isempty() then
        return nil
    end
    return table.remove(self.items)
end

function Stack:top()
    if self:isempty() then
        return nil
    end
    return self.items[#self.items]
end

function Stack:isempty()
    return #self.items == 0
end

-- StackQueue class (subclass of Stack)
StackQueue = Stack:new()

function StackQueue:insertbottom(item)
    table.insert(self.items, 1, item) -- Insert at the bottom (front) of the stack
end

-- Test code
local stack = Stack:new()

stack:push(1)
stack:push(2)
stack:push(3)

print("Stack:")
while not stack:isempty() do
    print(stack:pop())
end

local stackQueue = StackQueue:new()

stackQueue:push(1)
stackQueue:push(2)
stackQueue:push(3)

print("\nStackQueue:")
stackQueue:insertbottom(0)
while not stackQueue:isempty() do
    print(stackQueue:pop())
end