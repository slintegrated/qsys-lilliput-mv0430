local CurrentPage = PageNames[props["page_index"].Value]

local ButtonYStart = 62
local ButtonYOffset = 25
local TextXStart = 10
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
    Text = "Input 1",
    Position = {TextXStart,ButtonYStart},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["Input1"] = {
    PrettyName = "Buttons~Set Layout to Input 1",
    Style = "Trigger",
    Position = {ButtonXStart,ButtonYStart},
    Size = ButtonSize,
    Color = {0,0,0}
  }
  layout["Input1Led"] = {
    PrettyName = "Input1Led",
    Style = "Led",
    Position = {LedXStart,ButtonYStart+LedYOffset},
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
    PrettyName = "Input2Led",
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
    PrettyName = "Input3Led",
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
    PrettyName = "Input4Led",
    Style = "Led",
    Position = {LedXStart,y+LedYOffset},
    Size = LedSize,
    Color = LedColor
  }

  local y = ButtonYPosition()
  table.insert(graphics,{
    Type = "Text",
    Text = "Quad View",
    Position = {TextXStart,y},
    Size = TextBoxSize,
    FontSize = 14,
    Color = TextFontColor,
    HTextAlign = "Right"
  })
  layout["QuadView"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Trigger",
    Position = {ButtonXStart,y},
    Size = ButtonSize,
    Color = {0,0,0}
  }
  layout["QuadViewLed"] = {
    PrettyName = "QuadViewLed",
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
  layout["StatusLed"] = {
    PrettyName = "QuadViewLed",
    Style = "Led",
    Position = {13,232},
    Size = LedSize,
    Color = {111,140,118}
  }

end