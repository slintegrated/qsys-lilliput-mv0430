--[[
A5 6C 02 01 A3 FF 01 00 00 00 00 00 00 00 00 00 --16
90                                              --1
00                                              --1
0A 1B 00 00 0F 00 00 00 00 00 00 00             --12 --index 23 would be output layout settings
4D563034333000000000000000000000000
101070F000000
0A
4A007500640067006500000000000000000000000000000000000000000000000101070F0000000E5700690074006E006500730073000000000000000000000000000000000000000101070F000000164C006100770079006500720020004C00650066007400000000000000000000000101070F000000184C006100770079006500720020005200690067006800740000000000000000000000000000000000000000000000000000000000000000000100070F00000100070F00000100070F00000100070F00007413AE
]]

--this is an awful way to handle this... need to consolidate liliput commands table to handle all of this
local output_layout_options = {
  [0x00] = "QuadViewLed",
  [0x0c] = "Input4Led",
  [0x0d] = "Input3Led",
  [0x0e] = "Input2Led",
  [0x0f] = "Input1Led"
}

function SetFeedback(bytes)
  local x = output_layout_options[tonumber(bytes[23], 16)]
  for k,v in pairs(output_layout_options) do
      Controls[v].Boolean = false
  end
  Controls[x].Boolean = true
end

function Parse(data)
  local bytes = {}
  local counter = 0
  local findStartByte = false
  local x = ""

  --this could fail if string.find returns nil
  data = string.sub(data,string.find(data,"A5"),1000) 

  for i = 1, #data do
    counter = counter+1
    if(counter == 2) then
      x = string.sub(data,i-1,i)
      if not findStartByte then
        if(x == "A5") then
          findStartByte = true
        end
      end
      if findStartByte then
        table.insert(bytes,x)
      end
      counter = 0
    end
  end
  --print(bytes[23])
  --print(string.format("%x",tonumber(bytes[23], 16)))
  --print(output_layout_options[tonumber(bytes[23], 16)])
  SetFeedback(bytes)
  return bytes
end

--local y = " A5 6C 02 01 A3 FF 01 00 00 00 00 00 00 00 00 00 90 00 0A 1B 00 00 0C"--0000000000000004D563034333000000000000000000000000101070F0000000A4A007500640067006500000000000000000000000000000000000000000000000101070F0000000E5700690074006E006500730073000000000000000000000000000000000000000101070F000000164C006100770079006500720020004C00650066007400000000000000000000000101070F000000184C006100770079006500720020005200690067006800740000000000000000000000000000000000000000000000000000000000000000000100070F00000100070F00000100070F00000100070F00006513AE"
--y = y:gsub(" ","")
--Parse(y)