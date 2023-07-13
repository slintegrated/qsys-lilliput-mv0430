Controls.QuadView.EventHandler = function()
  local command = BuildCommand("output_layout",1)
  Send(command[1])
  print(command[2])
end
Controls.Input1.EventHandler = function()
  local command = BuildCommand("output_layout",16)
  Send(command[1])
  print(command[2])
end
Controls.Input2.EventHandler = function()
  local command = BuildCommand("output_layout",15)
  Send(command[1])
  print(command[2])
end
Controls.Input3.EventHandler = function()
  local command = BuildCommand("output_layout",14)
  Send(command[1])
  print(command[2])
end
Controls.Input4.EventHandler = function()
  local command = BuildCommand("output_layout",13)
  Send(command[1])
  print(command[2])
end