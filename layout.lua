local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Control",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {200,100}
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Say Hello:",
    Position = {10,42},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout["QuadView"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,42},
    Size = {50,16},
    Color = {0,0,0}
  }
  layout["Input1"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,62},
    Size = {50,16},
    Color = {0,0,0}
  }
  layout["Input2"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,82},
    Size = {50,16},
    Color = {0,0,0}
  }
  layout["Input3"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,102},
    Size = {50,16},
    Color = {0,0,0}
  }
  layout["Input4"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,122},
    Size = {50,16},
    Color = {0,0,0}
  }
elseif CurrentPage == "Setup" then
  -- TBD
end