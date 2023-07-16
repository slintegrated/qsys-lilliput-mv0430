table.insert(ctrls, { 
  Name = "DeviceIp",
  ControlType = "Text",
  Count = 1,
  UserPin = false,
})
table.insert(ctrls, { 
  Name = "DevicePort",
  ControlType = "Text",
  Count = 1,
  UserPin = false,
  DefaultValue = "7000"
})
table.insert(ctrls, {
  Name = "Interface",
  ControlType = "Text",
  TextType = "List Box",
  Count = 1,
  UserPin = false,
  DefaultValue = "LAN A",
  Choices = {"LAN A","LAN B"}
})

table.insert(ctrls, { 
  Name = "QuadView",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
})
table.insert(ctrls, { 
  Name = "Input1",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
})
table.insert(ctrls, { 
  Name = "Input2",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
})
table.insert(ctrls, { 
  Name = "Input3",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
})
table.insert(ctrls, { 
  Name = "Input4",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  --Icon = "Power"
})

table.insert(ctrls, { 
  Name = "GetInfo",
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  --Icon = "Power"
})

table.insert(ctrls,{
  Name = "QuadViewLed",
  ControlType = "Indicator",
  IndicatorType = "Led",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})
table.insert(ctrls,{
  Name = "Input1Led",
  ControlType = "Indicator",
  IndicatorType = "Led",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})
table.insert(ctrls,{
  Name = "Input2Led",
  ControlType = "Indicator",
  IndicatorType = "Led",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})
table.insert(ctrls,{
  Name = "Input3Led",
  ControlType = "Indicator",
  IndicatorType = "Led",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})
table.insert(ctrls,{
  Name = "Input4Led",
  ControlType = "Indicator",
  IndicatorType = "Led",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})

table.insert(ctrls,{
  Name = "StatusLed",
  ControlType = "Indicator",
  IndicatorType = "Led",
  UserPin = true,
  PinStyle = "Output",
  Count = 1
})