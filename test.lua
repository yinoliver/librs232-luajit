-- Simple script for testing porpuses of "librs232-luajit"
-- read from the port
local rs232 = require("mod_librs232")
port = rs232.new()
-- Arguments:
-- 	Device name, Baud rate, Timeout in micro-seconds
port:open("/dev/ttyUSB0", 115200, 10000)
count, data = port:read()
print(data)
port:close()

-- write to port
local rs232 = require("./librs232-luajit-master/mod_librs232")
port = rs232.new()
-- Arguments:
-- 	Device name, Baud rate, Timeout in micro-seconds
port:open("/dev/ttyS0", 115200, 10000)
print("/n open succ")
data="Please or your string"
port:write(data:byte(1,data:len(str)),data:len(str))
port:close()
print("/n close succ")

