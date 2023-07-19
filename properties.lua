table.insert(props, {
  Name = "Debug Print",
  Type = "enum",
  Choices = {"None", "Tx/Rx", "Tx", "Rx", "Function Calls", "All"},
  Value = "None",
})

table.insert(props, {
  Name = "Interface",
  Type = "enum",
  Choices = {"LAN A","LAN B"},
  Value = "LAN A",
})