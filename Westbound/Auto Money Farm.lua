-- Owner
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("MR-S_Westbound Auto Farm")

local KillingCheats = PhantomForcesWindow:NewSection("刷钱农场")

-- UI
PhantomForcesWindow:NewSection("By qins.mc.hi.cn/MR-S")

KillingCheats:CreateButton("开", function()
    local scriptToExecute = game:HttpGet("https://pastebin.com/raw/VVZvF2rA")
    loadstring(scriptToExecute)()
end)
