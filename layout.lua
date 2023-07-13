local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Control",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {500,500}
  })

  
  layout['InputBox'] = {
    Style = "Text",
    Position = {10,300},
    Size = {500,16},
    Color = {0,0,0},
  }
  
  layout["QuadView"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {250,62},
    Size = {100,100},
    Color = {0,0,0},
  }
  table.insert(graphics,{
    Type = "Svg",
    Image = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyBpZD0iTGF5ZXJfMSIgZGF0YS1uYW1lPSJMYXllciAxIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMDAgMTAwIj4KICA8ZGVmcz4KICAgIDxzdHlsZT4KICAgICAgLmNscy0xIHsKICAgICAgICBmaWxsOiAjZmZmOwogICAgICB9CgogICAgICAuY2xzLTIgewogICAgICAgIGZpbGw6ICNmMmYyZjM7CiAgICAgICAgZm9udC1mYW1pbHk6IE15cmlhZFByby1SZWd1bGFyLCAnTXlyaWFkIFBybyc7CiAgICAgICAgZm9udC1zaXplOiAyNXB4OwogICAgICB9CgogICAgICAuY2xzLTMgewogICAgICAgIGZpbGw6ICMxOTE5MTk7CiAgICAgIH0KICAgIDwvc3R5bGU+CiAgPC9kZWZzPgogIDxnPgogICAgPHJlY3QgY2xhc3M9ImNscy0zIiB4PSIuMTMiIHk9Ii4xMiIgd2lkdGg9IjQ5Ljc1IiBoZWlnaHQ9IjQ5Ljc1Ii8+CiAgICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Im00OS43NS4yNXY0OS41SC4yNVYuMjVoNDkuNW0uMjUtLjI1SDB2NTBoNTBWMGgwWiIvPgogIDwvZz4KICA8dGV4dCBjbGFzcz0iY2xzLTIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE4LjU5IDMyLjM0KSI+PHRzcGFuIHg9IjAiIHk9IjAiPjE8L3RzcGFuPjwvdGV4dD4KICA8Zz4KICAgIDxyZWN0IGNsYXNzPSJjbHMtMyIgeD0iNTAuMTIiIHk9Ii4xMyIgd2lkdGg9IjQ5Ljc1IiBoZWlnaHQ9IjQ5Ljc1Ii8+CiAgICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Im05OS43NS4yNXY0OS41aC00OS41Vi4yNWg0OS41TTEwMCwwaC01MHY1MGg1MFYwaDBaIi8+CiAgPC9nPgogIDx0ZXh0IGNsYXNzPSJjbHMtMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNjguNTkgMzIuMzQpIj48dHNwYW4geD0iMCIgeT0iMCI+MjwvdHNwYW4+PC90ZXh0PgogIDxnPgogICAgPHJlY3QgY2xhc3M9ImNscy0zIiB4PSIuMTIiIHk9IjUwLjE5IiB3aWR0aD0iNDkuNzUiIGhlaWdodD0iNDkuNzUiLz4KICAgIDxwYXRoIGNsYXNzPSJjbHMtMSIgZD0ibTQ5Ljc1LDUwLjMxdjQ5LjVILjI1di00OS41aDQ5LjVtLjI1LS4yNUgwdjUwaDUwdi01MGgwWiIvPgogIDwvZz4KICA8dGV4dCBjbGFzcz0iY2xzLTIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE4LjU5IDgyLjQpIj48dHNwYW4geD0iMCIgeT0iMCI+MzwvdHNwYW4+PC90ZXh0PgogIDxnPgogICAgPHJlY3QgY2xhc3M9ImNscy0zIiB4PSI1MC4xMiIgeT0iNTAuMTkiIHdpZHRoPSI0OS43NSIgaGVpZ2h0PSI0OS43NSIvPgogICAgPHBhdGggY2xhc3M9ImNscy0xIiBkPSJtOTkuNzUsNTAuMzF2NDkuNWgtNDkuNXYtNDkuNWg0OS41bS4yNS0uMjVoLTUwdjUwaDUwdi01MGgwWiIvPgogIDwvZz4KICA8dGV4dCBjbGFzcz0iY2xzLTIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDY4LjU5IDgyLjQpIj48dHNwYW4geD0iMCIgeT0iMCI+NDwvdHNwYW4+PC90ZXh0Pgo8L3N2Zz4=",
    Position = {250,62},
    Size = {100,100},
  })

  table.insert(graphics,{
    Type = "Text",
    Text = "Input 1",
    Position = {10,62},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout["Input1"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,62},
    Size = {50,16},
    Color = {0,0,0}
  }

  table.insert(graphics,{
    Type = "Text",
    Text = "Input 2",
    Position = {10,82},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout["Input2"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,82},
    Size = {50,16},
    Color = {0,0,0}
  }

  table.insert(graphics,{
    Type = "Text",
    Text = "Input 3",
    Position = {10,102},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout["Input3"] = {
    PrettyName = "Buttons~Set Layout to Quad View",
    Style = "Button",
    Position = {105,102},
    Size = {50,16},
    Color = {0,0,0}
  }

  table.insert(graphics,{
    Type = "Text",
    Text = "Input 4",
    Position = {10,122},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
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