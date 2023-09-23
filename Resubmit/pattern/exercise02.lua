-- Write a Lua function called validateEmail that takes an email address as input and returns true if the email address is valid according to a basic pattern matching rule. The function should return false if the email address is not valid.

-- Some criterias:
-- 1. It should contain exactly one "@" symbol.
-- 2. The "@" symbol should not be the first or last character in the email.
-- 3. It should have at least one character before the "@" symbol and at least one character after it.
-- 4. It should not contain spaces.

function validateEmail(email)
    -- Check if the email contains exactly one "@" symbol.
    local atSymbolCount = email:match("@") and 1 or 0
    if atSymbolCount ~= 1 then
        return false
    end

    -- Check if "@" is not the first or last character in the email.
    if email:find("^@") or email:find("@$") then
        return false
    end

    -- Split the email into two parts before and after "@".
    local beforeAt, afterAt = email:match("^(.-)@(.+)$")

    -- Check if there is at least one character before and after "@".
    if not beforeAt or not afterAt or beforeAt == "" or afterAt == "" then
        return false
    end

    -- Check if there are no spaces in the email.
    if email:find("%s") then
        return false
    end

    return true
end

-- Test the function with sample email addresses
print(validateEmail("user@example.com")) -- Should return true
print(validateEmail("invalid-email"))      -- Should return false
print(validateEmail("name@server.co"))     -- Should return true
print(validateEmail("@invalid.com"))       -- Should return false
print(validateEmail("spaces are invalid@example.com")) -- Should return false
