local _0x1 = game:GetService("\84\119\101\101\110\83\101\114\118\105\99\101")
local _0x2 = game:GetService("\85\115\101\114\105\110\112\117\116\83\101\114\118\105\99\101")
local _0x3 = game:GetService("\67\111\114\101\71\117\105")
local _0x4 = game:GetService("\80\108\97\121\101\114\115")
local _0x5 = _0x4.LocalPlayer
local _0x6 = "\118\97\33\115\116\111\114\97\97\98\103"

if _0x3:FindFirstChild(_0x6) then _0x3[_0x6]:Destroy() end

local _0x7 = {
    "\83\112\97\119\110\71\97\108\97\120\121\66\108\111\99\107",
    "\83\112\97\119\110\68\105\97\109\111\110\100\66\108\111\99\107",
    "\83\112\97\119\110\82\97\105\110\98\111\119\66\108\111\99\107",
    "\83\112\97\119\110\76\117\99\107\121\66\108\111\99\107"
}

local function _0x8()
    local a = Instance.new("ScreenGui")
    a.Parent = _0x3
    local b = Instance.new("Frame")
    b.Size = UDim2.new(0, 300, 0, 80)
    b.Position = UDim2.new(0.5, -150, 0, -120)
    b.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    b.BorderSizePixel = 0
    b.Parent = a
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 15)
    local c = Instance.new("UIStroke", b)
    c.Color = Color3.fromRGB(80, 120, 255)
    c.Thickness = 2
    local d = Instance.new("TextLabel")
    d.Size = UDim2.new(1, 0, 0.6, 0)
    d.Text = "\86\65\83\84\79\82\65"
    d.Font = Enum.Font.GothamBold
    d.TextSize = 26
    d.TextColor3 = Color3.fromRGB(80, 120, 255)
    d.BackgroundTransparency = 1
    d.Parent = b
    local e = Instance.new("TextLabel")
    e.Size = UDim2.new(1, 0, 0.4, 0)
    e.Position = UDim2.new(0, 0, 0.5, 0)
    e.Text = "Halo " .. _0x5.Name .. ", selamat datang!"
    e.Font = Enum.Font.GothamSemibold
    e.TextSize = 13
    e.TextColor3 = Color3.new(1, 1, 1)
    e.BackgroundTransparency = 1
    e.Parent = b
    b:TweenPosition(UDim2.new(0.5, -150, 0, 50), "Out", "Back", 0.8)
    task.wait(3.5)
    b:TweenPosition(UDim2.new(0.5, -150, 0, -120), "In", "Quad", 0.8)
    task.wait(1)
    a:Destroy()
end

local f = Instance.new("ScreenGui")
f.Name = _0x6
f.Parent = _0x3
f.ResetOnSpawn = false

local g = Instance.new("Frame")
g.Parent = f
g.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
g.Position = UDim2.new(0.5, -90, 0.5, -75)
g.Size = UDim2.new(0, 180, 0, 150)
g.ClipsDescendants = true
g.BackgroundTransparency = 1 
Instance.new("UICorner", g).CornerRadius = UDim.new(0, 12)
local h = Instance.new("UIStroke", g)
h.Thickness = 2
h.Color = Color3.fromRGB(80, 120, 255)
h.Transparency = 1

local i = Instance.new("Frame")
i.Name = "Header"
i.Parent = g
i.Size = UDim2.new(1, 0, 0, 40)
i.BackgroundTransparency = 1

local j = Instance.new("TextLabel")
j.Parent = i
j.Size = UDim2.new(1, -50, 1, 0)
j.Position = UDim2.new(0, 12, 0, 0)
j.Text = "BG BLOCK"
j.Font = Enum.Font.GothamBold
j.TextColor3 = Color3.new(1,1,1)
j.TextSize = 15
j.TextXAlignment = Enum.TextXAlignment.Left
j.BackgroundTransparency = 1

local k = Instance.new("TextButton")
k.Parent = i
k.Size = UDim2.new(0, 26, 0, 26)
k.Position = UDim2.new(1, -33, 0.5, -13)
k.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
k.Text = "-"
k.Font = Enum.Font.GothamBold
k.TextSize = 18
k.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", k).CornerRadius = UDim.new(0, 6)

local l = Instance.new("Frame")
l.Parent = g
l.Size = UDim2.new(1, 0, 1, -40)
l.Position = UDim2.new(0, 0, 0, 40)
l.BackgroundTransparency = 1

local m = Instance.new("TextButton")
m.Parent = l
m.Position = UDim2.new(0.1, 0, 0.1, 0)
m.Size = UDim2.new(0.8, 0, 0, 45)
m.Text = "INFINITY BLOCK"
m.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
m.TextColor3 = Color3.fromRGB(200, 200, 200)
m.Font = Enum.Font.GothamSemibold
m.TextSize = 13
Instance.new("UICorner", m).CornerRadius = UDim.new(0, 8)

local n = Instance.new("TextLabel")
n.Parent = l
n.Size = UDim2.new(1, 0, 0, 30)
n.Position = UDim2.new(0, 0, 0.65, 0)
n.Text = "by va!storaa"
n.Font = Enum.Font.GothamBold
n.TextColor3 = Color3.fromRGB(80, 120, 255)
n.TextSize = 12
n.BackgroundTransparency = 1

task.spawn(_0x8)
g.Size = UDim2.new(0, 0, 0, 0)
_0x1:Create(g, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 150), BackgroundTransparency = 0}):Play()
_0x1:Create(h, TweenInfo.new(0.8), {Transparency = 0}):Play()

local o = false
k.MouseButton1Click:Connect(function()
    o = not o
    local p = o and UDim2.new(0, 180, 0, 40) or UDim2.new(0, 180, 0, 150)
    k.Text = o and "+" or "-"
    k.BackgroundColor3 = o and Color3.fromRGB(60, 255, 100) or Color3.fromRGB(255, 60, 60)
    _0x1:Create(g, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = p}):Play()
end)

local q = false
m.MouseButton1Click:Connect(function()
    q = not q
    m.Text = q and "INFINITY: ON" or "INFINITY BLOCK"
    local r = q and Color3.fromRGB(80, 120, 255) or Color3.fromRGB(30, 30, 45)
    _0x1:Create(m, TweenInfo.new(0.3), {BackgroundColor3 = r, TextColor3 = Color3.new(1,1,1)}):Play()
    task.spawn(function()
        while q do
            local s = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101")
            for _, v in pairs(_0x7) do
                local t = s:FindFirstChild(v)
                if t then t:FireServer() end
            end
            task.wait(0.25)
        end
    end)
end)

local u, v, w
i.InputBegan:Connect(function(x)
    if x.UserInputType == Enum.UserInputType.MouseButton1 or x.UserInputType == Enum.UserInputType.Touch then
        u = true v = x.Position w = g.Position
    end
end)
_0x2.InputChanged:Connect(function(x)
    if u and (x.UserInputType == Enum.UserInputType.MouseMovement or x.UserInputType == Enum.UserInputType.Touch) then
        local y = x.Position - v
        g.Position = UDim2.new(w.X.Scale, w.X.Offset + y.X, w.Y.Scale, w.Y.Offset + y.Y)
    end
end)
_0x2.InputEnded:Connect(function(x)
    if x.UserInputType == Enum.UserInputType.MouseButton1 or x.UserInputType == Enum.UserInputType.Touch then u = false end
end)
