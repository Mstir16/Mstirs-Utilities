repeat wait() until game:IsLoaded()
game:GetService("Players").LocalPlayer.Idled:connect(function()
    local VirtualClick = game:GetService("VirtualUser")
    VirtualClick:CaptureController()
    VirtualClick:ClickButton2(Vector2.new())
end)

local ui = {}

function ui.create(uiname,loginRequired)
    if type(uiname) ~= "string" then return end
    if type(loginRequired) ~= "boolean" then return end
    if _G.MULIB == true then return end
    _G.MULIB = true

    local uiInteract = "rbxassetid://7212399604"
    local notifyNormal = "rbxassetid://8747340426"
    local notifyError = "rbxassetid://9076854890"
    local colors = {
        SectionColor = Color3.fromRGB(42, 42, 42),
        TextColor = Color3.fromRGB(255, 255, 255),


    }

    local function TweenGui(which,gui,UDimStuff,time)
        if which == "size" then
            gui:TweenSize(UDimStuff,Enum.EasingDirection.Out,Enum.EasingStyle.Quad,time)
        else
            gui:TweenPosition(UDimStuff,Enum.EasingDirection.Out,Enum.EasingStyle.Quad,time)
        end
    end

    local function sound(id)
        local Sound = Instance.new("Sound",workspace)
        Sound.SoundId = id
        Sound.Volume = 1
        Sound:Play()
        delay(0.1,function()
            repeat wait() until Sound.Playing == false
            Sound:Destroy()
        end)
    end

    local function dragify(Frame)
        dragToggle = nil
        ---@diagnostic disable-next-line: undefined-global
        dragSpeed = .25 -- You can edit this.
        dragInput = nil
        dragStart = nil
        ---@diagnostic disable-next-line: undefined-global
        dragPos = nil
    
        local function updateInput(input)
            local Delta = input.Position - dragStart
            local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
            game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
        end
    
        Frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                ---@diagnostic disable-next-line: undefined-global
                startPos = Frame.Position
                input.Changed:Connect(function()
                    if (input.UserInputState == Enum.UserInputState.End) then
                        dragToggle = false
                    end
                end)
            end
        end)
    
        Frame.InputChanged:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                dragInput = input
            end
        end)
    
        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if (input == dragInput and dragToggle) then
                updateInput(input)
            end
        end)
    end

    local randomName = tostring(tick() + math.random(1,10000) + math.random(1,10000) + math.random(1,10000))
    local uiOpen = true

    local MUInstance = Instance.new("ScreenGui")
    local top = Instance.new("Frame")
    local TextLabel_2 = Instance.new("TextLabel")
    local mini = Instance.new("TextButton")
    local close = Instance.new("TextButton")
    local gameUI = Instance.new("Frame")
    local UI = Instance.new("Frame")
    local SP = Instance.new("Frame")
    local BH = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Settings = Instance.new("ImageLabel")
    local TextButton = Instance.new("TextButton")
    local FH = Instance.new("Frame")
    local settingsF = Instance.new("ScrollingFrame")
    local ColourWheel = Instance.new("ImageButton")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local Picker = Instance.new("ImageLabel")
    local DarknessPicker = Instance.new("ImageButton")
    local UIGradient = Instance.new("UIGradient")
    local Slider_3 = Instance.new("ImageLabel")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local ColourDisplay = Instance.new("ImageLabel")
    local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local UIElements = Instance.new("TextButton")
    local Accent1 = Instance.new("TextButton")
    local Accent2 = Instance.new("TextButton")
    local Accent3 = Instance.new("TextButton")
    local TextColor = Instance.new("TextButton")
    local TextLabel_3 = Instance.new("TextLabel")
    local SectionColor = Instance.new("TextButton")

    local exploitUsing = nil

    MUInstance.Name = tostring(randomName)
    if syn then
        syn.protect_gui(MUInstance)
        MUInstance.Parent = game:GetService("CoreGui")
        exploitUsing = "Synapse X"
    elseif not syn then
        if getexecutorname() == "ScriptWare" then
            MUInstance.Parent = gethui()
            exploitUsing = "ScriptWare"
        end
    end
    MUInstance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    MUInstance.ResetOnSpawn = false

    top.Name = "top"
    if not loginRequired then
        top.Parent = MUInstance
    end
    top.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    top.BorderSizePixel = 0
    top.ClipsDescendants = true
    top.Position = UDim2.new(0.246535376, 0, 0.347773761, 0)
    top.Size = UDim2.new(0, 681, 0, 409)
    if loginRequired then
        top.Visible = false
    else
        top.Visible = true
    end

    TextLabel_2.Parent = top
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Position = UDim2.new(-0.00146842876, 0, 0, 0)
    TextLabel_2.Size = UDim2.new(0, 681, 0, 15)
    TextLabel_2.Font = Enum.Font.SourceSans
    TextLabel_2.Text = uiname
    TextLabel_2.TextScaled = true
    TextLabel_2.TextColor3 = colors.TextColor
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextWrapped = true

    local minimizeDebounce = false

    mini.Name = "mini"
    mini.Parent = top
    mini.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    mini.BorderSizePixel = 0
    mini.Position = UDim2.new(0.930983841, 0, 0, 0)
    mini.Size = UDim2.new(0, 23, 0, 15)
    mini.Font = Enum.Font.SourceSansBold
    mini.TextScaled = true
    mini.Text = "-"
    mini.TextColor3 = colors.TextColor
    mini.TextSize = 14.000
    mini.TextWrapped = true
    mini.MouseButton1Click:Connect(function()
        local tweenTime = 0.25
        sound(uiInteract)

        if uiOpen == true and not minimizeDebounce then
            uiOpen = false
            minimizeDebounce = true
            TweenGui("size",gameUI,UDim2.new(0, 681, 0, 0),tweenTime)
            TweenGui("size",top,UDim2.new(0, 681,0, 20),tweenTime)
            gameUI.Visible = false
            wait(tweenTime)
            minimizeDebounce = false
        elseif uiOpen == false and not minimizeDebounce then
            uiOpen = true
            minimizeDebounce = true
            TweenGui("size",gameUI,UDim2.new(0, 681, 0, 396),tweenTime)
            TweenGui("size",top,UDim2.new(0, 681,0, 409),tweenTime)
            gameUI.Visible = true
            wait(tweenTime)
            minimizeDebounce = false
        end
    end)

    close.Name = "close"
    close.Parent = top
    close.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    close.BorderSizePixel = 0
    close.Position = UDim2.new(0.966226041, 0, 0, 0)
    close.Size = UDim2.new(0, 22, 0, 15)
    close.Font = Enum.Font.SourceSans
    close.TextScaled = true
    close.Text = "x"
    close.TextColor3 = colors.TextColor
    close.TextSize = 14.000
    close.TextWrapped = true
    close.MouseButton1Click:Connect(function()
        sound(uiInteract)
        MUInstance:Destroy()
        _G.MULIB = nil
    end)

    gameUI.Name = "game"
    gameUI.Parent = top
    gameUI.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
    gameUI.BorderSizePixel = 0
    gameUI.Position = UDim2.new(-0.0015895156, 0, 0.038849771, 0)
    gameUI.Size = UDim2.new(0, 681, 0, 396)
    gameUI.ClipsDescendants = true

    UI.Name = "UI"
    UI.Parent = gameUI
    UI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.BackgroundTransparency = 1.000
    UI.BorderSizePixel = 0
    UI.Position = UDim2.new(0, 0, 0.037878789, 0)
    UI.Size = UDim2.new(0, 681, 0, 381)

    SP.Name = "SP"
    SP.Parent = UI
    SP.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    SP.BorderSizePixel = 0
    SP.Position = UDim2.new(0, 0, -0.0209974553, 0)
    SP.Size = UDim2.new(0, 175, 0, 389)

    BH.Name = "BH"
    BH.Parent = SP
    BH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BH.BackgroundTransparency = 1.000
    BH.BorderSizePixel = 0
    BH.Position = UDim2.new(0, 0, 0.0236220174, 0)
    BH.Size = UDim2.new(0, 173, 0, 342)

    UIListLayout.Parent = BH
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)

    Settings.Name = "Settings"
    Settings.Parent = SP
    Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Settings.BackgroundTransparency = 1.000
    Settings.Position = UDim2.new(0.00571428565, 0, 0.899742901, 0)
    Settings.Size = UDim2.new(0, 36, 0, 36)
    Settings.Image = "http://www.roblox.com/asset/?id=10227636559"

    TextButton.Parent = Settings
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 0.990
    TextButton.Size = UDim2.new(0, 36, 0, 36)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.TextScaled = true
    TextButton.Text = ""
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000
    TextButton.MouseButton1Click:Connect(function()
        sound(uiInteract)


        for _,v in pairs(FH:GetChildren()) do
            if v:IsA("ScrollingFrame") then
                v.Visible = false
            end
        end

        for i,v in pairs(BH:GetChildren()) do
            if v:IsA("TextButton") then
                v.TextTransparency = 0.5
            end
        end

        if settingsF.Visible == true then
            settingsF.Visible = false
        else
            settingsF.Visible = true
        end
    end)


    FH.Name = "FH"
    FH.Parent = UI
    FH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FH.BackgroundTransparency = 1.000
    FH.BorderSizePixel = 0
    FH.Position = UDim2.new(0.254038185, 0, -0.0209973752, 0)
    FH.Size = UDim2.new(0, 508, 0, 389)

    settingsF.Name = "settings"
    settingsF.Parent = FH
    settingsF.Active = true
    settingsF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    settingsF.BackgroundTransparency = 1.000
    settingsF.BorderSizePixel = 0
    settingsF.Size = UDim2.new(0, 507, 0, 381)
    settingsF.Visible = false

    ColourWheel.Name = "ColourWheel"
    ColourWheel.Parent = settingsF
    ColourWheel.Active = false
    ColourWheel.AnchorPoint = Vector2.new(0.5, 0.5)
    ColourWheel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ColourWheel.BackgroundTransparency = 1.000
    ColourWheel.BorderSizePixel = 0
    ColourWheel.Position = UDim2.new(0.156697959, 0, 0.143419608, 0)
    ColourWheel.Selectable = false
    ColourWheel.Size = UDim2.new(0.30899629, 0, 0.411184072, 0)
    ColourWheel.Image = "http://www.roblox.com/asset/?id=6020299385"

    UIAspectRatioConstraint.Parent = ColourWheel
    UIAspectRatioConstraint.AspectRatio = 1.000

    Picker.Name = "Picker"
    Picker.Parent = ColourWheel
    Picker.AnchorPoint = Vector2.new(0.5, 0.5)
    Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Picker.BackgroundTransparency = 1.000
    Picker.BorderSizePixel = 0
    Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
    Picker.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
    Picker.Image = "http://www.roblox.com/asset/?id=3678860011"

    DarknessPicker.Name = "DarknessPicker"
    DarknessPicker.Parent = settingsF
    DarknessPicker.Active = false
    DarknessPicker.AnchorPoint = Vector2.new(0.5, 0.5)
    DarknessPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DarknessPicker.BackgroundTransparency = 1.000
    DarknessPicker.BorderSizePixel = 0
    DarknessPicker.Position = UDim2.new(0.361513734, 0, 0.14540647, 0)
    DarknessPicker.Selectable = false
    DarknessPicker.Size = UDim2.new(0.0702843219, 0, 0.594244719, 0)
    DarknessPicker.ZIndex = 2
    DarknessPicker.Image = "rbxassetid://3570695787"
    DarknessPicker.ScaleType = Enum.ScaleType.Slice
    DarknessPicker.SliceCenter = Rect.new(100, 100, 100, 100)
    DarknessPicker.SliceScale = 0.120

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
    UIGradient.Rotation = 90
    UIGradient.Parent = DarknessPicker

    Slider_3.Name = "Slider"
    Slider_3.Parent = DarknessPicker
    Slider_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Slider_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider_3.BackgroundTransparency = 1.000
    Slider_3.BorderSizePixel = 0
    Slider_3.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
    Slider_3.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
    Slider_3.ZIndex = 2
    Slider_3.Image = "rbxassetid://3570695787"
    Slider_3.ImageColor3 = Color3.fromRGB(255, 74, 74)
    Slider_3.ScaleType = Enum.ScaleType.Slice
    Slider_3.SliceCenter = Rect.new(100, 100, 100, 100)
    Slider_3.SliceScale = 0.120

    UIAspectRatioConstraint_2.Parent = DarknessPicker
    UIAspectRatioConstraint_2.AspectRatio = 0.157

    ColourDisplay.Name = "ColourDisplay"
    ColourDisplay.Parent = settingsF
    ColourDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ColourDisplay.BackgroundTransparency = 1.000
    ColourDisplay.BorderSizePixel = 0
    ColourDisplay.Position = UDim2.new(0.468279421, 0, 0.200392663, 0)
    ColourDisplay.Size = UDim2.new(0.0976998508, 0, 0.130010039, 0)
    ColourDisplay.ZIndex = 2
    ColourDisplay.Image = "rbxassetid://3570695787"
    ColourDisplay.ScaleType = Enum.ScaleType.Slice
    ColourDisplay.SliceCenter = Rect.new(100, 100, 100, 100)
    ColourDisplay.SliceScale = 0.120

    UIAspectRatioConstraint_3.Parent = ColourDisplay

    UIElements.Name = "UIElements"
    UIElements.Parent = settingsF
    UIElements.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    UIElements.BorderSizePixel = 0
    UIElements.Position = UDim2.new(0.0236686524, 0, 0.300562054, 0)
    UIElements.Size = UDim2.new(0, 200, 0, 24)
    UIElements.Font = Enum.Font.SourceSans
    UIElements.TextScaled = true
    UIElements.Text = "Set UI Elements"
    UIElements.TextColor3 = colors.TextColor
    UIElements.TextSize = 14.000

    Accent1.Name = "Accent1"
    Accent1.Parent = settingsF
    Accent1.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    Accent1.BorderSizePixel = 0
    Accent1.Position = UDim2.new(0.0236686524, 0, 0.349405229, 0)
    Accent1.Size = UDim2.new(0, 200, 0, 24)
    Accent1.Font = Enum.Font.SourceSans
    Accent1.TextScaled = true
    Accent1.Text = "Set Accent1"
    Accent1.TextColor3 = colors.TextColor
    Accent1.TextSize = 14.000

    Accent2.Name = "Accent2"
    Accent2.Parent = settingsF
    Accent2.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    Accent2.BorderSizePixel = 0
    Accent2.Position = UDim2.new(0.453648925, 0, 0.349405229, 0)
    Accent2.Size = UDim2.new(0, 200, 0, 24)
    Accent2.Font = Enum.Font.SourceSans
    Accent2.TextScaled = true
    Accent2.Text = "Set Accent2"
    Accent2.TextColor3 = colors.TextColor
    Accent2.TextSize = 14.000

    Accent3.Name = "Accent3"
    Accent3.Parent = settingsF
    Accent3.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    Accent3.BorderSizePixel = 0
    Accent3.Position = UDim2.new(0.0236686468, 0, 0.400819123, 0)
    Accent3.Size = UDim2.new(0, 200, 0, 24)
    Accent3.Font = Enum.Font.SourceSans
    Accent3.TextScaled = true
    Accent3.Text = "Set Accent3"
    Accent3.TextColor3 = colors.TextColor
    Accent3.TextSize = 14.000

    TextColor.Name = "TextColor"
    TextColor.Parent = settingsF
    TextColor.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    TextColor.BorderSizePixel = 0
    TextColor.Position = UDim2.new(0.453648925, 0, 0.400819123, 0)
    TextColor.Size = UDim2.new(0, 200, 0, 24)
    TextColor.Font = Enum.Font.SourceSans
    TextColor.TextScaled = true
    TextColor.Text = "Set Text Color"
    TextColor.TextColor3 = colors.TextColor
    TextColor.TextSize = 14.000

    TextLabel_3.Parent = settingsF
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.Position = UDim2.new(0.453648925, 0, 0.0243439674, 0)
    TextLabel_3.Size = UDim2.new(0, 200, 0, 25)
    TextLabel_3.Font = Enum.Font.SourceSans
    TextLabel_3.Text = "Hide UI: RightAlt"
    TextLabel_3.TextColor3 = colors.TextColor
    TextLabel_3.TextScaled = true
    TextLabel_3.TextSize = 14.000
    TextLabel_3.TextWrapped = true

    SectionColor.Name = "SectionColor"
    SectionColor.Parent = settingsF
    SectionColor.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    SectionColor.BorderSizePixel = 0
    SectionColor.Position = UDim2.new(0.453648925, 0, 0.300562054, 0)
    SectionColor.Size = UDim2.new(0, 200, 0, 24)
    SectionColor.Font = Enum.Font.SourceSans
    SectionColor.TextScaled = true
    SectionColor.Text = "Set Section Color"
    SectionColor.TextColor3 = colors.TextColor
    SectionColor.TextSize = 14.000

    local uis = game:GetService("UserInputService")
    uis.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightAlt then
            if MUInstance:FindFirstChild("login") ==  nil and MUInstance:FindFirstChild("top") ~= nil then
                if top.Visible == false then
                    top.Visible = true
                else
                    top.Visible = false
                end
            end
        end	
    end)
    dragify(top)

    local instance = {}

    function instance.createLogin(callback)
        callback = callback or function() end

        local login = Instance.new("Frame")
        local tokenInput = Instance.new("TextBox")
        local login_2 = Instance.new("TextButton")
        local discord = Instance.new("TextButton")
        local design = Instance.new("Folder")
        local topborder = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local ImageLabel = Instance.new("ImageLabel")
        local Frame = Instance.new("Frame")

        login.Name = "login"
        login.Parent = MUInstance
        login.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
        login.BorderSizePixel = 0
        login.Position = UDim2.new(0.373696715, 0, 0.41756919, 0)
        login.Size = UDim2.new(0, 346, 0, 192)

        tokenInput.Name = "tokenInput"
        tokenInput.Parent = login
        tokenInput.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
        tokenInput.BorderSizePixel = 0
        tokenInput.Position = UDim2.new(0.196531788, 0, 0.552083313, 0)
        tokenInput.Size = UDim2.new(0, 198, 0, 24)
        tokenInput.Font = Enum.Font.Highway
        tokenInput.TextScaled = true
        tokenInput.PlaceholderText = "MU Token Here"
        tokenInput.Text = ""
        tokenInput.TextColor3 = colors.TextColor
        tokenInput.TextSize = 14.000
        tokenInput.TextWrapped = true
        tokenInput.TextXAlignment = Enum.TextXAlignment.Left

        login_2.Name = "login"
        login_2.Parent = login
        login_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        login_2.BorderColor3 = Color3.fromRGB(94, 94, 94)
        login_2.Position = UDim2.new(0.549132943, 0, 0.791666687, 0)
        login_2.Size = UDim2.new(0, 140, 0, 29)
        login_2.Font = Enum.Font.Highway
        login_2.TextScaled = true
        login_2.Text = "LOGIN"
        login_2.TextColor3 = Color3.fromRGB(147, 147, 147)
        login_2.TextSize = 14.000

        discord.Name = "discord"
        discord.Parent = login
        discord.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        discord.BorderColor3 = Color3.fromRGB(94, 94, 94)
        discord.Position = UDim2.new(0.0491329432, 0, 0.791666687, 0)
        discord.Size = UDim2.new(0, 140, 0, 29)
        discord.Font = Enum.Font.Highway
        discord.TextScaled = true
        discord.Text = "DISCORD"
        discord.TextColor3 = Color3.fromRGB(147, 147, 147)
        discord.TextSize = 14.000
        discord.MouseButton1Click:Connect(function()
            local function join()
                local http = nil
            
                if exploitUsing == "Synapse X" then
                    http = syn.request
                elseif exploitUsing == "ScriptWare" then
                    http = request
                end
                wait()
                if http == nil then return end
                http(
                    {
                        Url = "http://127.0.0.1:6463/rpc?v=1",
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json",
                            ["origin"] = "https://discord.com",
                        },
                        Body = game:GetService("HttpService"):JSONEncode(
                        {
                            ["args"] = {
                                ["code"] = "XqW8Sguk33",
                            },
                            ["cmd"] = "INVITE_BROWSER",
                            ["nonce"] = "."
                        })
                    })
            end

            setclipboard("https://discord.gg/XqW8Sguk33")
            join()
        end)

        design.Name = "design"
        design.Parent = login

        topborder.Name = "top border"
        topborder.Parent = design
        topborder.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        topborder.BorderSizePixel = 0
        topborder.Position = UDim2.new(-0.000802277122, 0, -0.00154177344, 0)
        topborder.Size = UDim2.new(0, 346, 0, 17)

        TextLabel.Parent = topborder
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.000802277122, 0, 0, 0)
        TextLabel.Size = UDim2.new(0, 345, 0, 17)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.TextScaled = true
        TextLabel.Text = "Mstir's Utilities: ROBLOX Checkpoint"
        TextLabel.TextColor3 = colors.TextColor
        TextLabel.TextSize = 14.000

        ImageLabel.Parent = design
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.Position = UDim2.new(0.378612727, 0, 0.1229674, 0)
        ImageLabel.Size = UDim2.new(0, 74, 0, 70)
        ImageLabel.Image = "rbxassetid://687512115"

        Frame.Parent = login
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BackgroundTransparency = 0.600
        Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
        Frame.Position = UDim2.new(0.196531788, 0, 0.708333313, 0)
        Frame.Size = UDim2.new(0, 198, 0.00100000005, 0)

        login_2.MouseButton1Click:Connect(function()
            pcall(callback,login,tokenInput,top,MUInstance,exploitUsing)
        end)
    end

    function instance.notify(title,message,notitype,time)

        local notification = Instance.new("Frame")
        local design_2 = Instance.new("Folder")
        local topborder_2 = Instance.new("Frame")
        local Body = Instance.new("TextLabel")
        local Title = Instance.new("TextLabel")

        notification.Name = "notification"
        notification.Parent = MUInstance
        notification.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
        notification.BorderSizePixel = 0
        notification.Position = UDim2.new(1, 0,1, 0)
        notification.Size = UDim2.new(0, 305, 0, 141)
        notification.Visible = false

        design_2.Name = "design"
        design_2.Parent = notification

        topborder_2.Name = "top border"
        topborder_2.Parent = design_2
        topborder_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        topborder_2.BorderSizePixel = 0
        topborder_2.Position = UDim2.new(-0.000802462222, 0, -0.00154276099, 0)
        topborder_2.Size = UDim2.new(0, 305, 0, 17)

        Body.Name = "Body"
        Body.Parent = notification
        Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Body.BackgroundTransparency = 1.000
        Body.BorderSizePixel = 0
        Body.Position = UDim2.new(0.000802462222, 0, 0.120567374, 0)
        Body.Size = UDim2.new(0, 304, 0, 111)
        Body.Font = Enum.Font.SourceSans
        Body.Text = message
        if notitype == "error" then
            Body.TextColor3 = Color3.fromRGB(173, 9, 9)
        else
            Body.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        Body.TextScaled = true
        Body.TextSize = 14.000
        Body.TextWrapped = true

        Title.Name = "Title"
        Title.Parent = notification
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.BorderSizePixel = 0
        Title.Position = UDim2.new(0.000802462222, 0, 0, 0)
        Title.Size = UDim2.new(0, 304, 0, 17)
        Title.Font = Enum.Font.SourceSans
        Title.Text = "Notifcation: "..title
        if notitype == "error" then
            Title.TextColor3 = Color3.fromRGB(173, 9, 9)
        else
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        Title.TextScaled = true
        Title.TextSize = 14.000
        Title.TextWrapped = true


        notification.Visible = true
        TweenGui("position",notification,UDim2.new(0.389, 0,0.233, 0),0.3)
        if string.lower(notitype) == "normal" then
            sound(notifyNormal)
        elseif string.lower(notitype) == "error" then
            sound(notifyError)
        end

        delay(time,function()
            notification:Destroy()
        end) 
    end

    local Tabs = {}
    local first = true

    function instance.createTab(tabName)
        tabName = tabName or "Tab"

        local tabButton = Instance.new("TextButton")
        local tabFrame = Instance.new("ScrollingFrame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        local function UpdateFrameSize()
            local cS = UIListLayout_2.AbsoluteContentSize

            game.TweenService:Create(tabFrame, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
            }):Play()
        end

        tabButton.Name = "tabButton"
        tabButton.Parent = BH
        tabButton.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        tabButton.BorderSizePixel = 0
        tabButton.Size = UDim2.new(0, 173, 0, 23)
        tabButton.Font = Enum.Font.SourceSans
        tabButton.Text = string.upper(tabName)
        tabButton.TextColor3 = colors.TextColor
        tabButton.TextScaled = true
        tabButton.TextSize = 17.000
        tabButton.TextWrapped = true

        tabFrame.Name = string.lower(tabName).."Frame"
        tabFrame.Parent = FH
        tabFrame.Active = true
        tabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabFrame.BackgroundTransparency = 1.000
        tabFrame.BorderSizePixel = 0
        tabFrame.Size = UDim2.new(0, 507, 0, 381)

        UIListLayout_2.Parent = tabFrame
        UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 10)

        if first then
            tabFrame.Visible = true
            first = false
            UpdateFrameSize()
        else
            tabFrame.Visible = false
            tabButton.TextTransparency = 0.5
        end

        UpdateFrameSize()
        tabFrame.ChildAdded:Connect(UpdateFrameSize)
        tabFrame.ChildRemoved:Connect(UpdateFrameSize)

        tabButton.MouseButton1Click:Connect(function()
            sound(uiInteract)
            UpdateFrameSize()
            for i,v in pairs(FH:GetChildren()) do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            tabFrame.Visible = true

            for i,v in pairs(BH:GetChildren()) do
                if v:IsA("TextButton") then
                    v.TextTransparency = 0.5
                end
            end

            tabButton.TextTransparency = 0
        end)

        table.insert(Tabs,string.lower(tabName))

        local Tab = {}

        function Tab.createSection(sectionName)
            local Section = Instance.new("Frame")
            local Title_2 = Instance.new("TextLabel")
            local design_3 = Instance.new("Folder")
            local Frame_2 = Instance.new("Frame")
            local _1 = Instance.new("Frame")
            local UIListLayout_3 = Instance.new("UIListLayout")
            local _2 = Instance.new("Frame")
            local UIListLayout_4 = Instance.new("UIListLayout")
            

            Section.Name = "Section"
            Section.Parent = tabFrame
            Section.BackgroundColor3 = colors.SectionColor
            Section.BorderSizePixel = 0
            Section.Position = UDim2.new(0.0463510863, 0, 8.009863e-08, 0)
            Section.Size = UDim2.new(0, 471, 0, 233)
            Section.AutomaticSize = Enum.AutomaticSize.Y

            Title_2.Name = "Title"
            Title_2.Parent = Section
            Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_2.BackgroundTransparency = 1.000
            Title_2.BorderSizePixel = 0
            Title_2.Size = UDim2.new(0, 471, 0, 17)
            Title_2.Font = Enum.Font.SourceSans
            Title_2.TextScaled = true
            Title_2.Text = sectionName
            Title_2.TextColor3 = colors.TextColor
            Title_2.TextSize = 14.000
            Title_2.TextWrapped = true

            design_3.Name = "design"
            design_3.Parent = Section

            Frame_2.Parent = design_3
            Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame_2.BorderSizePixel = 0
            Frame_2.Position = UDim2.new(0, 0, 0.0815450624, 0)
            Frame_2.Size = UDim2.new(0, 471, 0.00999999978, 0)

            local function GetParent()
                if UIListLayout_3.AbsoluteContentSize.Y > UIListLayout_4.AbsoluteContentSize.Y then
                    return _2
                else
                    return _1
                end
            end

            _1.Name = "1"
            _1.Parent = Section
            _1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _1.BackgroundTransparency = 1.000
            _1.BorderSizePixel = 0
            _1.Size = UDim2.new(0, 226, 0, 208)
            _1.Position = UDim2.new(0.002, 0,0.107, 0)
            _1.AutomaticSize = Enum.AutomaticSize.Y

            UIListLayout_3.Parent = _1
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 7)

            _2.Name = "2"
            _2.Parent = Section
            _2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _2.BackgroundTransparency = 1.000
            _2.BorderSizePixel = 0
            _2.Position = UDim2.new(0.524416149, 0, 0, 0)
            _2.Size = UDim2.new(0, 224, 0, 208)
            _2.Position = UDim2.new(0.524, 0,0.107, 0)
            _2.AutomaticSize = Enum.AutomaticSize.Y

            UIListLayout_4.Parent = _2
            UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_4.Padding = UDim.new(0, 7)

            local Elements = {}

            function Elements.Button(buttonName,callback)
                buttonName = buttonName or "Button that does nothing"
                callback = callback or function () end
                
                local Button = Instance.new("TextButton")

                Button.Name = "Button"
                Button.Parent = GetParent()
                Button.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
                Button.Text = buttonName
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(0, 226, 0, 30)
                Button.Font = Enum.Font.SourceSans
                Button.TextScaled = true
                Button.TextColor3 = colors.TextColor
                Button.TextSize = 14.000
                Button.ClipsDescendants = true

                local function circlefunc()
                    local circle = Instance.new("ImageLabel")
                    circle.BackgroundTransparency = 1
                    circle.Image = "http://www.roblox.com/asset/?id=5554831670"
                    return circle
                end
                
                local function GetXY(GuiObject)
                    local Mouse = game.Players.LocalPlayer:GetMouse()
                    local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
                    local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
                    return Px/Max, Py/May
                end
                
                local function CircleAnim(GuiObject, EndColour, StartColour)
                    local PX, PY = GetXY(GuiObject)
                    local Circle = circlefunc()
                    Circle.Size = UDim2.fromScale(0,0)
                    Circle.Position = UDim2.fromScale(PX,PY)
                    Circle.ZIndex = 200
                    Circle.Parent = GuiObject
                    local Size = GuiObject.AbsoluteSize.X
                    game:GetService("TweenService"):Create(Circle, TweenInfo.new(1), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = Color3.fromRGB(126, 126, 126), Size = UDim2.fromOffset(Size,Size)}):Play()
                    spawn(function()
                        wait(2)
                        Circle:Destroy()
                    end)
                end

                Button.MouseButton1Click:Connect(function()
                    sound(uiInteract)
                    CircleAnim(Button)
                    pcall(callback)
                end)
            end

            function Elements.Toggle(toggleName,isOn,callback)
                toggleName = toggleName or "Toggle that does nothing"
                callback = callback or function () end
                isOn = isOn or false

                local Toggle = Instance.new("TextLabel")
                local toggle = Instance.new("Frame")
                local ball = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local UICorner_2 = Instance.new("UICorner")

                Toggle.Name = "Toggle"
                Toggle.Parent = _1
                Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Toggle.BackgroundTransparency = 1.000
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0, 0, 0.177884609, 0)
                Toggle.Size = UDim2.new(0, 146, 0, 30)
                Toggle.Font = Enum.Font.SourceSans
                Toggle.TextScaled = true
                Toggle.TextColor3 = colors.TextColor
                Toggle.TextSize = 14.000
                Toggle.Text = toggleName..":"

                toggle.Name = "toggle"
                toggle.Parent = Toggle
                toggle.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
                toggle.BorderSizePixel = 0
                toggle.Position = UDim2.new(1.05164742, 0, 0, 0)
                toggle.Size = UDim2.new(0, 72, 0, 30)

                ball.Name = "ball"
                ball.Parent = toggle
                ball.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
                ball.Text = ""
                ball.BorderSizePixel = 0
                ball.Position = UDim2.new(-0.00734230131, 0, 0, 0)
                ball.Size = UDim2.new(0, 34, 0, 30)
                if isOn then
                    ball.Position = UDim2.new(0.52, 0,0, 0)
                    ball.BackgroundColor3 = Color3.fromRGB(53, 167, 0)
                end

                UICorner.CornerRadius = UDim.new(12, 12)
                UICorner.Parent = ball

                UICorner_2.CornerRadius = UDim.new(12, 12)
                UICorner_2.Parent = toggle

                local toggle = isOn

                if toggle then
                    pcall(callback,toggle)
                end

                ball.MouseButton1Click:Connect(function()
                    sound(uiInteract)

                    if toggle ~= false then
                        if toggle == true then
                            toggle = false
                            ball:TweenPosition(UDim2.new(-0.00734230131, 0, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                            game:GetService("TweenService"):Create(ball, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                                BackgroundColor3 = Color3.fromRGB(148, 148, 148)
                            }):Play()
                            --false
                            pcall(callback,toggle)
                        end
                        return
                    end
                    toggle = true
                    ball:TweenPosition(UDim2.new(0.52, 0,0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                    game:GetService("TweenService"):Create(ball, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                        BackgroundColor3 = Color3.fromRGB(53, 167, 0)
                    }):Play()
                    --true
                    pcall(callback,toggle)
                end)
            end

            function Elements.Slider(sliderName,def,min,max,callback)
                sliderName = sliderName or "Slider with No Name"
                def = def or 0
                min = min or 0
                max = max or 100
                callback = callback or function() end

                local SliderFunc = {}

                local Slider = Instance.new("Frame")
                local SFrame = Instance.new("Frame")
                local Slider_2 = Instance.new("Frame")
                local SlideButton = Instance.new("TextButton")
                local SliderValue = Instance.new("TextLabel")
                local Title_3 = Instance.new("TextLabel")

                Slider.Name = "Slider"
                Slider.Parent = _1
                Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Slider.BackgroundTransparency = 1.000
                Slider.BorderSizePixel = 0
                Slider.Position = UDim2.new(0, 0, 0.355769217, 0)
                Slider.Size = UDim2.new(0, 226, 0, 49)

                SFrame.Name = "SFrame"
                SFrame.Parent = Slider
                SFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
                SFrame.BorderSizePixel = 0
                SFrame.Position = UDim2.new(-0.00442477874, 0, 0.377551019, 0)
                SFrame.Size = UDim2.new(0, 226, 0, 30)

                Slider_2.Name = "Slider"
                Slider_2.Parent = SFrame
                Slider_2.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
                Slider_2.BorderSizePixel = 0
                Slider_2.Position = UDim2.new(0.00442477874, 0, 0.0500000007, 0)
                Slider_2.Size = UDim2.new(0, 226, 0, 30)

                SlideButton.Name = "SlideButton"
                SlideButton.Parent = SFrame
                SlideButton.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
                SlideButton.BorderSizePixel = 0
                SlideButton.Position = UDim2.new(0.00442477874, 0, 0.0500000007, 0)
                SlideButton.Size = UDim2.new(0, 226, 0, 30)
                SlideButton.Text = ""
                SlideButton.BackgroundTransparency = 1

                SliderValue.Name = "SliderValue"
                SliderValue.Parent = SFrame
                SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderValue.BackgroundTransparency = 1.000
                SliderValue.BorderSizePixel = 0
                SliderValue.Size = UDim2.new(0, 226, 0, 30)
                SliderValue.Font = Enum.Font.SourceSans
                SliderValue.TextScaled = true
                SliderValue.Text = def or min or 0
                SliderValue.TextColor3 = colors.TextColor
                SliderValue.TextSize = 14.000

                Title_3.Name = "Title"
                Title_3.Parent = Slider
                Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_3.BackgroundTransparency = 1.000
                Title_3.BorderSizePixel = 0
                Title_3.Position = UDim2.new(0.0265486725, 0, 0, 0)
                Title_3.Size = UDim2.new(0, 220, 0, 20)
                Title_3.Font = Enum.Font.SourceSans
                Title_3.TextScaled = true
                Title_3.Text = sliderName..":"
                Title_3.TextColor3 = colors.TextColor
                Title_3.TextSize = 14.000
                Title_3.TextXAlignment = Enum.TextXAlignment.Left

                if def > max or min < 0 then def = 0 end
                local SliderDef = math.clamp(def, min, max)
                local DefaultScale =  (SliderDef - min) / (max - min)
                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
                local Value;
                local SB = SlideButton
                local SV = SliderValue
                local SF = Slider_2
                local NormalSizeX = 226
                local NormalSizeY = 30

                SF.Size = UDim2.fromScale(DefaultScale,1)
                SV.Text = def
                Value = def
                pcall(callback,Value)

                SB.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / NormalSizeX) * SF.AbsoluteSize.X) + tonumber(min)) or 0
                
                
                    SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, NormalSizeX), 0, NormalSizeY)
                    moveconnection = mouse.Move:Connect(function()
                        if _G.MULIB == nil then moveconnection:Disconnect() return end
                        Value = math.floor((((tonumber(max) - tonumber(min)) / NormalSizeX) * SF.AbsoluteSize.X) + tonumber(min))
                        SV.Text = Value
                
                        pcall(callback,Value)
                
                        SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, NormalSizeX), 0,NormalSizeY)
                    end)
                
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            if _G.MULIB == nil then releaseconnection:Disconnect() return end
                            Value = math.floor((((tonumber(max) - tonumber(min)) / NormalSizeX) * SF.AbsoluteSize.X) + tonumber(min))
                
                            pcall(callback,Value)
                
                            SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, NormalSizeX), 0, NormalSizeY)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)

                function SliderFunc:ChangeValue(val)
                    if tonumber(val) then
                        def = val
                        SF.Size = UDim2.fromScale(DefaultScale,1)
                        SV.Text = def
                        Value = def
                        pcall(callback,Value)
                    end
                end

                return SliderFunc
            end

            function Elements.TextBox(textboxName,inputType,callback)
                textboxName = textboxName or "No Name"
                inputType = inputType or "you probably should put something here"

                local TextBoxFunc = {}

                local TextBox = Instance.new("Frame")
                local Title_4 = Instance.new("TextLabel")
                local Input = Instance.new("TextBox")

                TextBox.Name = "TextBox"
                TextBox.Parent = _1
                TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.BackgroundTransparency = 1.000
                TextBox.BorderSizePixel = 0
                TextBox.Position = UDim2.new(0, 0, 0.355769217, 0)
                TextBox.Size = UDim2.new(0, 226, 0, 49)

                Title_4.Name = "Title"
                Title_4.Parent = TextBox
                Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_4.BackgroundTransparency = 1.000
                Title_4.BorderSizePixel = 0
                Title_4.Position = UDim2.new(0.0265486725, 0, 0, 0)
                Title_4.Size = UDim2.new(0, 220, 0, 20)
                Title_4.Font = Enum.Font.SourceSans
                Title_4.TextScaled = true
                Title_4.Text = textboxName..":"
                Title_4.TextColor3 = colors.TextColor
                Title_4.TextSize = 14.000
                Title_4.TextXAlignment = Enum.TextXAlignment.Left

                Input.Name = "Input"
                Input.Parent = TextBox
                Input.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
                Input.BorderSizePixel = 0
                Input.Position = UDim2.new(0, 0, 0.428571433, 0)
                Input.Size = UDim2.new(0, 225, 0, 29)
                Input.Font = Enum.Font.SourceSans
                Input.TextScaled = true
                Input.PlaceholderText = inputType
                Input.Text = ""
                Input.TextColor3 = colors.TextColor
                Input.TextSize = 14.000
                Input.TextWrapped = true

                Input.FocusLost:Connect(function(enterPressed)
                    if enterPressed then
                        pcall(callback,Input.Text)
                    end
                end)

                function TextBoxFunc:ChangeText(txt)
                    Input.Text = tostring(txt)
                end

                return TextBoxFunc
            end

            function Elements.Bind(bindName,bindKey,callback)
                bindName = bindName or "Bind:"
                bindKey = bindKey or Enum.KeyCode.E
                callback = callback or function() end


                local Bind = Instance.new("TextLabel")
                local TextButton_2 = Instance.new("TextButton")

                Bind.Name = "Bind"
                Bind.Parent = _2
                Bind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Bind.BackgroundTransparency = 1.000
                Bind.BorderSizePixel = 0
                Bind.Position = UDim2.new(0, 0, 0.177884609, 0)
                Bind.Size = UDim2.new(0, 146, 0, 30)
                Bind.Font = Enum.Font.SourceSans
                Bind.TextScaled = true
                Bind.Text = bindName..":"
                Bind.TextColor3 = colors.TextColor
                Bind.TextSize = 14.000

                TextButton_2.Parent = Bind
                TextButton_2.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
                TextButton_2.Position = UDim2.new(1.05164742, 0, 0, 0)
                TextButton_2.Size = UDim2.new(0, 61, 0, 30)
                TextButton_2.Font = Enum.Font.SourceSans
                TextButton_2.Text = tostring(bindKey):gsub("Enum.KeyCode.", "");
                TextButton_2.TextColor3 = colors.TextColor
                TextButton_2.TextScaled = true
                TextButton_2.TextSize = 14.000
                TextButton_2.TextWrapped = true

                local WhitelistedType = {
                    [Enum.UserInputType.MouseButton1] = "Mouse1";
                    [Enum.UserInputType.MouseButton2] = "Mouse2";
                    [Enum.UserInputType.MouseButton3] = "Mouse3";
                };
                local UIS = game:GetService("UserInputService")
                local Bind = bindKey
                local Binding = false
                

                TextButton_2.MouseButton1Click:Connect(function()
                    sound(uiInteract)

                    local Connection;
                    Binding = true
                
                    TextButton_2.Text = ". . .";
                
                    Connection = UIS.InputBegan:Connect(function(i)
                        if WhitelistedType[i.UserInputType] then
                            TextButton_2 = WhitelistedType[i.UserInputType];
                            Bind = i.UserInputType
                        elseif i.KeyCode ~= Enum.KeyCode.Unknown then
                            TextButton_2.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
                            Bind = i.KeyCode
                        else
                            warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
                        end;
                
                        Connection:Disconnect();
                    end)
                end)
                
                local Connection2;

                Connection2 = UIS.InputBegan:Connect(function(i)
                    if _G.MULIB == nil then
                        Connection2:Disconnect()
                        return
                    end
                    
                    if Binding == true then
                        Binding = false
                        return;
                    end
                
                    if (Bind == i.UserInputType or Bind == i.KeyCode) then
                        pcall(callback)
                    end;
                end);
            end

            function Elements.Dropdown(ddName,tableList,callback)
                local DropdownFunc = {}

                local Dropdown = Instance.new("Frame")
                local Title_5 = Instance.new("TextLabel")
                local DD = Instance.new("TextButton")
                local list = Instance.new("ScrollingFrame")
                local UIListLayout_5 = Instance.new("UIListLayout")

                local opened = false
                local ddDebounce = false

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = _2
                Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Dropdown.BackgroundTransparency = 1.000
                Dropdown.BorderSizePixel = 0
                Dropdown.Position = UDim2.new(0, 0, 0.355769217, 0)
                Dropdown.Size = UDim2.new(0, 226, 0, 49)
                Dropdown.ZIndex = -1

                Title_5.Name = "Title"
                Title_5.Parent = Dropdown
                Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_5.BackgroundTransparency = 1.000
                Title_5.BorderSizePixel = 0
                Title_5.Position = UDim2.new(0.0265486725, 0, 0, 0)
                Title_5.Size = UDim2.new(0, 220, 0, 20)
                Title_5.Font = Enum.Font.SourceSans
                Title_5.TextScaled = true
                Title_5.Text = ddName..":"
                Title_5.TextColor3 = colors.TextColor
                Title_5.TextSize = 14.000
                Title_5.TextXAlignment = Enum.TextXAlignment.Left

                DD.Name = "DD"
                DD.Parent = Dropdown
                DD.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
                DD.BorderSizePixel = 0
                DD.Position = UDim2.new(0, 0, 0.408163279, 0)
                DD.Size = UDim2.new(0, 225, 0, 30)
                DD.Font = Enum.Font.SourceSans
                DD.TextScaled = true
                DD.Text = ""
                DD.TextColor3 = colors.TextColor
                DD.TextSize = 14.000

                list.Name = "list"
                list.Parent = DD
                list.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
                list.ClipsDescendants = true
                list.Position = UDim2.new(0, 0, 1, 0)
                list.Size = UDim2.new(0, 225, 0, 0)
                list.ZIndex = 2
                list.Visible = false
                list.AutomaticCanvasSize = Enum.AutomaticSize.Y

                UIListLayout_5.Parent = list
                UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

                for _,v in pairs(tableList) do
                    local TextButton_3 = Instance.new("TextButton")

                    TextButton_3.Parent = list
                    TextButton_3.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
                    TextButton_3.Size = UDim2.new(0, 225, 0, 23)
                    TextButton_3.Font = Enum.Font.SourceSans
                    TextButton_3.TextScaled = true
                    TextButton_3.TextColor3 = colors.TextColor
                    TextButton_3.TextSize = 14.000
                    TextButton_3.Text = tostring(v)

                    TextButton_3.MouseButton1Click:Connect(function()
                        DD.Text = TextButton_3.Text
                        sound(uiInteract)
                        pcall(callback,DD.Text)
                    end)
                end

                DD.MouseButton1Click:Connect(function()
                    sound(uiInteract)

                    local TweenTime = 0.3
                    UpdateFrameSize()

                    if opened == false and not ddDebounce then
                        opened = true
                        ddDebounce = true
                        list.Visible = true
                        TweenGui("size",list,UDim2.new(0, 225, 0, 93),TweenTime)
                        wait(TweenTime)
                        ddDebounce = false
                    elseif opened == true and not ddDebounce then
                        ddDebounce = true
                        opened = false
                        TweenGui("size",list,UDim2.new(0, 225, 0, 0),TweenTime)
                        wait(TweenTime)
                        list.Visible = false
                        ddDebounce = false
                    end
                end)

                function DropdownFunc:Refresh(newList)
                    for _,v in pairs(list:GetChildren()) do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end

                    for _,v in pairs(newList) do
                        local TextButton_3 = Instance.new("TextButton")
    
                        TextButton_3.Parent = list
                        TextButton_3.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
                        TextButton_3.Size = UDim2.new(0, 225, 0, 23)
                        TextButton_3.Font = Enum.Font.SourceSans
                        TextButton_3.TextScaled = true
                        TextButton_3.TextColor3 = colors.TextColor
                        TextButton_3.TextSize = 14.000
                        TextButton_3.Text = tostring(v)
    
                        TextButton_3.MouseButton1Click:Connect(function()
                            DD.Text = TextButton_3.Text
                            sound(uiInteract)
                            pcall(callback,DD.Text)
                        end)
                    end
                end

                return DropdownFunc
            end

            return Elements
        end
        return Tab
    end

    return instance
end

return ui
