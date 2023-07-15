local CurrentPage = PageNames[props["page_index"].Value]

local ButtonYStart = 62
local ButtonYOffset = 25
local TextXStart = 20
local TextXOffset = 100
local ButtonXStart = TextXStart + TextXOffset
local ButtonSize = {50,16}
local TextBoxSize = {90,16}
local TextFontColor = {0,0,0}
local LedColor = {225,174,85}
local LedOffset = 60
local LedSize = {16,16}
local LedXStart = ButtonXStart + LedOffset
local LedYOffset = 0

function ButtonYPosition()
  ButtonYStart = ButtonYStart + ButtonYOffset
  return ButtonYStart
end

if CurrentPage == "Control" then
  table.insert(graphics,{
    Type = "GroupBox",
    Fill = {200,200,200},
    StrokeWidth = 0,
    Position = {5,5},
    Size = {225,250}
  })
  table.insert(graphics,{
    Type = "Svg",
    Image = Images.background,
    Position = {5,5},
    Size = {225,250}
  })

  --local y = ButtonYPosition()
  table.insert(graphics,{
    Type = "Text",
    Text = "Quad View",
    Position = {TextXStart,ButtonYStart},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["QuadView"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Trigger",
    Position = {ButtonXStart,ButtonYStart},
    Size = ButtonSize,
    Color = {0,0,0}
  }
  layout["QuadViewLed"] = {
    PrettyName = "LED",
    Style = "Led",
    Position = {LedXStart,ButtonYStart+LedYOffset},
    Size = LedSize,
    Color = LedColor
  }

  local y = ButtonYPosition()
  table.insert(graphics,{
    Type = "Text",
    Text = "Input 1",
    Position = {TextXStart,y},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["Input1"] = {
    PrettyName = "Buttons~Set Layout to Input 1",
    Style = "Trigger",
    Position = {ButtonXStart,y},
    Size = ButtonSize,
    Color = {0,0,0}
  }
  layout["Input1Led"] = {
    PrettyName = "LED",
    Style = "Led",
    Position = {LedXStart,y+LedYOffset},
    Size = LedSize,
    Color = LedColor
  }

  local y = ButtonYPosition()
  table.insert(graphics,{
    Type = "Text",
    Text = "Input 2",
    Position = {TextXStart,y},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["Input2"] = {
    PrettyName = "Buttons~Set Layout to Input 2",
    Style = "Trigger",
    Position = {ButtonXStart,y},
    Size = ButtonSize,
    Color = {0,0,0}
  }
  layout["Input2Led"] = {
    PrettyName = "LED",
    Style = "Led",
    Position = {LedXStart,y+LedYOffset},
    Size = LedSize,
    Color = LedColor
  }

  local y = ButtonYPosition()
  table.insert(graphics,{
    Type = "Text",
    Text = "Input 3",
    Position = {TextXStart,y},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["Input3"] = {
    PrettyName = "Buttons~Set Layout to Input 3",
    Style = "Trigger",
    Position = {ButtonXStart,y},
    Size = ButtonSize,
    Color = {0,0,0}
  }
  layout["Input3Led"] = {
    PrettyName = "LED",
    Style = "Led",
    Position = {LedXStart,y+LedYOffset},
    Size = LedSize,
    Color = LedColor
  }

  local y = ButtonYPosition()
  table.insert(graphics,{
    Type = "Text",
    Text = "Input 4",
    Position = {TextXStart,y},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["Input4"] = {
    PrettyName = "Buttons~Set Layout to Input 4",
    Style = "Trigger",
    Position = {ButtonXStart,y},
    Size = ButtonSize,
    Color = {0,0,0}
  }
  layout["Input4Led"] = {
    PrettyName = "LED",
    Style = "Led",
    Position = {LedXStart,y+LedYOffset},
    Size = LedSize,
    Color = LedColor
  }

  layout['DeviceIp'] = {
    Style = "Text",
    Position = {125,232},
    Size = {100,16},
    Color = {0,0,0},
    StrokeWidth = 1,
    StrokeColor = {10,10,10}
  }

  --[[
  local y = ButtonYPosition()
  table.insert(graphics,{
    Type = "Text",
    Text = "Get Info",
    Position = {TextXStart,y},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["GetInfo"] = {
    PrettyName = "Buttons~Get Device Info",
    Style = "Trigger",
    Position = {ButtonXStart,y},
    Size = ButtonSize,
    Color = {0,0,0}
  }
]]


elseif CurrentPage == "Setup" then
  table.insert(graphics,{
    Type = "GroupBox",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {200,500}
  })

  table.insert(graphics,{
    Type = "Text",
    Text = "Interface",
    Position = {TextXStart,42},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout['Interface'] = {
    Style = "ListBox",
    Position = {ButtonXStart,42},
    Size = {82,16},
    Color = {0,0,0},
  }

end
--[[
table.insert(graphics,{
    Type = "Text",
    Text = "Device IP",
    Position = {TextXStart,62},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout['DeviceIp'] = {
    Style = "Text",
    Position = {ButtonXStart,62},
    Size = {82,16},
    Color = {0,0,0},
  }
  table.insert(graphics,{
    Type = "Text",
    Text = "Device Port",
    Position = {TextXStart,82},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout['DevicePort'] = {
    Style = "Text",
    Position = {ButtonXStart,82},
    Size = {82,16},
    Color = {0,0,0},
  }
end
]]