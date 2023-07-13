function OpenSocket(v)
  print(v)
end

Controls.SendButton.EventHandler = function()
  OpenSocket("testing function")
  print(Lilliput.apple)
end

Controls.TestButton.EventHandler = function()
  print("testing")
end