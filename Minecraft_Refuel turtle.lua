-- program to refill turtle fuel 
-- Version 1.0
local fuel =  turtle.getFuelLevel()
print(" program to refill" )

for i= 1, 16, 1 do 
  local fuel =  turtle.getFuelLevel()
  turtle.select(i)
  turtle.refuel()
  print(fuel)
end
  
  