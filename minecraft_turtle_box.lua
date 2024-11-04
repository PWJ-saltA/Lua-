while true do 
  --turtle.select(15)
  if turtle.getItemCount(15)==64 then
    turtle.select(16)
    turtle.place()
    for i=1, 15, 1 do
      turtle.select(i)
      turtle.drop()
    end
  end
end