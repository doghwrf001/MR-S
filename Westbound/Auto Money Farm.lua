-- Owner
local Library = loadstring(game:HttpGet("https://github.com/doghwrf001/MR-S/raw/refs/heads/main/Westbound/MR-S_Westbound-Auto%20Money%20Farm.lua"))()

local PhantomForcesWindow = Library:NewWindow("MR-S_Westbound Auto Farm")

local KillingCheats = PhantomForcesWindow:NewSection("刷钱农场")

-- UI
PhantomForcesWindow:NewSection("By qins.mc.hi.cn/MR-S")

KillingCheats:CreateButton("开", function()
    local scriptToExecute = game:HttpGet("https://github.com/doghwrf001/MR-S/raw/refs/heads/main/Westbound/Ui.lua")
    loadstring(scriptToExecute)()
end)
