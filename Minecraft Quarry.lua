-- Define a function to handle inventory dumping and refueling
function inventoryDump()
  -- Place a chest in front if not already placed
  turtle.dig()
  turtle.select(16)
  turtle.place()

  -- Dump items from slots 1 to 11
  for i = 1, 11, 1 do
    turtle.select(i)
    turtle.drop()
  end

  -- Drop all but 1 item from slots 12 to 15
  for i = 12, 15 do
    turtle.select(i)
    local item_count = turtle.getItemCount(i) - 1  -- Keep 1 item in each slot
    if item_count > 0 then
      turtle.drop(item_count)
    end
  end

  -- Transfer coal from slot 13 to slot 1 and refuel
  if turtle.getFuelLevel() < 50000 then 
    turtle.select(13)
    turtle.transferTo(1, 3)
    turtle.select(1)
    turtle.refuel()
  end

  -- Clear space in front for continued movement
  turtle.dig()
  turtle.select(1)
  turtle.transferTo(16, 1)
  turtle.select(1)
end


-- Get initial item counts for slots 12 to 15
twelve = turtle.getItemCount(12)
thirteen = turtle.getItemCount(13)
fourteen = turtle.getItemCount(14)
fifteen = turtle.getItemCount(15)

print("slot thirteen is for coal")

-- Main mining loop, runs for 132 levels
for i = 1, 132 , 1 do 
  -- Mine down one level
  turtle.digDown()  -- Dig down to clear the block below
  turtle.down()     -- Move down one block

  -- Update item counts after moving down
  twelve = turtle.getItemCount(12)
  thirteen = turtle.getItemCount(13)
  fourteen = turtle.getItemCount(14)
  fifteen = turtle.getItemCount(15)
  -- Alternate between two movement patterns based on even or odd iteration
  if i % 2 == 0 then
    for i = 1, 16, 1 do 
      -- Update item counts during the loop
      twelve = turtle.getItemCount(12)
      thirteen = turtle.getItemCount(13)
      fourteen = turtle.getItemCount(14)
      fifteen = turtle.getItemCount(15)
      print(fifteen)  -- Print slot 15 count for debugging

      -- Check if any slots are full during the loop
      if fifteen == 64 or fourteen == 64 or thirteen == 64 or twelve == 64 then
        inventoryDump()  -- Call inventory management function
      end

      -- Movement pattern based on current iteration
      if i % 2 == 0 then 
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()

        -- Move forward in a line for 16 blocks
        for i = 1, 16, 1 do 
          turtle.dig()
          turtle.forward()
        end
      else 
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()

        -- Move forward in a line for 16 blocks
        for i = 1, 16, 1 do 
          turtle.dig()
          turtle.forward()
        end
      end
    end
  else
    -- Alternate movement for odd iterations
    for i = 1, 16, 1 do 
      if i % 2 == 0 then 
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()

        -- Move forward in a line for 16 blocks
        for i = 1, 16, 1 do 
          turtle.dig()
          turtle.forward()
        end
      else 
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()

        -- Move forward in a line for 16 blocks
        for i = 1, 16, 1 do 
          turtle.dig()
          turtle.forward()
        end
      end
    end
  end
end
