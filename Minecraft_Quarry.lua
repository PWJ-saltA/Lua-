
slot_fourteen_amount = 0
slot_thirteen_amount = 0
slot_fifteen_amount = 0
slot_twelve_amount = 0
twelve= turtle.getItemCount(12)
thirteen= turtle.getItemCount(13)
fourteen= turtle.getItemCount(14)
fifteen= turtle.getItemCount(15)
print("slot thirteen is for coal")
for i=1, 132 , 1 do 
  --mine one level turn right at start
  turtle.digDown()
  turtle.down()
--inventory dump
twelve= turtle.getItemCount(12)
thirteen= turtle.getItemCount(13)
fourteen= turtle.getItemCount(14)
fifteen= turtle.getItemCount(15)
  if fifteen==64 or fourteen==64 or thirteen== 64 or twelve==64  then
    turtle.dig()
    turtle.select(16)
    turtle.place()
    for i=1, 11, 1 do
      turtle.select(i)
      turtle.drop()
    end
    turtle.select(12)
    slot_twelve_amount = turtle.getItemCount(12) - 1
    turtle.drop(slot_twelve_amount)
    turtle.select(14)
    slot_fourteen_amount = turtle.getItemCount(14) - 1
    turtle.drop(slot_fourteen_amount)
    turtle.select(15)
    slot_fifteen_amount = turtle.getItemCount(15) - 1
    turtle.drop(slot_fifteen_amount)
    turtle.select(13)
    turtle.transferTo(1,3)
    turtle.select(1)
    turtle.refuel()
    turtle.dig()
    turtle.select(1)
    turtle.transferTo(16,1)
    turtle.select(1)
  end
  if i%2==0 then
    for i=1, 16, 1 do 
        twelve= turtle.getItemCount(12)
        thirteen= turtle.getItemCount(13)
        fourteen= turtle.getItemCount(14)
        fifteen= turtle.getItemCount(15)
        print (fifteen)
        if fifteen==64 or fourteen==64 or thirteen== 64 or twelve==64  then
          turtle.dig()
          turtle.select(16)
          turtle.place()
          for i=1, 11, 1 do
            turtle.select(i)
            turtle.drop()
          end
          turtle.select(12)
          slot_twelve_amount = turtle.getItemCount(12) - 1
          turtle.drop(slot_twelve_amount)
          turtle.select(14)
          slot_fourteen_amount = turtle.getItemCount(14) - 1
          turtle.drop(slot_fourteen_amount)
          turtle.select(15)
          slot_fifteen_amount = turtle.getItemCount(15) - 1
          turtle.drop(slot_fifteen_amount)
          turtle.dig()
          turtle.select(1)
          turtle.transferTo(16,1)
          turtle.select(1)
        end
      if i%2==0 then 
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
            for i=1, 16, 1 do 
              turtle.dig()
              turtle.forward()
        end
      else 
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
        for i=1, 16, 1 do 
          turtle.dig()
          turtle.forward()
        end
      end
    end
  else
    for i=1, 16, 1 do 
      if i%2==0 then 
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
        for i=1, 16, 1 do 
          turtle.dig()
          turtle.forward()
        end
      else 
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
        for i=1, 16, 1 do 
          turtle.dig()
          turtle.forward()
        end
      end
    end
  end
end