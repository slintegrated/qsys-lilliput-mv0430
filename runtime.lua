function DeviceSetup()
  print("setting up device")
  IPAddress = Controls.DeviceIp.String
  Port = tonumber(Controls.DevicePort.String)
end

function FakeLedFeedback(pressed)
  for k,v in pairs(Controls) do
      Controls[k].Boolean = false
  end
  pressed.Boolean = true
end

Controls.DeviceIp.EventHandler = function()
  DeviceSetup()
end

Controls.DevicePort.EventHandler = function()
  DeviceSetup()
end

Controls.QuadView.EventHandler = function()
  local command = BuildCommand("output_layout",1)
  Send(command[1])
  print(command[2])
  FakeLedFeedback(Controls.QuadViewLed)
end
Controls.Input1.EventHandler = function()
  local command = BuildCommand("output_layout",16)
  Send(command[1])
  print(command[2])
  FakeLedFeedback(Controls.Input1Led)
end
Controls.Input2.EventHandler = function()
  local command = BuildCommand("output_layout",15)
  Send(command[1])
  print(command[2])
  FakeLedFeedback(Controls.Input2Led)
end
Controls.Input3.EventHandler = function()
  local command = BuildCommand("output_layout",14)
  Send(command[1])
  print(command[2])
  FakeLedFeedback(Controls.Input3Led)
end
Controls.Input4.EventHandler = function()
  local command = BuildCommand("output_layout",13)
  Send(command[1])
  print(command[2])
  FakeLedFeedback(Controls.Input4Led)
end

Controls.GetInfo.EventHandler = function()
  local command = BuildCommand("reading_all_the_data",1)
  Send(command[1])
  print(command[2])
end