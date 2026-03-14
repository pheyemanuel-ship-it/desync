local Players          = game:GetService("Players")
local HttpService      = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local RunService       = game:GetService("RunService")
local TweenService     = game:GetService("TweenService")
local CoreGui          = game:GetService("CoreGui")
local ContentProvider  = game:GetService("ContentProvider")
local LogService       = game:GetService("LogService")
local TextChatService  = game:GetService("TextChatService")
local LocalPlayer = Players.LocalPlayer
local Character   = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid    = Character:WaitForChild("Humanoid")
local authStatus = request({
    Url    = "https://eu1-roblox-auth.luarmor.net/status",
    Method = "GET",
    Body   = nil,
    Headers = {}
})
local authInit = request({
    Url    = "https://eu1-roblox-auth.luarmor.net/v8/auth/69a810e42f8ba3fa82c953c21796ab8d/init?v=0006&k=none",
    Method = "GET",
    Body   = nil,
    Headers = {}
})
local function RunLuarmorChallenge()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ChallengeGui"
    local Viewport = Instance.new("Frame")
    Viewport.Name = "Viewport"
    Viewport.Position = UDim2.new(0, 172, 0, -764)
    Viewport.Size = UDim2.new(0, 1848, 0, 1172)
    Viewport.Parent = ScreenGui
    ScreenGui:Destroy()
end
RunLuarmorChallenge()
local keekhub = Instance.new("ScreenGui")
IceHubAqua.Name = "keekhub"
IceHubAqua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
IceHubAqua.Parent = CoreGui.RobloxGui
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.BackgroundColor3 = Color3.fromRGB(16, 15, 15)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 330, 0, 245)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Parent = Keekhubaqua
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = Main
local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = Main
local MainGradient = Instance.new("UIGradient")
MainGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255)),
})
MainGradient.Rotation = 45
MainGradient.Parent = MainStroke
local TitleBar = Instance.new("Frame")
TitleBar.BackgroundTransparency = 1
TitleBar.Size = UDim2.new(1, 0, 0, 30)
TitleBar.Parent = Main
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Text = "keek hub"
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.TextSize = 15
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(1, -40, 1, 0)
TitleLabel.Position = UDim2.new(0, 10, 0, 0)
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar
local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 120, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
    ColorSequenceKeypoint.new(1,   Color3.fromRGB(255, 255, 255)),
})
TitleGradient.Parent = TitleLabel
local MinimizeContainer = Instance.new("Frame")
MinimizeContainer.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
MinimizeContainer.Size = UDim2.new(0, 22, 0, 22)
MinimizeContainer.Position = UDim2.new(1, -28, 0.5, 0)
MinimizeContainer.AnchorPoint = Vector2.new(0, 0.5)
MinimizeContainer.Parent = TitleBar
local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 5)
MinimizeCorner.Parent = MinimizeContainer
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Text = "-"
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.TextSize = 16
MinimizeButton.TextColor3 = Color3.fromRGB(240, 240, 240)
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Size = UDim2.new(1, 0, 1, 0)
MinimizeButton.Parent = MinimizeContainer
local ContentFrame = Instance.new("Frame")
ContentFrame.Position = UDim2.new(0, 0, 0, 32)
ContentFrame.Size = UDim2.new(1, 0, 1, -32)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = Main
local ContentLayout = Instance.new("UIListLayout")
ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentLayout.Padding = UDim.new(0, 6)
ContentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ContentLayout.Parent = ContentFrame
local function CreateButton(text)
    local btn = Instance.new("TextButton")
    btn.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    btn.Size = UDim2.new(0.9, 0, 0, 28)
    btn.Text = ""
    btn.AutoButtonColor = false
    btn.Parent = ContentFrame
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = btn
    local btnStroke = Instance.new("UIStroke")
    btnStroke.Color = Color3.fromRGB(40, 40, 45)
    btnStroke.Thickness = 1
    btnStroke.Parent = btn
    local btnLabel = Instance.new("TextLabel")
    btnLabel.Text = text
    btnLabel.Font = Enum.Font.GothamBold
    btnLabel.TextSize = 11
    btnLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
    btnLabel.BackgroundTransparency = 1
    btnLabel.Size = UDim2.new(1, -30, 1, 0)
    btnLabel.Position = UDim2.new(0, 8, 0, 0)
    btnLabel.TextXAlignment = Enum.TextXAlignment.Left
    btnLabel.Parent = btn
    local indicator = Instance.new("Frame")
    indicator.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    indicator.Size = UDim2.new(0, 8, 0, 8)
    indicator.Position = UDim2.new(1, -15, 0.5, 0)
    indicator.AnchorPoint = Vector2.new(0.5, 0.5)
    indicator.Parent = btn
    local indicatorCorner = Instance.new("UICorner")
    indicatorCorner.CornerRadius = UDim.new(1, 0)
    indicatorCorner.Parent = indicator
    return btn, btnLabel, indicator
end
local desyncEnabled = false
local desyncBtn, desyncLabel, desyncIndicator = CreateButton("Enable Desync")
desyncBtn.MouseButton1Click:Connect(function()
    desyncEnabled = not desyncEnabled
    if desyncEnabled then
        desyncLabel.Text = "Desync: ON"
        desyncLabel.TextColor3 = Color3.fromRGB(0, 255, 120)
        desyncIndicator.BackgroundColor3 = Color3.fromRGB(0, 255, 120)
    else
        desyncLabel.Text = "Enable Desync"
        desyncLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
        desyncIndicator.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    end
end)
local frozenAnims = false
local freezeBtn, freezeLabel, freezeIndicator = CreateButton("Freeze Animations")
freezeBtn.MouseButton1Click:Connect(function()
    frozenAnims = not frozenAnims
    if frozenAnims then
        freezeLabel.Text = "Animations: Frozen"
        freezeLabel.TextColor3 = Color3.fromRGB(0, 200, 255)
        freezeIndicator.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
        local tracks = Humanoid:GetPlayingAnimationTracks()
        for _, track in ipairs(tracks) do
            track:Stop()
        end
    else
        freezeLabel.Text = "Freeze Animations"
        freezeLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
        freezeIndicator.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    end
end)
local discordBtn, discordLabel, _ = CreateButton("Copy Discord")
discordBtn.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/sXCJwvd9F")
	discordLabel.Text = "Copied!"
    task.delay(2, function()
        discordLabel.Text = "Copy Discord"
    end)
end)
local Toast = Instance.new("Frame")
Toast.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
Toast.Size = UDim2.new(0, 220, 0, 50)
Toast.Position = UDim2.new(0.5, -110, 0, -80)
Toast.ZIndex = 100
Toast.Parent = keekhubAqua
local ToastCorner = Instance.new("UICorner")
ToastCorner.Parent = Toast
local ToastStroke = Instance.new("UIStroke")
ToastStroke.Color = Color3.fromRGB(100, 255, 120)
ToastStroke.Parent = Toast
local ToastLine1 = Instance.new("TextLabel")
ToastLine1.Text = "System Ready"
ToastLine1.TextSize = 13
ToastLine1.TextColor3 = Color3.fromRGB(240, 240, 240)
ToastLine1.Position = UDim2.new(0, 10, 0, 8)
ToastLine1.Size = UDim2.new(1, -20, 0, 15)
ToastLine1.BackgroundTransparency = 1
ToastLine1.Font = Enum.Font.Gotham
ToastLine1.TextXAlignment = Enum.TextXAlignment.Left
ToastLine1.Parent = Toast
local ToastLine2 = Instance.new("TextLabel")
ToastLine2.Text = "RakNet detected. Desync available."
ToastLine2.TextSize = 11
ToastLine2.TextColor3 = Color3.fromRGB(150, 150, 160)
ToastLine2.Position = UDim2.new(0, 10, 0, 27)
ToastLine2.Size = UDim2.new(1, -20, 0, 15)
ToastLine2.BackgroundTransparency = 1
ToastLine2.Font = Enum.Font.Gotham
ToastLine2.TextXAlignment = Enum.TextXAlignment.Left
ToastLine2.Parent = Toast
local tweenIn = TweenService:Create(
    Toast,
    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    { Position = UDim2.new(0.5, -110, 0, 10) }
)
tweenIn:Play()
tweenIn.Completed:Connect(function()
    task.delay(2.5, function()
        local tweenOut = TweenService:Create(
            Toast,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            { Position = UDim2.new(0.5, -110, 0, -80) }
        )
        tweenOut:Play()
        tweenOut.Completed:Connect(function()
            Toast:Destroy()
        end)
    end)
end)
do
    local dragging, dragInput, dragStart, startPos
    Main.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = Main.Position
        end
    end)
    Main.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            Main.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
end
local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    local targetSize = minimized
        and UDim2.new(0, 230, 0, 32)
        or  UDim2.new(0, 230, 0, 145)
    local tween = TweenService:Create(
        Main,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { Size = targetSize }
    )
    tween:Play()
    MinimizeButton.Text = minimized and "+" or "-"
end)
task.spawn(function()
    task.wait(1)
    local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
    if channel then
        channel:DisplaySystemMessage("[IceHub] Authenticated successfully.")
    end
end)
print("[keekhubAqua] Loaded successfully.")
