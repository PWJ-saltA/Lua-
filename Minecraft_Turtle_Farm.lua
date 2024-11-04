
in_front = turtle.detect()
j=1

for i=1, 100 , 1 do
  while true do
    in_front = turtle.detect()
    exist, data = turtle.inspectDown()
      if exist and data.state.age ==7 then 
        turtle.digDown()
        turtle.suckDown()
      end
    turtle.forward()
    turtle.suckDown()
  end
  while in_front do 
    j=j+1
    if j%2==0 then
      in_front = turtle.detect()
      turtle.turnLeft()
      in_front = turtle.detect()
      if in_front then
        turtle.turnRight()
        turtle.turnRight()
      else
      end
      turtle.forward()
      in_front = turtle.detect()
      turtle.turnLeft()
      in_front = turtle.detect()
    else
      in_front = turtle.detect()
      turtle.turnRight()
       in_front = turtle.detect()
      if in_front then
        turtle.turnRight()
        turtle.turnRight()
      else
      end
      turtle.forward()
      in_front = turtle.detect()
      turtle.turnRight()
      in_front = turtle.detect()
    end
  end
end
