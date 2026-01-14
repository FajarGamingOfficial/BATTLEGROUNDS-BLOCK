local TS = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local CG = game:GetService("CoreGui")
local PLRS = game:GetService("Players")
local LP = PLRS.LocalPlayer

local UI_NAME = "va!storaabg"
if CG:FindFirstChild(UI_NAME) then CG[UI_NAME]:Destroy() end

-- Remote Event disamarkan agar tidak gampang di-copy
local _RE = {
    [1] = "\83\112\97\119\110\71\97\108\97\120\121\66\108\111\99\107",
    [2] = "\83\112\97\119\110\68\105\97\109\111\110\100\66\108\111\99\107",
    [3] = "\83\112\97\119\110\82\97\105\110\98\111\119\66\108\111\99\107",
    [4] = "\83\112\97\119\110\76\117\99\107\121\66\108\111\99\107"
}

local function ShowNotif()
    local g = Instance.new("ScreenGui", CG)
    local f = Instance.new("Frame", g)
    f.Size = UDim2.new(0, 280, 0, 70)
    f.Position = UDim2.new(0.5, -140, 0, -100)
    f.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    Instance.new("UICorner", f).CornerRadius = UDim.new(0, 12)
    Instance.new("UIStroke", f).Color = Color3.fromRGB(80, 120, 255)
    
    local t1 = Instance.new("TextLabel", f)
    t1.Size = UDim2.new(1, 0, 0.6, 0)
    t1.Text = "VASTORA"
    t1.TextColor3 = Color3.fromRGB(80, 120, 255)
    t1.Font = Enum.Font.GothamBold
    t1.TextSize = 22
    t1.BackgroundTransparency = 1
    
    local t2 = Instance.new("TextLabel", f)
    t2.Size = UDim2.new(1, 0, 0.4, 0)
    t2.Position = UDim2.new(0, 0, 0.5, 0)
    t2.Text = "Welcome, " .. LP.Name
    t2.TextColor3 = Color3.new(1, 1, 1)
    t2.Font = Enum.Font.GothamSemibold
    t2.TextSize = 12
    t2.BackgroundTransparency = 1
    
    f:TweenPosition(UDim2.new(0.5, -140, 0, 40), "Out", "Back", 0.6)
    task.wait(3)
    f:TweenPosition(UDim2.new(0.5, -140, 0, -100), "In", "Quad", 0.6)
    task.wait(1)
    g:Destroy()
end

local MainGui = Instance.new("ScreenGui", CG)
MainGui.Name = UI_NAME

local M = Instance.new("Frame", MainGui)
M.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
M.Position = UDim2.new(0.5, -90, 0.5, -75)
M.Size = UDim2.new(0, 180, 0, 150)
M.ClipsDescendants = true
Instance.new("UICorner", M).CornerRadius = UDim.new(0, 12)
local S = Instance.new("UIStroke", M)
S.Color = Color3.fromRGB(80, 120, 255)
S.Thickness = 2

local H = Instance.new("Frame", M)
H.Size = UDim2.new(1, 0, 0, 40)
H.BackgroundTransparency = 1

local L = Instance.new("TextLabel", H)
L.Size = UDim2.new(1, -50, 1, 0)
L.Position = UDim2.new(0, 12, 0, 0)
L.Text = "BG BLOCK"
L.TextColor3 = Color3.new(1, 1, 1)
L.Font = Enum.Font.GothamBold
L.TextSize = 14
L.TextXAlignment = "Left"
L.BackgroundTransparency = 1

local B = Instance.new("TextButton", H)
B.Size = UDim2.new(0, 24, 0, 24)
B.Position = UDim2.new(1, -32, 0.5, -12)
B.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
B.Text = "-"
B.TextColor3 = Color3.new(1, 1, 1)
B.Font = Enum.Font.GothamBold
Instance.new("UICorner", B).CornerRadius = UDim.new(0, 6)

local Btn = Instance.new("TextButton", M)
Btn.Size = UDim2.new(0.8, 0, 0, 40)
Btn.Position = UDim2.new(0.1, 0, 0.35, 0)
Btn.Text = "INFINITY BLOCK"
Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
Btn.TextColor3 = Color3.new(0.8, 0.8, 0.8)
Btn.Font = Enum.Font.GothamSemibold
Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 8)

local Cr = Instance.new("TextLabel", M)
Cr.Size = UDim2.new(1, 0, 0, 20)
Cr.Position = UDim2.new(0, 0, 0.8, 0)
Cr.Text = "by va!storaa"
Cr.TextColor3 = Color3.fromRGB(80, 120, 255)
Cr.Font = Enum.Font.GothamBold
Cr.TextSize = 11
Cr.BackgroundTransparency = 1

-- Animation Intro
M.Size = UDim2.new(0,0,0,0)
TS:Create(M, TweenInfo.new(0.7, Enum.EasingStyle.Back), {Size = UDim2.new(0, 180, 0, 150)}):Play()
task.spawn(ShowNotif)

-- Logic Roll-up
local min = false
B.MouseButton1Click:Connect(function()
    min = not min
    local target = min and UDim2.new(0, 180, 0, 40) or UDim2.new(0, 180, 0, 150)
    B.Text = min and "+" or "-"
    B.BackgroundColor3 = min and Color3.fromRGB(60, 255, 100) or Color3.fromRGB(255, 60, 60)
    TS:Create(M, TweenInfo.new(0.4), {Size = target}):Play()
end)

-- Logic Infinity
local act = false
Btn.MouseButton1Click:Connect(function()
    act = not act
    Btn.Text = act and "ON" or "INFINITY BLOCK"
    Btn.BackgroundColor3 = act and Color3.fromRGB(80, 120, 255) or Color3.fromRGB(30, 30, 45)
    task.spawn(function()
        while act do
            local RS = game:GetService("ReplicatedStorage")
            for _, v in pairs(_RE) do
                local r = RS:FindFirstChild(v)
                if r then r:FireServer() end
            end
            task.wait(0.3)
        end
    end)
end)

-- Drag (Mobile Support)
local d, i, p
H.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        d = true i = input.Position p = M.Position
    end
end)
UIS.InputChanged:Connect(function(input)
    if d and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - i
        M.Position = UDim2.new(p.X.Scale, p.X.Offset + delta.X, p.Y.Scale, p.Y.Offset + delta.Y)
    end
end)
UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then d = false end
end)
