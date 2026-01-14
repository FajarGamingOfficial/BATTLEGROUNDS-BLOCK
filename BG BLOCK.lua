local TS = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local CG = game:GetService("CoreGui")
local PLRS = game:GetService("Players")
local LP = PLRS.LocalPlayer

local UI_NAME = "va!storaabg"
if CG:FindFirstChild(UI_NAME) then CG[UI_NAME]:Destroy() end

local _RE = {
    [1] = "\83\112\97\119\110\71\97\108\97\120\121\66\108\111\99\107",
    [2] = "\83\112\97\119\110\68\105\97\109\111\110\100\66\108\111\99\107",
    [3] = "\83\112\97\119\110\82\97\105\110\98\111\119\66\108\111\99\107",
    [4] = "\83\112\97\119\110\76\117\99\107\121\66\108\111\99\107"
}

local function ShowNotif()
    local g = Instance.new("ScreenGui", CG)
    local f = Instance.new("Frame", g)
    f.Size = UDim2.new(0, 260, 0, 75)
    f.Position = UDim2.new(0.5, -130, 0, -100)
    f.BackgroundColor3 = Color3.fromRGB(13, 13, 18)
    f.BorderSizePixel = 0
    Instance.new("UICorner", f).CornerRadius = UDim.new(0, 10)
    local s = Instance.new("UIStroke", f)
    s.Color = Color3.fromRGB(80, 120, 255)
    s.Thickness = 1.5
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
    t2.Font = Enum.Font.GothamMedium
    t2.TextSize = 12
    t2.BackgroundTransparency = 1
    f:TweenPosition(UDim2.new(0.5, -130, 0, 50), "Out", "Back", 0.6)
    task.wait(3)
    f:TweenPosition(UDim2.new(0.5, -130, 0, -100), "In", "Quad", 0.6)
    task.wait(1)
    g:Destroy()
end

local MainGui = Instance.new("ScreenGui", CG)
MainGui.Name = UI_NAME

local M = Instance.new("Frame", MainGui)
M.BackgroundColor3 = Color3.fromRGB(13, 13, 18)
M.Position = UDim2.new(0.5, -90, 0.5, -75)
M.Size = UDim2.new(0, 180, 0, 150)
M.ClipsDescendants = true
Instance.new("UICorner", M).CornerRadius = UDim.new(0, 10)
local S = Instance.new("UIStroke", M)
S.Color = Color3.fromRGB(80, 120, 255)
S.Thickness = 1.5

local H = Instance.new("Frame", M)
H.Size = UDim2.new(1, 0, 0, 40)
H.BackgroundTransparency = 1

local L = Instance.new("TextLabel", H)
L.Size = UDim2.new(1, -50, 1, 0)
L.Position = UDim2.new(0, 12, 0, 0)
L.Text = "BG BLOCK"
L.TextColor3 = Color3.new(1, 1, 1)
L.Font = Enum.Font.GothamBold
L.TextSize = 13
L.TextXAlignment = "Left"
L.BackgroundTransparency = 1

local B = Instance.new("TextButton", H)
B.Size = UDim2.new(0, 22, 0, 22)
B.Position = UDim2.new(1, -30, 0.5, -11)
B.BackgroundColor3 = Color3.fromRGB(255, 65, 65)
B.Text = "-"
B.TextColor3 = Color3.new(1, 1, 1)
B.Font = Enum.Font.GothamBold
B.TextSize = 16
Instance.new("UICorner", B).CornerRadius = UDim.new(0, 5)

local Container = Instance.new("Frame", M)
Container.Name = "ContentContainer"
Container.Size = UDim2.new(1, 0, 1, -40)
Container.Position = UDim2.new(0, 0, 0, 40)
Container.BackgroundTransparency = 1
Container.ClipsDescendants = true

local Btn = Instance.new("TextButton", Container)
Btn.Size = UDim2.new(0.85, 0, 0, 38)
Btn.Position = UDim2.new(0.075, 0, 0.1, 0)
Btn.Text = "INFINITY BLOCK"
Btn.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Btn.TextColor3 = Color3.fromRGB(220, 220, 220)
Btn.Font = Enum.Font.GothamMedium
Btn.TextSize = 12
Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
local BtnStroke = Instance.new("UIStroke", Btn)
BtnStroke.Color = Color3.fromRGB(45, 45, 60)
BtnStroke.Thickness = 1

local Cr = Instance.new("TextLabel", Container)
Cr.Size = UDim2.new(1, 0, 0, 20)
Cr.Position = UDim2.new(0, 0, 0.75, 0)
Cr.Text = "by va!storaa"
Cr.TextColor3 = Color3.fromRGB(80, 120, 255)
Cr.Font = Enum.Font.GothamBold
Cr.TextSize = 10
Cr.BackgroundTransparency = 1

M.Size = UDim2.new(0,0,0,0)
TS:Create(M, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 150)}):Play()
task.spawn(ShowNotif)

local min = false
B.MouseButton1Click:Connect(function()
    min = not min
    local targetSize = min and UDim2.new(0, 180, 0, 40) or UDim2.new(0, 180, 0, 150)
    B.Text = min and "+" or "-"
    B.BackgroundColor3 = min and Color3.fromRGB(60, 255, 100) or Color3.fromRGB(255, 65, 65)
    
    TS:Create(M, TweenInfo.new(0.4, Enum.EasingStyle.Quart), {Size = targetSize}):Play()
    Container.Visible = not min
end)

local act = false
Btn.MouseButton1Click:Connect(function()
    act = not act
    Btn.Text = act and "INFINITY: ON" or "INFINITY BLOCK"
    Btn.TextColor3 = act and Color3.new(1,1,1) or Color3.fromRGB(220, 220, 220)
    TS:Create(Btn, TweenInfo.new(0.3), {BackgroundColor3 = act and Color3.fromRGB(80, 120, 255) or Color3.fromRGB(25, 25, 35)}):Play()
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
