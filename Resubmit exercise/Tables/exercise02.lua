-- Use Lua tables to manage a simple book inventory.

-- Create a Lua table named books to manage a book inventory. Each book should have the following information:
-- Title (string)
-- Author (string)
-- ISBN (string)
-- Year Published (integer)

--  Write functions to perform the following operations:
-- a. Add a new book to the books table.
-- b. Search for a book by ISBN and print its details.
-- c. List all the books in the inventory.



-- Create an empty books table to manage the book inventory
local books = {}

-- Function to add a new book to the inventory
function add_book(title, author, isbn, year_published)
    local new_book = {
        Title = title,
        Author = author,
        ISBN = isbn,
        YearPublished = year_published
    }
    table.insert(books, new_book)
end


-- Function to search for a book by ISBN and print its details
function search_book_by_isbn(isbn)
    for _, book in ipairs(books) do
        if book.ISBN == isbn then
            print("Title: " .. book.Title)
            print("Author: " .. book.Author)
            print("ISBN: " .. book.ISBN)
            print("Year Published: " .. book.YearPublished)
            return
        end
    end
    print("Book with ISBN " .. isbn .. " not found.")
end

-- Function to list all the books in the inventory
function list_books()
    for index, book in ipairs(books) do
        print("Book #" .. index)
        print("Title: " .. book.Title)
        print("Author: " .. book.Author)
        print("ISBN: " .. book.ISBN)
        print("Year Published: " .. book.YearPublished)
        print()
    end
end

-- Add some books to the inventory
add_book("Book 1", "Author 1", "ISBN001", 2000)
add_book("Book 2", "Author 2", "ISBN002", 2005)
add_book("Book 3", "Author 3", "ISBN003", 2010)


-- Search for a book by ISBN and print its details
search_book_by_isbn("ISBN002")

-- List all the books in the inventory
list_books()