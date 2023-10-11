local CiscoCLI = require"CiscoCLI"
local Cenario1 = require"Example.Cenario1"

local RConfig = Cenario1.R_ConfigHelp
local PC_Config = Cenario1.PC_ConfigHelp
local SW_Config = Cenario1.SW_ConfigHelp

local mycommand = RConfig.new()

local args = RConfig.defaults_args()

while true do 
    
    CiscoCLI.t_Delay(100)
    -- F9
    if CiscoCLI.GetAsyncKeyState(0x78) then
        mycommand(args)
        RConfig.next(args)

        CiscoCLI.t_Delay(900)

    end
    -- F10
    if CiscoCLI.GetAsyncKeyState(0x79) then
        break
    end
end