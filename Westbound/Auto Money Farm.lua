-- Owner
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Westbound")

local KillingCheats = PhantomForcesWindow:NewSection("Auto Farm")

-- Add credits in the UI
PhantomForcesWindow:NewSection("By: MR-S team")

KillingCheats:CreateButton("Activate", function()
    local scriptToExecute = game:HttpGet("https://pastebin.com/raw/VVZvF2rA")
    loadstring(scriptToExecute)()
end)
