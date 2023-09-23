-- Create a function to initialize an account
    local function createAccount(initialBalance, owner)
        local balance = initialBalance
    
        -- Define a function for withdrawing money from the account
        local function withdraw(amount)
            if amount <= balance then
                balance = balance - amount
                return true
            else
                return false
            end
        end
    
        -- Define a function to get the account balance
        local function getBalance()
            return balance
        end
    
        -- Create a table containing methods for interacting with the account
        local account = {
            withdraw = withdraw,
            getBalance = getBalance,
            owner = owner,
        }
    
        return account
    end
    
    -- Create two account objects
    local account1 = createAccount(1000, "John Doe")
    local account2 = createAccount(500, "Jane Doe")
    
    -- Attempt to withdraw $500 from account1
    if account1.withdraw(500) then
        print("Successfully withdrew $500 from " .. account1.owner)
    else
        print("Insufficient funds for " .. account1.owner)
    end
    
    -- Display the updated balance for account1
    print("Updated balance for " .. account1.owner .. ": $" .. account1.getBalance() .. "\n")
    
    -- Attempt to withdraw $1000 from account2
    if account2.withdraw(1000) then
        print("Successfully withdrew $1000 from " .. account2.owner)
    else
        print("Insufficient funds for " .. account2.owner)
    end
    
    -- Display the updated balance for account2
    print("Updated balance for " .. account2.owner .. ": $" .. account2.getBalance())