-- Write a Lua program that reverses a singly linked list using tables. Create a function called reverseLinkedList that takes the head of the linked list as an argument and returns the head of the reversed list. Each node in the linked list is represented as a table with a value and a next field.

-- Example output
-- Original List:
-- 1
-- 2
-- 3
-- Reversed List:
-- 3
-- 2
-- 1

local Node = {
    value = nil,
    next = nil
}

function Node:new(value)
    local newNode = {}
    setmetatable(newNode, self)
    self.__index = self
    newNode.value = value
    newNode.next = nil
    return newNode
end

function reverseLinkedList(head)
    local prev = nil
    local current = head

    while current do
        local nextNode = current.next
        current.next = prev
        prev = current
        current = nextNode
    end

    return prev
end

function printLinkedList(head)
    local current = head
    while current do
        print(current.value)
        current = current.next
    end
end

local list = Node:new(1)
list.next = Node:new(2)
list.next.next = Node:new(3)

print("Original List:")
printLinkedList(list)

local reversedList = reverseLinkedList(list)

print("Reversed List:")
printLinkedList(reversedList)
