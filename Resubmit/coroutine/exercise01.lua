-- Write a Lua program that uses coroutines to count down from 5 to 1, with a one-second delay between each count. After reaching 1, print "Blast-off!".


function sleep(seconds)
    os.execute("sleep " .. tonumber(seconds))
end

co = coroutine.create(function ()
	for i = 1, 10 do
		print(i)
		coroutine.yield()
	end
end)

-- Main

print("COUNTDOWN IN...!!")

for i = 1, 10 do
    sleep(1)  -- Call sleep function for one second
    coroutine.resume(co)
    if i == 10 then
        print("Blast-off!")
    end
end

