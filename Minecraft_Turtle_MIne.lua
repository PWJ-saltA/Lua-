slot_fourteen_amount = 0
slot_fifteen_amount = 0
for i=0, 100 , 1 do
  turtle.dig()
  turtle.forward()
  turtle.digUp()
  turtle.digDown()
  if turtle.getItemCount(15)==64 or turtle.getItemCount(14)==64 then
    turtle.dig()
    turtle.select(16)
    turtle.place()
    for i=1, 13, 1 do
      turtle.select(i)
      turtle.drop()
    end
    turtle.select(14)
    slot_fourteen_amount = turtle.getItemCount(14) - 1
    turtle.drop(slot_fourteen_amount)
    turtle.select(15)
    slot_fifteen_amount = turtle.getItemCount(15) - 1
    turtle.drop(slot_fifteen_amount)
    turtle.dig()
    turtle.select(13)
    turtle.transferTo(16,1)
    turtle.select(1)
  end
    
end
