LilliputCommands = {
  scanning = {
    command = 0xff,
    options = {}
  },
  reading_all_the_data = {
    command = 0x90,
    options = {}
  },
  rename_the_device = {
    command = 0x91,
    options = {},
  },
  output_resolution = {
    command = 0x92,
    options = {
      {0x00,"1080p60hz"}, --1 
      {0x01,"1080p50hz"}, --2 
      {0x02,"1080p30hz"}, --3 
      {0x03,"1080p25hz"}, --4
      {0x04,"1080p24hz"}, --5
      {0x05,"1080i60hz"}, --6
      {0x06,"1080i50hz"}, --7
      {0x07,"720p60hz"},  --8
      {0x08,"720p50hz"},  --9
      {0x09,"720p30hz"},  --10
      {0x0a,"720p25hz"}   --11
    },
  },
  border_enable = {
    command = 0xa4,
    options = {{0x00,"disable"},{0x01,"enable"}}
  },
  border_color = {
    command = 0x93,
    options = {},
  },
  output_layout = {
    command = 0x94,
    options = {
      {0x00,"quad"},                                                  --1
      {0x01,"2-3-4 on top | 1 on bottom"},                            --2
      {0x02,"1 on top | 2-3-4 on bottom"},                            --3
      {0x03,"1 on left | 2-3-4 on right"},                            --4
      {0x04,"2-3-4 on left | 1 on right"},                            --5
      {0x05,"1 fullscreen | 2 pip bottom left | 3 pip bottom right"}, --6
      {0x06,"1 top center | 2-3 side-by-side on bottom"},             --7
      {0x07,"1 fullscreen | 2 pip top right"},                        --8
      {0x08,"1 fullscreen | 2 pip top left"},                         --9
      {0x09,"1 fullscreen | 2 pip bottom left"},                      --10
      {0x0a,"1 fullscreen | 2 pip bottom right"},                     --11 
      {0x0b,"1 on left | 2 on right"},                                --12
      {0x0c,"4 fullscreen"},                                          --13
      {0x0d,"3 fullscreen"},                                          --14
      {0x0e,"2 fullscreen"},                                          --15
      {0x0f,"1 fullscreen"}                                           --16
    },
  },
  umd_overlay_enable = {
    command = 0x95,
    options = {},
  },
  umd_position = {
    command = 0x96,
    options = {},
  },
  umd_character_color = {
    command = 0x97,
    options = {},
  },
  umd_background_color = {
    command = 0x98,
    options = {},
  },
  umd_text = {
    command = 0x99,
    options = {},
  },
  audio_meter_enable = {
    command = 0x9a,
    options = {},
  },
  audio_meter_position = {
    command = 0x9b,
    options = {},
  },
  audio_meter_channel = {
    command = 0x9e,
    options = {},
  },
  osd_enable = {
    comand = 0x9f,
    options = {},
  },
  osd_text_color = {
    command = 0xa0,
    options = {},
  },
  osd_background_color = {
    command = 0xa1,
    options = {},
  },
  osd_position = {
    command = 0xa2,
    options = {},
  },
  custom = {
    command = 0xa3,
    options = {},
  },
  size_of_character_overlay = {
    command = 0xa5,
    options = {},
  },
  reset = {
    command = 0xa6,
    options = {},
  },
  manual_setting_ip = {
    command = 0xa7, --this one will require extra work...
    options = {},
  }
}

function StringTrim(s)
  return s:match'^%s*(.*)'
end

function ByteLength(n)
  if(#n==1) then
    n = "0" .. n
  end
  return n
end

function CalculateChecksum(i)
  local quotient = math.floor(i / 0x100)
  local remainder = i % 0x100
  return ByteLength(string.format("%x",remainder)) .. " " .. ByteLength(string.format("%x",quotient))
end

function BuildCommand(c,o)
  --if using the names on the right as table indexes the for loop did not consisntely loop to the same keys with each pass!
  --therefore an index based table was used instead with each index being a data packet
  local packet_structure = {
    {0xa5,0x6C},                                    --packet_header
    {0x00,0x00},                                    --data_length
    {0xa3},                                         --device_type
    {0xff},                                         --device_id
    {0x01},                                         --interface_type
    {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}, --reserve 
    {LilliputCommands[c].command},                  --command
    {LilliputCommands[c].options[o][1]},            --packet_data
    {0x00},                                         --checksum 
    {0xae},                                         --packet_end
  }

  local command_string = ""
  local data_length = 0
  local chksm = 0
  
  --create output string
  for k,v in pairs(packet_structure) do
    if(k==2) then --3rd and 4th bytes are data length - they're in the second section of bytes
      command_string = command_string .. " DATA_LENGTH 00"
      data_length = data_length + 2
    elseif (k==9) then
      command_string = command_string .. " CHECKSUM"
      data_length = data_length + 2
    else
      for i=1, #v do
        command_string = command_string .. " " .. ByteLength(string.format("%x",v[i]))
        data_length = data_length + 1
        if(k<10) then
          chksm = chksm + v[i]
        end
      end
    end
  end
  
  chksm = chksm + data_length
  command_string = command_string:gsub("DATA_LENGTH",ByteLength(string.format("%x",data_length)))
  command_string = command_string:gsub("CHECKSUM",CalculateChecksum(chksm))
  command_string = command_string:gsub(" ","\\x")
  return({StringTrim(command_string),LilliputCommands[c].options[o][2]})
end

--x = (BuildCommand('output_resolution',1))
--print(x[1] .. "\n" .. x[2])