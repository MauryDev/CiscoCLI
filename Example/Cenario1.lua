local CiscoCLI = require"CiscoCLI"
local R_ConfigHelp = {
    new = function ()
        local filetxt = io.open("Example/R_Config.txt","r")
        local valuestr = filetxt:read("*a")
        local ciscocommand = CiscoCLI.new()

        return function (args)

            ciscocommand.WriteLineArgs(valuestr,args)
            ciscocommand.SimulateKeyboard()
            ciscocommand.Reset()
        end
    end,
    next = function (args)
        args[1] = args[1] + 1
        args[2] = args[2] + 64
        args[3] = args[3] + 64
        args[4] = args[4] + 29
        args[5] = args[5] - 64
        args[6] = args[6] - 64
        args[7] = args[7] - 29

    end,
    defaults_args = function ()
        return {1,1,33,129,96,64,158}
    end
}
local PC_ConfigHelp = {
    new = function ()
        local filetxt = io.open("Example/PC_Config.txt","r")
        local valuestr = filetxt:read("*a")
        local ciscocommand = CiscoCLI.new()

        return function (args)

            ciscocommand.WriteLineArgs(valuestr,args)
            ciscocommand.SimulateKeyboard()
            ciscocommand.Reset()
        end
    end,
    next = function (args)
        args[1] = args[1] + 32
        args[2] = args[2] + 32


    end,
    defaults_args = function ()
        return {30,1}
    end
}
local SW_ConfigHelp = {
    new = function ()
        local filetxt = io.open("Example/SW_Config.txt","r")
        local valuestr = filetxt:read("*a")
        local ciscocommand = CiscoCLI.new()

        return function (args)

            ciscocommand.WriteLineArgs(valuestr,args)
            ciscocommand.SimulateKeyboard()
            ciscocommand.Reset()
        end
    end,
    next = function (args)
        args[1] = args[1] + 32
        args[2] = args[2] + 1
        args[3] = args[3] + 32


    end,
    defaults_args = function ()
        return {2,1,1}
    end
}
return {
    R_ConfigHelp = R_ConfigHelp,
    PC_ConfigHelp = PC_ConfigHelp,
    SW_ConfigHelp = SW_ConfigHelp
}