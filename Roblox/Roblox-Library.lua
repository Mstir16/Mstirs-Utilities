repeat wait() until game:IsLoaded()
game:GetService("Players").LocalPlayer.Idled:connect(function()
    local VirtualClick = game:GetService("VirtualUser")
    VirtualClick:CaptureController()
    VirtualClick:ClickButton2(Vector2.new())
end)

local sweetparadax = {}

function sweetparadax:Init(uiName)
    if uiName == nil then warn('Paradax UI Lib: no name given in :Init()') return end
    if _G.ParadaxExecuted == true then warn('Paradax UI has already been executed!') return end
    _G.ParadaxExecuted = true

    local sweetParadax = Instance.new("ScreenGui")

    --login ui--
    local Login = Instance.new("ImageLabel")
    local keyName = Instance.new("TextLabel")
    local keyInput = Instance.new("TextBox")
    local LoginButton = Instance.new("TextButton")
    local discButton = Instance.new("TextButton")
    local separationBar = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local Status = Instance.new("TextLabel")
    local credit = Instance.new("TextLabel")
    local header = Instance.new("Frame")
    local name = Instance.new("TextLabel")
    -- main ui--
    local MainFrame = Instance.new("ImageLabel")
    local SP = Instance.new("ImageLabel")
    local gname = Instance.new("TextLabel")
    local info = Instance.new("Frame")
    local build = Instance.new("TextLabel")
    local user = Instance.new("TextLabel")
    local tabs = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Frame = Instance.new("Frame")
    local FH = Instance.new("Frame")

    --Properties:

    sweetParadax.Name = "sweetParadax"
    if syn then syn.protect_gui(sweetParadax) end
    sweetParadax.Parent = game.CoreGui
    sweetParadax.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    sweetParadax.ResetOnSpawn = false

    --login ui--
    Login.Name = "Login"
    Login.Parent = sweetParadax
    Login.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Login.BackgroundTransparency = 1.000
    Login.Position = UDim2.new(0.362757981, 0, 0.365760505, 0)
    Login.Size = UDim2.new(0, 356, 0, 216)
    Login.Image = "rbxassetid://3570695787"
    Login.ImageColor3 = Color3.fromRGB(32, 32, 32)
    Login.ScaleType = Enum.ScaleType.Slice
    Login.SliceCenter = Rect.new(100, 100, 100, 100)
    Login.SliceScale = 0.040

    keyName.Name = "keyName"
    keyName.Parent = Login
    keyName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    keyName.BackgroundTransparency = 1.000
    keyName.Position = UDim2.new(0, 0, 0.257684201, 0)
    keyName.Size = UDim2.new(0, 50, 0, 31)
    keyName.Font = Enum.Font.SourceSans
    keyName.Text = "Key"
    keyName.TextColor3 = Color3.fromRGB(161, 161, 161)
    keyName.TextSize = 14.000

    keyInput.Name = "keyInput"
    keyInput.Parent = Login
    keyInput.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    keyInput.BorderColor3 = Color3.fromRGB(111, 111, 111)
    keyInput.Position = UDim2.new(0.141406208, 0, 0.277780324, 0)
    keyInput.Size = UDim2.new(0, 296, 0, 23)
    keyInput.Font = Enum.Font.SourceSans
    keyInput.Text = ""
    keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyInput.TextSize = 14.000
    keyInput.TextXAlignment = Enum.TextXAlignment.Left

    LoginButton.Name = "LoginButton"
    LoginButton.Parent = Login
    LoginButton.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
    LoginButton.Position = UDim2.new(0.140449435, 0, 0.731481493, 0)
    LoginButton.Size = UDim2.new(0, 115, 0, 24)
    LoginButton.Font = Enum.Font.SourceSans
    LoginButton.Text = "LOGIN"
    LoginButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    LoginButton.TextSize = 14.000

    discButton.Name = "discButton"
    discButton.Parent = Login
    discButton.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
    discButton.Position = UDim2.new(0.615618944, 0, 0.731481493, 0)
    discButton.Size = UDim2.new(0, 115, 0, 24)
    discButton.Font = Enum.Font.SourceSans
    discButton.Text = "DISCORD"
    discButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    discButton.TextSize = 14.000

    separationBar.Name = "separationBar"
    separationBar.Parent = Login
    separationBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    separationBar.Position = UDim2.new(0.10674157, 0, 0.662037015, 0)
    separationBar.Size = UDim2.new(0, 308, 0, 2)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
    UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.53, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
    UIGradient.Parent = separationBar

    Status.Name = "Status"
    Status.Parent = Login
    Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Status.BackgroundTransparency = 1.000
    Status.Position = UDim2.new(0.141406283, 0, 0.564814806, 0)
    Status.Size = UDim2.new(0, 283, 0, 14)
    Status.Font = Enum.Font.SourceSans
    Status.Text = "Get the Utility Key from the Discord"
    Status.TextColor3 = Color3.fromRGB(161, 161, 161)
    Status.TextSize = 14.000

    credit.Name = "credit"
    credit.Parent = Login
    credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    credit.BackgroundTransparency = 1.000
    credit.Position = UDim2.new(0.203204036, 0, 0.935185194, 0)
    credit.Size = UDim2.new(0, 283, 0, 14)
    credit.Font = Enum.Font.SourceSans
    credit.Text = "made by sweety©"
    credit.TextColor3 = Color3.fromRGB(161, 161, 161)
    credit.TextSize = 14.000
    credit.TextXAlignment = Enum.TextXAlignment.Right

    header.Name = "header"
    header.Parent = Login
    header.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    header.BorderColor3 = Color3.fromRGB(32, 32, 32)
    header.BorderSizePixel = 0
    header.Size = UDim2.new(0, 356, 0, 28)

    name.Name = "name"
    name.Parent = header
    name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    name.BackgroundTransparency = 1.000
    name.Position = UDim2.new(-0.012658231, 0, 0, 0)
    name.Size = UDim2.new(0, 80, 0, 28)
    name.Font = Enum.Font.SourceSansSemibold
    name.Text = "Mstir's Utilities Key Page"
    name.TextColor3 = Color3.fromRGB(98, 98, 98)
    name.TextSize = 14.000

    --main ui--
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = sweetParadax
    MainFrame.Active = true
    MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainFrame.BackgroundTransparency = 0.999
    MainFrame.Position = UDim2.new(0.336319208, 0, 0.244338855, 0)
    MainFrame.Size = UDim2.new(0, 446, 0, 329)
    MainFrame.Image = "rbxassetid://3570695787"
    MainFrame.ImageColor3 = Color3.fromRGB(35, 35, 35)
    MainFrame.ScaleType = Enum.ScaleType.Slice
    MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    MainFrame.SliceScale = 0.040
    MainFrame.Visible = false

    SP.Name = "SP"
    SP.Parent = MainFrame
    SP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SP.BackgroundTransparency = 1.000
    SP.Size = UDim2.new(0, 95, 0, 329)
    SP.Image = "rbxassetid://3570695787"
    SP.ImageColor3 = Color3.fromRGB(35, 35, 35)
    SP.ScaleType = Enum.ScaleType.Slice
    SP.SliceCenter = Rect.new(100, 100, 100, 100)
    SP.SliceScale = 0.040

    gname.Name = "name"
    gname.Parent = SP
    gname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    gname.BackgroundTransparency = 1.000
    gname.Position = UDim2.new(-0.00796797872, 0, -0.00191968551, 0)
    gname.Size = UDim2.new(0, 95, 0, 28)
    gname.Font = Enum.Font.SourceSansSemibold
    gname.Text = uiName
    gname.TextColor3 = Color3.fromRGB(141, 141, 141)
    gname.TextSize = 14.000

    info.Name = "info"
    info.Parent = SP
    info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info.BackgroundTransparency = 1.000
    info.Position = UDim2.new(-0.00163139775, 0, 0.93617022, 0)
    info.Size = UDim2.new(0, 543, 0, 15)

    build.Name = "build"
    build.Parent = info
    build.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    build.BackgroundTransparency = 1.000
    build.Position = UDim2.new(-0.000256922096, 0, 0, 0)
    build.Size = UDim2.new(0, 65, 0, 11)
    build.Font = Enum.Font.SourceSansSemibold
    build.Text = "build: 1.0"
    build.TextColor3 = Color3.fromRGB(141, 141, 141)
    build.TextSize = 14.000

    user.Name = "user"
    user.Parent = info
    user.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    user.BackgroundTransparency = 1.000
    user.Position = UDim2.new(0.522439539, 0, 0, 0)
    user.Size = UDim2.new(0, 162, 0, 11)
    user.Font = Enum.Font.SourceSans
    user.Text = "Greetings user"
    user.TextColor3 = Color3.fromRGB(141, 141, 141)
    user.TextSize = 14.000
    user.TextXAlignment = Enum.TextXAlignment.Right

    tabs.Name = "tabs"
    tabs.Parent = SP
    tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabs.BackgroundTransparency = 1.000
    tabs.Position = UDim2.new(0, 0, 0.104521222, 0)
    tabs.Size = UDim2.new(0, 94, 0, 249)

    UIListLayout.Parent = tabs
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    Frame.Parent = SP
    Frame.BackgroundColor3 = Color3.fromRGB(197, 197, 197)
    Frame.BorderColor3 = Color3.fromRGB(197, 197, 197)
    Frame.Position = UDim2.new(1, 0, 0.0395136774, 0)
    Frame.Size = UDim2.new(0, 0, 0, 293)

    FH.Name = "FH"
    FH.Parent = MainFrame
    FH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FH.BackgroundTransparency = 1.000
    FH.Position = UDim2.new(0.194141313, 0, 0, 0)
    FH.Size = UDim2.new(0, 393, 0, 308)
    -- Scripts:
    
    local uis = game:GetService("UserInputService")
    uis.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightAlt then
            if sweetParadax:FindFirstChild("Login") ==  nil then
                if MainFrame.Visible == false then
                    MainFrame.Visible = true
                else
                    MainFrame.Visible = false
                end
            end
        end	
    end)
    print('active')
    --login funcs--

    local MainLib = {}

    function MainLib:LoginFunc(callback)
        local function LSLNN_fake_script() -- LoginButton.LocalScript 
            local script = Instance.new('LocalScript', LoginButton)

            
            local UUIDbox = uuidInput
            local Keybox = keyInput
            local StatusTxt = Status
            local DiscoName = user

            LoginButton.MouseButton1Click:Connect(function()
                pcall(callback,StatusTxt,Keybox,UUIDbox,DiscoName,MainFrame,Login)
            end)
        end
        coroutine.wrap(LSLNN_fake_script)()
    end
    local function WDNQT_fake_script() -- discButton.LocalScript 
        local script = Instance.new('LocalScript', discButton)
        script.Parent.MouseButton1Click:Connect(function()
            function join()
                local http = nil
            
                function CheckExecutor()
                    if syn and not fluxus then
                        http = syn.request
                        print('synapse')
                        return true
                    elseif KRNL_LOADED then
                        print('krnl')
                        http = http_request
                        return true 
                    elseif fluxus then
                        print('fluxus')
                        http = fluxus.request
                        return true
                    elseif not syn and not fluxus and not KRNL_LOADED then
                        if getexecutorname() == "ScriptWare" then
                            print('script-ware')
                            http = request
                            return true
                        else
                            return false
                        end
                    end
                    return false
                end
                CheckExecutor()
                wait()
                if http == nil then Status.Text = "Error: Exploit not Supported" return end
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
                                ["code"] = "7gN9zDeKUH",
                            },
                            ["cmd"] = "INVITE_BROWSER",
                            ["nonce"] = "."
                        })
                    })
            end
            setclipboard("https://discord.gg/7gN9zDeKUH")
            join()
            Status.Text = "Discord Server copied to clipboard and prompted!"
        end)
    end
    coroutine.wrap(WDNQT_fake_script)()

    --main funcs--

    local function AXURHX_fake_script() -- MainFrame.Drag 
        local script = Instance.new('LocalScript', MainFrame)
    
        function dragify(Frame)
            dragToggle = nil
            dragSpeed = .25 -- You can edit this.
            dragInput = nil
            dragStart = nil
            dragPos = nil
        
            function updateInput(input)
                Delta = input.Position - dragStart
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
            end
        
            Frame.InputBegan:Connect(function(input)
                if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                    dragToggle = true
                    dragStart = input.Position
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
        
        dragify(script.Parent)
    end
    coroutine.wrap(AXURHX_fake_script)()

    local first = true

    function MainLib:CreateTabs(table)
        for name,val in pairs(table) do
            local Tab1 = Instance.new("TextButton")
            
            --Properties:
            
            Tab1.Name = string.lower(name)
            Tab1.Parent = tabs
            Tab1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            Tab1.BorderSizePixel = 0
            Tab1.Position = UDim2.new(0, 0, 0.106382981, 0)
            Tab1.Size = UDim2.new(0, 95, 0, 13)
            Tab1.AutoButtonColor = false
            Tab1.Font = Enum.Font.SourceSansSemibold
            Tab1.Text = name
            if first == true then
                Tab1.TextColor3 = Color3.fromRGB(255, 255, 255)
            else
                Tab1.TextColor3 = Color3.fromRGB(49, 49, 49)
            end
            Tab1.TextSize = 14.000

            local Tab1F = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")

            --Properties:

            Tab1F.Name = string.lower(name)
            Tab1F.Parent = FH
            Tab1F.Active = true
            Tab1F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Tab1F.BackgroundTransparency = 1.000
            Tab1F.BorderColor3 = Color3.fromRGB(197, 197, 197)
            Tab1F.BorderSizePixel = 0
            Tab1F.Position = UDim2.new(0.0301338956, 0, 0.0422077924, 0)
            if first == true then
                Tab1F.Size = UDim2.new(0, 347, 0, 295)
                first = false
            else
                Tab1F.Size = UDim2.new(0, 347, 0, 0)
            end

            UIListLayout.Parent = Tab1F
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
            UIListLayout.FillDirection = Enum.FillDirection.Vertical
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 15)
        end

        local debounce = false
        local frameFolder = FH
        local RegSize = UDim2.new(0, 347,0, 295)
        local ClosedSize = UDim2.new(0, 347,0, 0)
        local animTime = 0.4
        local waitTime = 0.1
        local hover = false
        local inprog = false

        local function updateSize(tab)
            local cS = tab.UIListLayout.AbsoluteContentSize

            game.TweenService:Create(tab, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
            }):Play()
        end

        local function GetOn()
            for name,bool in pairs(table) do
                if bool == true then
                    return name
                end
            end
        end

        local function ProTabs(tabname)
            local this = tabname

            if table[this] == true then return end
            if not debounce then
                debounce = true
                local CurrentOn = GetOn()

                table[CurrentOn] = false
                table[this] = true

                if table[CurrentOn] ~= this then
                    for i,v in pairs(tabs[CurrentOn]:GetChildren()) do
                        game:GetService("TweenService"):Create(v, TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            BackgroundTransparency = 1
                        }):Play()
                    end
                end


                for i,v in pairs(tabs[this]:GetChildren()) do
                    game:GetService("TweenService"):Create(v, TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                        BackgroundTransparency = 0
                    }):Play()
                end
                wait()
                frameFolder[CurrentOn]:TweenSize(ClosedSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, animTime, false)
                if table[CurrentOn] ~= this then
                    for i,v in pairs(frameFolder[CurrentOn]:GetChildren()) do
                        if v:IsA("UIListLayout") == false then
                            v.Visible = true
                        end
                    end
                end
                wait(waitTime)
                frameFolder[CurrentOn].ScrollBarImageTransparency = 1
                frameFolder[CurrentOn].Visible = false
                frameFolder[this].Visible = true
                frameFolder[this]:TweenSize(RegSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, animTime, false)
                frameFolder[this].ScrollBarImageTransparency = 0
                for i,v in pairs(frameFolder[this]:GetChildren()) do
                    if v:IsA("UIListLayout") == false then
                        v.Visible = true
                    end
                end
                wait(waitTime)

                debounce = false
            end
        end

        for i,v in pairs(tabs:GetChildren()) do
            if v:IsA("TextButton") then
                v.MouseButton1Click:Connect(function()
                    ProTabs(v.Name)
                end)
                
                v.MouseEnter:Connect(function()
                    local this = v.Name
                    if tabs[GetOn()].Name == this then return end

                    if hover == false then
                        hover = true
                        if not table[GetOn()] then return end

                        game:GetService("TweenService"):Create(tabs[GetOn()], TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(49, 49, 49)
                        }):Play()

                        game:GetService("TweenService"):Create(tabs[this], TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(255, 255, 255)
                        }):Play()
                    else
                        return
                    end
                end)

                v.MouseLeave:Connect(function()
                    local this = v.Name
                    if tabs[GetOn()].Name == this then return end

                    if hover == true then
                        hover = false
                        if not table[GetOn()] then return end
                        game:GetService("TweenService"):Create(tabs[this], TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(49, 49, 49)
                        }):Play()

                        game:GetService("TweenService"):Create(tabs[GetOn()], TweenInfo.new(animTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(255, 255, 255)
                        }):Play()
                    else
                        return
                    end
                end)
            end
        end

        spawn(function()
            while wait() do
                for i,v in pairs(frameFolder:GetChildren()) do
                    updateSize(v)
                end
            end
        end)
    end

    function MainLib:Section(name,tab)
        local TabParent = FH:FindFirstChild(tab)

        local Section = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local UICorner = Instance.new("UICorner")
        local FrameSec = Instance.new("Frame")
        local SectionCap = Instance.new("UIListLayout")
        local UIListLayout = Instance.new("UIListLayout")

        --Properties:

        Section.Name = "Section"
        Section.Parent = TabParent
        Section.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
        Section.BackgroundTransparency = 1.000
        Section.Position = UDim2.new(0.106628239, 0, 0.284745753, 0)
        Section.Size = UDim2.new(0, 273, 0, 150)
        Section.Image = "rbxassetid://3570695787"
        Section.ImageColor3 = Color3.fromRGB(35, 35, 35)
        Section.ScaleType = Enum.ScaleType.Slice
        Section.SliceCenter = Rect.new(100, 100, 100, 100)
        Section.SliceScale = 0.070

        UIListLayout.Parent = Section
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.FillDirection = Enum.FillDirection.Vertical
        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
        UIListLayout.Padding = UDim.new(0, 10)

        TextLabel.Parent = Section
        TextLabel.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
        TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
        TextLabel.Position = UDim2.new(0, 0, 0.0370368958, 0)
        TextLabel.Size = UDim2.new(0, 273, 0, 30)
        TextLabel.Font = Enum.Font.SourceSansSemibold
        TextLabel.Text = name
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 20.000

        UICorner.Parent = TextLabel

        FrameSec.Parent = Section
        FrameSec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        FrameSec.BackgroundTransparency = 1.000
        FrameSec.Position = UDim2.new(-0.00732600736, 0, 0.284554482, 0)
        FrameSec.Size = UDim2.new(0, 273, 0, 70)

        SectionCap.Name = "SectionCap"
        SectionCap.Parent = FrameSec
        SectionCap.SortOrder = Enum.SortOrder.LayoutOrder
        SectionCap.VerticalAlignment = Enum.VerticalAlignment.Top
        SectionCap.HorizontalAlignment = Enum.HorizontalAlignment.Left
        SectionCap.FillDirection =Enum.FillDirection.Vertical
        SectionCap.Padding = UDim.new(0, 10)

        -- Scripts:

        local function KVETQ_fake_script() -- Section.LocalScript 
            local script = Instance.new('LocalScript', Section)
        
            local function updateSectionFrame()
                local innerSc = script.Parent.Frame.SectionCap.AbsoluteContentSize
                script.Parent.Frame.Size = UDim2.new(1, 0, 0, innerSc.Y)
                local frameSc = script.Parent.UIListLayout.AbsoluteContentSize
                script.Parent.Size = UDim2.new(0, 273, 0, frameSc.Y)
            end
            
            while wait() do
                updateSectionFrame()
            end
            
        end
        coroutine.wrap(KVETQ_fake_script)()

        return FrameSec
    end

    function MainLib:Button(config)
        local callback = config.callback or function() end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then warn('MU UI Lib: tab or section specified not found') return end

        local Button = Instance.new("ImageLabel")
        local buttonn = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")

        --Properties:

        Button.Name = "Button"
        Button.Parent = TabParent
        Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Button.BackgroundTransparency = 1.000
        Button.Position = UDim2.new(0.106628239, 0, 0.0204403643, 0)
        Button.Size = UDim2.new(0, 273, 0, 27)
        Button.Image = "rbxassetid://3570695787"
        Button.ImageColor3 = Color3.fromRGB(35, 35, 35)
        Button.ScaleType = Enum.ScaleType.Slice
        Button.SliceCenter = Rect.new(100, 100, 100, 100)
        Button.SliceScale = 0.070

        buttonn.Name = "buttonn"
        buttonn.Parent = Button
        buttonn.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
        buttonn.ClipsDescendants = true
        buttonn.Size = UDim2.new(0, 273, 0, 27)
        buttonn.Font = Enum.Font.SourceSansSemibold
        buttonn.Text = " "..config.name
        buttonn.TextColor3 = Color3.fromRGB(255, 255, 255)
        buttonn.TextSize = 20.000
        buttonn.TextWrapped = true
        buttonn.TextXAlignment = Enum.TextXAlignment.Left

        UICorner.Parent = buttonn

        -- Scripts:

        local function MRJTZG_fake_script() -- buttonn.LocalScript 
            local script = Instance.new('LocalScript', buttonn)

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
            
            script.Parent.MouseButton1Click:Connect(function()
                CircleAnim(script.Parent)
                pcall(callback)
            end)
        end
        coroutine.wrap(MRJTZG_fake_script)()
    end

    function MainLib:Toggle(config)
        local callback = config.callback or function() end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then warn('MU UI Lib: tab or section specified not found') return end

        local Toggle = Instance.new("ImageLabel")
        local Toggle_2 = Instance.new("TextLabel")
        local UICorner = Instance.new("UICorner")
        local SwitchH = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local Toggle_3 = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local Hitbox = Instance.new("TextButton")

        --Properties:

        Toggle.Name = "Toggle"
        Toggle.Parent = TabParent
        Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Toggle.BackgroundTransparency = 1.000
        Toggle.Position = UDim2.new(0.106628239, 0, 0.0204403643, 0)
        Toggle.Size = UDim2.new(0, 273, 0, 27)
        Toggle.Image = "rbxassetid://3570695787"
        Toggle.ImageColor3 = Color3.fromRGB(35, 35, 35)
        Toggle.ScaleType = Enum.ScaleType.Slice
        Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
        Toggle.SliceScale = 0.070

        Toggle_2.Name = "Toggle"
        Toggle_2.Parent = Toggle
        Toggle_2.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
        Toggle_2.Size = UDim2.new(0, 273, 0, 27)
        Toggle_2.Font = Enum.Font.SourceSansSemibold
        Toggle_2.Text = " "..config.name
        Toggle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        Toggle_2.TextSize = 20.000
        Toggle_2.TextXAlignment = Enum.TextXAlignment.Left

        UICorner.Parent = Toggle_2

        SwitchH.Name = "SwitchH"
        SwitchH.Parent = Toggle_2
        SwitchH.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        SwitchH.Position = UDim2.new(0.785001218, 0, 0.152977839, 0)
        SwitchH.Size = UDim2.new(0, 50, 0, 18)

        UICorner_2.Parent = SwitchH

        Toggle_3.Name = "Toggle"
        Toggle_3.Parent = SwitchH
        Toggle_3.BackgroundColor3 = Color3.fromRGB(131, 131, 131)
        Toggle_3.Position = UDim2.new(-0.00504213572, 0, 0, 0)
        Toggle_3.Size = UDim2.new(0, 26, 0, 17)

        UICorner_3.CornerRadius = UDim.new(0, 15)
        UICorner_3.Parent = Toggle_3

        Hitbox.Name = "Hitbox"
        Hitbox.Parent = SwitchH
        Hitbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hitbox.BackgroundTransparency = 0.990
        Hitbox.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Hitbox.Size = UDim2.new(0, 50, 0, 18)
        Hitbox.Font = Enum.Font.SourceSans
        Hitbox.Text = ""
        Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
        Hitbox.TextSize = 14.000

        -- Scripts:

        local function DDPBZ_fake_script() -- SwitchH.LocalScript 
            local script = Instance.new('LocalScript', SwitchH)

            local toggle = false
            
            script.Parent.Hitbox.MouseButton1Click:Connect(function()
                if toggle ~= false then
                    if toggle == true then
                        toggle = false
                        script.Parent.Toggle:TweenPosition(UDim2.new(-0.005, 0,0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                        game:GetService("TweenService"):Create(script.Parent.Toggle, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            BackgroundColor3 = Color3.fromRGB(131, 131, 131)
                        }):Play()
                        --false
                        pcall(callback,toggle)
                    end
                    return
                end
                toggle = true
                script.Parent.Toggle:TweenPosition(UDim2.new(0.475, 0,0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                game:GetService("TweenService"):Create(script.Parent.Toggle, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    BackgroundColor3 = Color3.fromRGB(53, 167, 0)
                }):Play()
                --true
                pcall(callback,toggle)
            end)
        end
        coroutine.wrap(DDPBZ_fake_script)()
    end

    function MainLib:Slider(config)
        local callback = config.callback or function() end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then warn('MU UI Lib: tab or section specified not found') return end

        local Slider = Instance.new("ImageLabel")
        local SliderText = Instance.new("TextLabel")
        local SliderButton = Instance.new("TextButton")
        local SliderButton_Roundify_7px = Instance.new("ImageLabel")
        local SliderInner = Instance.new("ImageLabel")
        local Cuantity = Instance.new("TextLabel")

        --Properties:

        Slider.Name = "Slider"
        Slider.Parent = TabParent
        Slider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Slider.BackgroundTransparency = 1.000
        Slider.Position = UDim2.new(0.106628239, 0, 0.142372876, 0)
        Slider.Size = UDim2.new(0, 273, 0, 42)
        Slider.Image = "rbxassetid://3570695787"
        Slider.ImageColor3 = Color3.fromRGB(35, 35, 35)
        Slider.ScaleType = Enum.ScaleType.Slice
        Slider.SliceCenter = Rect.new(100, 100, 100, 100)
        Slider.SliceScale = 0.070

        SliderText.Name = "SliderText"
        SliderText.Parent = Slider
        SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderText.BackgroundTransparency = 1.000
        SliderText.Position = UDim2.new(0, 0, 0.586277843, 0)
        SliderText.Size = UDim2.new(0, 273, 0, 27)
        SliderText.Font = Enum.Font.SourceSansSemibold
        SliderText.Text = config.name
        SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderText.TextSize = 20.000
        SliderText.TextXAlignment = Enum.TextXAlignment.Left

        SliderButton.Name = "SliderButton"
        SliderButton.Parent = Slider
        SliderButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        SliderButton.BackgroundTransparency = 1.000
        SliderButton.BorderSizePixel = 0
        SliderButton.Size = UDim2.new(0, 273, 0, 27)
        SliderButton.Font = Enum.Font.SourceSans
        SliderButton.Text = ""
        SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        SliderButton.TextSize = 14.000

        SliderButton_Roundify_7px.Name = "SliderButton_Roundify_7px"
        SliderButton_Roundify_7px.Parent = SliderButton
        SliderButton_Roundify_7px.Active = true
        SliderButton_Roundify_7px.AnchorPoint = Vector2.new(0.5, 0.5)
        SliderButton_Roundify_7px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderButton_Roundify_7px.BackgroundTransparency = 1.000
        SliderButton_Roundify_7px.Position = UDim2.new(0.5, 0, 0.5, 0)
        SliderButton_Roundify_7px.Selectable = true
        SliderButton_Roundify_7px.Size = UDim2.new(0, 273, 0, 27)
        SliderButton_Roundify_7px.Image = "rbxassetid://3570695787"
        SliderButton_Roundify_7px.ImageColor3 = Color3.fromRGB(30, 30, 30)
        SliderButton_Roundify_7px.ScaleType = Enum.ScaleType.Slice
        SliderButton_Roundify_7px.SliceCenter = Rect.new(100, 100, 100, 100)
        SliderButton_Roundify_7px.SliceScale = 0.070

        SliderInner.Name = "SliderInner"
        SliderInner.Parent = SliderButton_Roundify_7px
        SliderInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderInner.BackgroundTransparency = 1.000
        SliderInner.Size = UDim2.new(0, 273, 0, 27)
        SliderInner.Image = "rbxassetid://3570695787"
        SliderInner.ImageColor3 = Color3.fromRGB(86, 86, 86)
        SliderInner.ScaleType = Enum.ScaleType.Slice
        SliderInner.SliceCenter = Rect.new(100, 100, 100, 100)
        SliderInner.SliceScale = 0.070

        Cuantity.Name = "Cuantity"
        Cuantity.Parent = SliderButton
        Cuantity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Cuantity.BackgroundTransparency = 1.000
        Cuantity.Size = UDim2.new(0, 273, 0, 27)
        Cuantity.Font = Enum.Font.SourceSans
        Cuantity.Text = "0"
        Cuantity.TextColor3 = Color3.fromRGB(255, 255, 255)
        Cuantity.TextSize = 20.000

        -- Scripts:

        local function ZJPBA_fake_script() -- SliderButton.LocalScript 
            local script = Instance.new('LocalScript', SliderButton)

            local minvalue = config.min or 0
            local maxvalue = config.max or 100
            local def = config.def or 0
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value;
            local SB = script.Parent
            local SV = script.Parent.Cuantity
            local SF = script.Parent.SliderButton_Roundify_7px.SliderInner
            if def > maxvalue or minvalue < 0 then def = 0 end
            local SliderDef = math.clamp(def, minvalue, maxvalue)
            local DefaultScale =  (SliderDef - minvalue) / (maxvalue - minvalue)
            
            SF.Size = UDim2.fromScale(DefaultScale,1)
            SV.Text = def
            
            -----Main Code-----
            
            SB.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 273) * SF.AbsoluteSize.X) + tonumber(minvalue)) or 0
            
                print(Value)
            
                SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, 273), 0, 27)
                moveconnection = mouse.Move:Connect(function()
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 273) * SF.AbsoluteSize.X) + tonumber(minvalue))
                    SV.Text = Value
            
                    print(Value)
            
                    SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, 273), 0,27)
                end)
            
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 273) * SF.AbsoluteSize.X) + tonumber(minvalue))
            
                        print(Value)
            
                        SF.Size = UDim2.new(0, math.clamp(mouse.X - SF.AbsolutePosition.X, 0, 273), 0, 27)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
        end
        coroutine.wrap(ZJPBA_fake_script)()
    end

    function MainLib:TextBox(config)
        local callback = config.callback or function() end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then warn('MU UI Lib: tab or section specified not found') return end

        local TextBox = Instance.new("ImageLabel")
        local Text = Instance.new("TextLabel")
        local TextBoxx = Instance.new("TextBox")
        local UICorner = Instance.new("UICorner")

        --Properties:

        TextBox.Name = "TextBox"
        TextBox.Parent = TabParent
        TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        TextBox.BackgroundTransparency = 1.000
        TextBox.Position = UDim2.new(0.106628239, 0, 0.620338976, 0)
        TextBox.Size = UDim2.new(0, 273, 0, 43)
        TextBox.Image = "rbxassetid://3570695787"
        TextBox.ImageColor3 = Color3.fromRGB(35, 35, 35)
        TextBox.ScaleType = Enum.ScaleType.Slice
        TextBox.SliceCenter = Rect.new(100, 100, 100, 100)
        TextBox.SliceScale = 0.070

        Text.Name = "Text"
        Text.Parent = TextBox
        Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text.BackgroundTransparency = 1.000
        Text.Position = UDim2.new(0, 0, 0.616758287, 0)
        Text.Size = UDim2.new(0, 273, 0, 27)
        Text.Font = Enum.Font.SourceSansSemibold
        Text.Text = config.name
        Text.TextColor3 = Color3.fromRGB(255, 255, 255)
        Text.TextSize = 20.000
        Text.TextXAlignment = Enum.TextXAlignment.Left

        TextBoxx.Name = "TextBoxx"
        TextBoxx.Parent = TextBox
        TextBoxx.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
        TextBoxx.Size = UDim2.new(0, 273, 0, 27)
        TextBoxx.Font = Enum.Font.SourceSansSemibold
        TextBoxx.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
        TextBoxx.Text = ""
        TextBoxx.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBoxx.TextSize = 20.000

        UICorner.Parent = TextBoxx

        -- Scripts:

        local function VUSW_fake_script() -- TextBoxx.LocalScript 
            local script = Instance.new('LocalScript', TextBoxx)

            script.Parent.FocusLost:Connect(function(enter)
                if enter == true then
                    pcall(callback,TextBoxx.Text)
                end
            end)
        end
        coroutine.wrap(VUSW_fake_script)()
    end

    function MainLib:Bind(config)
        local callback = config.callback or function() end
        local Bindkey = config.key
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        if TabParent == nil then warn('MU UI Lib: tab or section specified not found') return end

        local Bind = Instance.new("ImageLabel")
        local Text = Instance.new("TextLabel")
        local Bindd = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")

        --Properties:

        Bind.Name = "Bind"
        Bind.Parent = TabParent
        Bind.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Bind.BackgroundTransparency = 1.000
        Bind.Position = UDim2.new(0.106628239, 0, 0.335593224, 0)
        Bind.Size = UDim2.new(0, 273, 0, 41)
        Bind.Image = "rbxassetid://3570695787"
        Bind.ImageColor3 = Color3.fromRGB(35, 35, 35)
        Bind.ScaleType = Enum.ScaleType.Slice
        Bind.SliceCenter = Rect.new(100, 100, 100, 100)
        Bind.SliceScale = 0.070

        Text.Name = "Text"
        Text.Parent = Bind
        Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text.BackgroundTransparency = 1.000
        Text.Position = UDim2.new(0, 0, 0.553485513, 0)
        Text.Size = UDim2.new(0, 273, 0, 27)
        Text.Font = Enum.Font.SourceSansSemibold
        Text.Text = config.name
        Text.TextColor3 = Color3.fromRGB(255, 255, 255)
        Text.TextSize = 20.000
        Text.TextWrapped = true
        Text.TextXAlignment = Enum.TextXAlignment.Left

        Bindd.Name = "Bindd"
        Bindd.Parent = Bind
        Bindd.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
        Bindd.Size = UDim2.new(0, 273, 0, 27)
        Bindd.Font = Enum.Font.SourceSansSemibold
        Bindd.Text = tostring(Bindkey):split(".")[3]
        Bindd.TextColor3 = Color3.fromRGB(255, 255, 255)
        Bindd.TextScaled = true
        Bindd.TextSize = 14.000
        Bindd.TextWrapped = true

        UICorner.Parent = Bindd

        -- Scripts:

        local function CNRWO_fake_script() -- Bindd.LocalScript 
            local script = Instance.new('LocalScript', Bindd)

            local WhitelistedType = {
                [Enum.UserInputType.MouseButton1] = "Mouse1";
                [Enum.UserInputType.MouseButton2] = "Mouse2";
                [Enum.UserInputType.MouseButton3] = "Mouse3";
            };
            local UIS = game:GetService("UserInputService")
            local Bind = config.key or Enum.KeyCode.B
            local Binding = false
            
            script.Parent.MouseButton1Click:Connect(function()
                local Connection;
                Binding = true
            
                script.Parent.Text = ". . .";
            
                Connection = UIS.InputBegan:Connect(function(i)
                    if WhitelistedType[i.UserInputType] then
                        script.Parent.Text = WhitelistedType[i.UserInputType];
                        Bind = i.UserInputType
                    elseif i.KeyCode ~= Enum.KeyCode.Unknown then
                        script.Parent.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
                        Bind = i.KeyCode
                    else
                        warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
                    end;
            
                    Connection:Disconnect();
                end);
            end);
            
            UIS.InputBegan:Connect(function(i)
                if Binding == true then
                    Binding = false
                    return;
                end
            
                if (Bind == i.UserInputType or Bind == i.KeyCode) then
                    pcall(callback)
                end;
            end);
        end
        coroutine.wrap(CNRWO_fake_script)()
    end

    function MainLib:Dropdown(config)
        local callback = config.callback or function() end
        local TabParent = FH:FindFirstChild(config.Parent) or config.Parent
        local optionsT = config.list
        if TabParent == nil then warn('MU UI Lib: tab or section specified not found') return end

        local Dropdown = Instance.new("ImageLabel")
        local Selection = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")
        local buts = Instance.new("ImageLabel")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")

        --Properties:

        Dropdown.Name = "Dropdown"
        Dropdown.Parent = TabParent
        Dropdown.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
        Dropdown.BackgroundTransparency = 1.000
        Dropdown.Position = UDim2.new(0.106628239, 0, 0.525423706, 0)
        Dropdown.Size = UDim2.new(0, 273, 0, 27)
        Dropdown.Image = "rbxassetid://3570695787"
        Dropdown.ImageColor3 = Color3.fromRGB(35, 35, 35)
        Dropdown.ScaleType = Enum.ScaleType.Slice
        Dropdown.SliceCenter = Rect.new(100, 100, 100, 100)
        Dropdown.SliceScale = 0.070

        Selection.Name = "Selection"
        Selection.Parent = Dropdown
        Selection.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
        Selection.BorderSizePixel = 0
        Selection.Position = UDim2.new(-0.00688883476, 0, -0.00731618796, 0)
        Selection.Size = UDim2.new(0, 273, 0, 27)
        Selection.Font = Enum.Font.SourceSansSemibold
        Selection.Text = config.name
        Selection.TextColor3 = Color3.fromRGB(255, 255, 255)
        Selection.TextSize = 20.000

        UICorner.Parent = Selection

        buts.Name = "buts"
        buts.Parent = Dropdown
        buts.AnchorPoint = Vector2.new(0.5, 0.5)
        buts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        buts.BackgroundTransparency = 1.000
        buts.ClipsDescendants = true
        buts.Position = UDim2.new(0.498860896, 0, 0.605758429, 0)
        buts.Size = UDim2.new(0, 230, 0, 0)
        buts.ZIndex = 2
        buts.Image = "rbxassetid://3570695787"
        buts.ImageColor3 = Color3.fromRGB(86, 86, 86)
        buts.ScaleType = Enum.ScaleType.Slice
        buts.SliceCenter = Rect.new(100, 100, 100, 100)
        buts.SliceScale = 0.070

        ScrollingFrame.Parent = buts
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollingFrame.BackgroundTransparency = 1.000
        ScrollingFrame.Position = UDim2.new(0, 0, 0.0125896838, 0)
        ScrollingFrame.Size = UDim2.new(0, 230, 0, 127)
        ScrollingFrame.ZIndex = 2
        ScrollingFrame.ScrollBarThickness = 6

        UIListLayout.Parent = ScrollingFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        for i,v in pairs(optionsT) do
            local TextButton = Instance.new("TextButton")
            TextButton.Parent = ScrollingFrame
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(0, 230, 0, 32)
            TextButton.ZIndex = 2
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = v
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 20.000
        end
        
        -- Scripts:
        
        local function updateSize(tab)
            local cS = tab.UIListLayout.AbsoluteContentSize

            game.TweenService:Create(tab, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
            }):Play()
        end

        local function AGUPU_fake_script() -- Dropdown.LocalScript 
            local script = Instance.new('LocalScript', Dropdown)
            
            local ddStat = false
            local debounce = false
            local RegSize = UDim2.new(0, 273,0, 154)
            local ClosedSize = UDim2.new(0, 273,0, 27)
            local butSize = UDim2.new(0, 230,0, 129)
            local choice = script.Parent.Selection
            local menu = script.Parent.buts
            
            updateSize(menu.ScrollingFrame)
            
            for i,v in pairs(menu.ScrollingFrame:GetChildren()) do
                if v:IsA("TextButton") then
                    v.MouseButton1Click:Connect(function()
                        local selection = v.Text
                        choice.Text = selection
                        pcall(callback,selection)
                    end)
                end
            end
            
            choice.MouseButton1Click:Connect(function()
                if not debounce and ddStat == true then
                    debounce = true
                    ddStat = false
                    
                    script.Parent:TweenSize(ClosedSize,Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                    menu:TweenSize(UDim2.new(0,230,0, 0),Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                    menu.Visible = false
                    wait(0.2)
                    debounce = false
                elseif not debounce and ddStat == false then
                    debounce = true
                    ddStat = true
                    
                    script.Parent:TweenSize(RegSize,Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2, true)
                    menu:TweenSize(butSize,Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.1, true)
                    wait(0.09)
                    menu.Visible = true
                    wait(0.2)
                    debounce = false
                end	
            end)
            
        end
        coroutine.wrap(AGUPU_fake_script)()
    end

    return MainLib
end

return sweetparadax
