-- Create a metatable to represent units of measurement and perform automatic unit conversion when adding two values with different units.

-- Create a metatable unitMeta with the __add metamethod that allows for unit conversion when adding values.

-- Define tables, distance, a metatable set to unitMeta. The metatable should store the unit name and conversion factor.

-- Implement the __add metamethod to convert values with different units and return the result.

-- Test your implementation by adding distances and times with different units, and ensure that the conversions are handled correctly.

-- Define the unitMeta metatable with the __add metamethod
unitMeta = {
    -- Define the __add metamethod
    __add = function(lhs, rhs)
      -- Check if the units are the same
      if lhs.unit == rhs.unit then
        return { value = lhs.value + rhs.value, unit = lhs.unit }
      else
        -- Create a table to store unit conversion factors
        local conversionFactors = {
          ["km"] = 1000,  -- 1 km = 1000 m
          ["m"] = 1,      -- 1 m = 1 m
        }
  
        -- Check if the units are in the conversionFactors table
        if conversionFactors[lhs.unit] and conversionFactors[rhs.unit] then
          -- Convert the values to a common unit (meters)
          local convertedValue1 = lhs.value * conversionFactors[lhs.unit]
          local convertedValue2 = rhs.value * conversionFactors[rhs.unit]
  
          -- Add the converted values
          return { value = convertedValue1 + convertedValue2, unit = "m" }
        else
          error("Cannot add values with different or unsupported units")
        end
      end
    end
  }
  
  -- Create a table for distance with the unitMeta metatable
  distance = setmetatable({ value = 0, unit = "" }, unitMeta)
  
  -- Define the distance values
  distance.value, distance.unit = 5, "km"
  distance2 = setmetatable({ value = 0, unit = "" }, unitMeta)
  distance2.value, distance2.unit = 50, "m"
  
  -- Perform the addition and get the result
  result = distance + distance2
  
  -- Output the result
  print("Total Distance:", result.value, result.unit)