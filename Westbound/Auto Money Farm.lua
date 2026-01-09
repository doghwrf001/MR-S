-- Owner
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Westbound")

local KillingCheats = PhantomForcesWindow:NewSection("Auto Farm")

-- Add credits in the UI
PhantomForcesWindow:NewSection("By: MR-S team")

KillingCheats:CreateButton("Activate", function()
    local scriptToExecute = game:HttpGet("https://github.com/doghwrf001/MR-S/raw/refs/heads/main/Westbound/MR-S%20_Money%20Farm.lua")
    loadstring(scriptToExecute)()
end)
