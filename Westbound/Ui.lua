-- CN
-- 制作团队: MR-S
-- 官网:http://qins.mc.hi.cn/MR-S

-- EN
-- Production Team: MR-S
-- Official Website: http://qins.mc.hi.cn/MR-S


setclipboard('http://qins.mc.hi.cn/MR-S')
game.StarterGui:SetCore('by MR-S team', {
    Text = 'http://qins.mc.hi.cn/MR-S',
    Title = 'Westbound Money Farm',
    Duration = 10,
})

local _LocalPlayer7 = game.Players.LocalPlayer
local _workspaceCurrentCamera8 = workspace.CurrentCamera
local _Character10 = _LocalPlayer7.Character
local _call12 = _Character10:FindFirstChildWhichIsA('Humanoid')
local _call14 = _call12:Clone()

_call14.Parent = _Character10
_LocalPlayer7.Character = nil

_call14:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
_call14:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
_call14:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
_call12:Destroy()

_LocalPlayer7.Character = _Character10
_workspaceCurrentCamera8.CameraSubject = _call14
_workspaceCurrentCamera8.CFrame = _workspaceCurrentCamera8.CFrame
_call14.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

local _call32 = _Character10:FindFirstChild('Animate')

_call32.Disabled = true

wait()

_call32.Disabled = false
_call14.Health = _call14.MaxHealth

task.wait(2)

local _call35 = game:GetService('Workspace')
local _call37 = game:GetService('ReplicatedStorage')
local _LocalPlayer42 = game:GetService('Players').LocalPlayer
local _ = _LocalPlayer42.Character.HumanoidRootPart
local _call46 = _LocalPlayer42:FindFirstChild('States')
local _call48 = _LocalPlayer42:FindFirstChild('Stats')

_call37:FindFirstChild('GeneralEvents'):FindFirstChild('Rob')

local _call56 = _call48:FindFirstChild('BagSizeLevel'):FindFirstChild('CurrentAmount')
local _call58 = _call46:FindFirstChild('Bag')

CFrame.new(1636.62537, 104.349976, -1736.184)
game:GetService('RunService').RenderStepped:Connect(function()
    for _67, _67_2 in ipairs(_call35:GetChildren())do
        local _ = _call58.Value == _call56.Value

        _67_2:IsA('Model')

        local _ = _67_2.Name
    end
    for _76, _76_2 in ipairs(_call35:GetChildren())do
        local _ = _call58.Value == _call56.Value

        _76_2:IsA('Model')

        local _ = _76_2.Name
    end
end)
