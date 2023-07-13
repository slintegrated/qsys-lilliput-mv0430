IPAddress = "192.168.61.32"          -- Address of the UDP Communication target
Port = 2468                        -- Port used for sending UDP Datagrams
LocalIPAddress = "192.168.61.19"   -- Address of the Q-Sys Core
LocalPort = 10001                  -- Socket to use on the Q-Sys Core for communication
LocalNICName = "LAN A"             -- Name of the Network Interface (NIC) to use on the Q-Sys Core
MulticastAddress = "224.0.23.175"  -- Multicast address to subscribe to for UDP datagrams
-- Sockets
UDP = UdpSocket.New()  -- Create new UdpSocket object
UDPSocketOpen = false
-- Functions
-- If a NIC is specified by name, bind LocalIPAddress to it
function SelectNIC()  
  if LocalNICName ~= nil then
    -- Detect the local IP address of LAN A
    local nics = Network.Interfaces()
    for i,nic in ipairs(nics) do
      if nic.Interface == LocalNICName then
        LocalIPAddress = nic.Address
      end
    end
  end
end
-- When the UDP Socket is created run these setup functions
function Connected()
  print("UDP Socket Opened")
  UDPSocketOpen = true
  
  -- Start any initial data requests or polling loops here
end
-- Wrapper for safely binding local address
function OpenPorts(ip, port)
  UDP:Open(ip, port)
end
-- Opens a local UDP socket for use
function OpenSocket()  
  -- If a local address has been chosen, open a UDP socket for use
  if LocalIPAddress ~= nil then
    print("Opening: " .. LocalIPAddress .. ":" .. LocalPort)
    -- pcall will prevent down interfaces from causing script errors
    local portGood, err = pcall(OpenPorts, LocalIPAddress, LocalPort)
    if not portGood then
      print("Error opening UDP Socket: " .. err)
    else
      Connected()
    end
  -- Let the core choose the address and port of the UDP socket automatically
  else
    OpenPorts(nil,nil)
    Connected()
  end
end
-- Join the open UDPSocket to a multicast network
-- Datagrams on the address
function JoinMulticast(address)
  if UDPSocketOpen then
    UDP:JoinMulticast(address)
  else
    print("Error joining multicast network: Local Socket Closed")
  end
end
-- Use the open UDPSocket to send a UDP datagram of the string (command) to the IPAddress and Port defined
function Send(command)
  if UDPSocketOpen then
    print("Sending " .. IPAddress .. ":" .. Port .. " datagram: " .. command)  -- Print the command to be sent
    UDP:Send(IPAddress, Port, command)  -- Write command to the UDP socket
  else
    --If the socket is closed, open it and try again
    OpenSocket()
    Send(command)
  end
end
-- Handle cleanup when closing the UDP port
function Close()
  UDP:Close()
  UDPSocketOpen = false
  -- Stop any timers and clear data here
end
-- Parsers
-- UDP Data event is called when data is received on the port, either targeted at the local address or from a multicast network.
UDP.Data = function(socket, packet)
  print("Address: " .. packet.Address, "Port: " .. packet.Port, "Rx: " .. packet.Data)  -- Prints data on the UDP socket
  -- Handle response data here
end
--Setup the UDP sockets to be used 
function Initialize()
  SelectNIC()                      -- Choose the correct NIC for communication
  OpenSocket()                     -- Create the local UDP Socket for use
  JoinMulticast(MulticastAddress)  -- Join the specified multicast 
end
-- Run at start
Initialize()