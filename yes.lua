if not LPH_OBFUSCATED then
    LPH_NO_VIRTUALIZE = function(...)
        return (...)
    end
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    task.wait()
until game:GetService("Players") and game:GetService("CoreGui")
loadstring(game:HttpGet("https://pastebin.com/raw/tUUGAeaH", true))()

local BotsName = getgenv().BotsName
local MasterName = getgenv().MasterName
local LoadIn = getgenv().LoadIn
local BotFps = getgenv().BotFps
local PlayerFps = getgenv().PlayerFps
local BotAntiLag = getgenv().BotAntiLag
local PlayerAntiLag = getgenv().PlayerAntiLag
local AntiAntiCheat = getgenv().AntiAntiCheat
local AntiChatLog = getgenv().AntiChatLog
local ExecutorDetector =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl" or
    SONA_LOADED and "Sona" or
    identifyexecutor and "Script-Ware" or
    "Unknown Exploit (Not Recommended)"

local swarmplr = nil
local swarmnum = nil
local bangplr = nil
local localplr = game:GetService("Players").LocalPlayer
local BotsInteger = 0

local function filesupdate()
    if not isfolder("Extorius Bots") then
        makefolder("Extorius Bots")
    end
    if not isfile("Extorius Bots/master.txt") then
        writefile("Extorius Bots/master.txt", MasterName)
    end
    if not isfile("Extorius Bots/cursor.txt") then
        writefile("Extorius Bots/cursor.txt", "coming soon :)")
    end
    if not isfile("Extorius Bots/kick.txt") then
        writefile("Extorius Bots/kick.txt", "")
    end
    if not isfile("Extorius Bots/distance.txt") then
        writefile("Extorius Bots/distance.txt", "2")
    end
    if not isfile("Extorius Bots/enabled.txt") then
        writefile("Extorius Bots/enabled.txt", "")
        task.wait(.2)
        for i = 1, 50 do
            task.wait()
            appendfile("Extorius Bots/enabled.txt", BotsName .. tostring(i) .. "//Enabled" .. "+")
        end
    end
end
filesupdate()

local function checkbot(botname, botnumber)
    if localplr.Name:match(BotsName) then
        filesupdate()
        user = string.gsub(localplr.Name, "[^%-%d]", "")
        usernum = tonumber(user)
        list = tostring(readfile("Extorius Bots/enabled.txt"))
        list = string.split(list, "+")
        return string.gsub(list[usernum], localplr.Name .. "//", "")
    else
        filesupdate()
        list = tostring(readfile("Extorius Bots/enabled.txt"))
        list = string.split(list, "+")
        return string.gsub(list[botnumber], botname .. "//", "")
    end
end
local function checkdistance()
    filesupdate()
    return tonumber(readfile("Extorius Bots/distance.txt"))
end
local function masterplr()
    filesupdate()
    return tostring(readfile("Extorius Bots/master.txt"))
end
if lgVarsTbl then
    if localplr.Name == MasterName then
        for i = 1, 50 do
            setfpscap(PlayerFps)
            if PlayerAntiLag then
                game.Workspace.StreamingEnabled = false
            end
            task.wait()
        end
    end
end
if not localplr.Name:match(BotsName) then
    if localplr.Name == MasterName then
        setfpscap(PlayerFps)
        if PlayerAntiLag then
           game.Workspace.StreamingEnabled = false
        end

        local function updatebot(botname, botnumber, to)
            filesupdate()
            original = tostring(readfile("Extorius Bots/enabled.txt"))
            botname = botname
            botnumber = botnumber
            writefile(
                "Extorius Bots/enabled.txt",
                string.gsub(original, botname .. "//" .. checkbot(botname, botnumber), botname .. "//" .. to)
            )
        end
        -- Instances:

        local Load = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Welcome = Instance.new("TextLabel")
        local Description = Instance.new("TextLabel")
        local Options = Instance.new("Folder")
        local Yes = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local ImageButton = Instance.new("ImageButton")
        local UICorner_3 = Instance.new("UICorner")
        local ImageLabel = Instance.new("ImageLabel")
        local UIGradient = Instance.new("UIGradient")
        local No = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local ImageButton_2 = Instance.new("ImageButton")
        local UICorner_5 = Instance.new("UICorner")
        local ImageLabel_2 = Instance.new("ImageLabel")
        local UIGradient_2 = Instance.new("UIGradient")
        local Timer = Instance.new("TextLabel")

        --Properties:

        Load.Name = "Load"
        Load.Parent = game:GetService("CoreGui")
        Load.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        Frame.Parent = Load
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        Frame.BorderSizePixel = 0
        Frame.ClipsDescendants = true
        Frame.Position = UDim2.new(1.20000005, 0, 0.91900003, 0)
        Frame.Size = UDim2.new(0, 250, 0, 70)

        UICorner.Parent = Frame

        Welcome.Name = "Welcome"
        Welcome.Parent = Frame
        Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Welcome.BackgroundTransparency = 1.000
        Welcome.Position = UDim2.new(0.100000009, 0, 0, 2)
        Welcome.Size = UDim2.new(0, 200, 0, 16)
        Welcome.Font = Enum.Font.GothamBold
        Welcome.Text = "Welcome"
        Welcome.TextColor3 = Color3.fromRGB(230, 230, 230)
        Welcome.TextSize = 14.000
        Welcome.TextYAlignment = Enum.TextYAlignment.Bottom

        Description.Name = "Description"
        Description.Parent = Frame
        Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Description.BackgroundTransparency = 1.000
        Description.Position = UDim2.new(0.100000009, 0, 0.270000011, 0)
        Description.Size = UDim2.new(0, 200, 0, 24)
        Description.Font = Enum.Font.Gotham
        Description.Text = "Would you like to load in Extorius Bots?"
        Description.TextColor3 = Color3.fromRGB(212, 212, 212)
        Description.TextSize = 12.000
        Description.TextWrapped = true

        Options.Name = "Options"
        Options.Parent = Frame

        Yes.Name = "Yes"
        Yes.Parent = Options
        Yes.BackgroundColor3 = Color3.fromRGB(1, 8, 3)
        Yes.BorderSizePixel = 0
        Yes.Position = UDim2.new(0.339536577, 0, 0.605022073, 0)
        Yes.Size = UDim2.new(0, 35, 0, 24)

        UICorner_2.CornerRadius = UDim.new(0, 5)
        UICorner_2.Parent = Yes

        ImageButton.Parent = Yes
        ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageButton.BackgroundColor3 = Color3.fromRGB(33, 195, 65)
        ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageButton.Size = UDim2.new(0, 33, 0, 22)
        ImageButton.Image = "rbxassetid://11153332262"
        ImageButton.ImageTransparency = 1.000

        UICorner_3.CornerRadius = UDim.new(0, 5)
        UICorner_3.Parent = ImageButton

        ImageLabel.Parent = ImageButton
        ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageLabel.Size = UDim2.new(0, 22, 0, 22)
        ImageLabel.Image = "rbxassetid://11153362248"
        ImageLabel.ImageColor3 = Color3.fromRGB(33, 195, 65)

        UIGradient.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(32, 193, 63)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
        }
        UIGradient.Rotation = -90
        UIGradient.Parent = ImageButton

        No.Name = "No"
        No.Parent = Options
        No.BackgroundColor3 = Color3.fromRGB(1, 8, 3)
        No.BorderSizePixel = 0
        No.Position = UDim2.new(0.519536614, 0, 0.605022073, 0)
        No.Size = UDim2.new(0, 35, 0, 24)

        UICorner_4.CornerRadius = UDim.new(0, 5)
        UICorner_4.Parent = No

        ImageButton_2.Parent = No
        ImageButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageButton_2.BackgroundColor3 = Color3.fromRGB(193, 40, 42)
        ImageButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageButton_2.Size = UDim2.new(0, 33, 0, 22)
        ImageButton_2.Image = "rbxassetid://11153332262"
        ImageButton_2.ImageTransparency = 1.000

        UICorner_5.CornerRadius = UDim.new(0, 5)
        UICorner_5.Parent = ImageButton_2

        ImageLabel_2.Parent = ImageButton_2
        ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel_2.BackgroundTransparency = 1.000
        ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageLabel_2.Size = UDim2.new(0, 22, 0, 22)
        ImageLabel_2.Image = "rbxassetid://11153398007"
        ImageLabel_2.ImageColor3 = Color3.fromRGB(33, 195, 65)

        UIGradient_2.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(193, 40, 42)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
        }
        UIGradient_2.Rotation = -90
        UIGradient_2.Parent = ImageButton_2

        Timer.Name = "Timer"
        Timer.Parent = Frame
        Timer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Timer.BackgroundTransparency = 1.000
        Timer.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Timer.Position = UDim2.new(0.811999977, 0, 0.742857158, 0)
        Timer.Size = UDim2.new(0, 40, 0, 14)
        Timer.Font = Enum.Font.Unknown
        Timer.Text = "Loading.."
        Timer.TextColor3 = Color3.fromRGB(200, 200, 200)
        Timer.TextSize = 10.000
        Timer.TextXAlignment = Enum.TextXAlignment.Left

        -- Scripts:

        local function XFSYJ_fake_script() -- Frame.Logic
            local script = Instance.new("LocalScript", Frame)

            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            task.wait(2)

            local AncestorFrame = script.Parent
            local Yes = AncestorFrame.Options["Yes"]
            local No = AncestorFrame.Options["No"]
            local Timer = AncestorFrame["Timer"]
            local InputDetected = false

            local TweenService = game:GetService("TweenService")
            local targetPosition = UDim2.new(.903, 0, 0.919, 0)
            local tweenInfo = TweenInfo.new(.5)
            local Tween = TweenService:Create(AncestorFrame, tweenInfo, {Position = targetPosition})
            Tween:Play()

            Yes.ImageButton.MouseButton1Click:Connect(
                function()
                    InputDetected = true
                    Yes.Visible = false
                    No.Visible = false
                    AncestorFrame.Welcome.Visible = false
                    AncestorFrame.Description.Visible = false
                    local TweenService = game:GetService("TweenService")
                    local targetPosition = UDim2.new(0, 250, 0, 2)
                    local tweenInfo = TweenInfo.new(.5)
                    local Tween = TweenService:Create(AncestorFrame, tweenInfo, {Size = targetPosition})
                    Tween:Play()
                    Tween.Completed:Wait()
                    AncestorFrame.Parent.Parent.Main.Enabled = true
                    AncestorFrame:Destroy()
                end
            )
            No.ImageButton.MouseButton1Click:Connect(
                function()
                    InputDetected = true
                    local TweenService = game:GetService("TweenService")
                    local targetPosition = UDim2.new(1.2, 0, 0.919, 0)
                    local tweenInfo = TweenInfo.new(.5)
                    local Tween = TweenService:Create(AncestorFrame, tweenInfo, {Position = targetPosition})
                    Tween:Play()
                    Tween.Completed:Wait()
                    AncestorFrame.Parent.Parent.Main:Destroy()
                    AncestorFrame:Destroy()
                end
            )

            num = 16
            while wait(1) do
                if not InputDetected then
                    num = num - 1
                    Timer.Text = num .. ".."
                    if num == 0 then
                        AncestorFrame.Parent.Parent.Main:Destroy()
                        AncestorFrame:Destroy()
                        break
                    end
                else
                    break
                end
            end
        end
        coroutine.wrap(XFSYJ_fake_script)()

        -- Instances:

        local Main = Instance.new("ScreenGui")
        local ambientShadow = Instance.new("ImageLabel")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Top = Instance.new("Folder")
        local Name = Instance.new("TextLabel")
        local CopyLink = Instance.new("TextButton")
        local Manage = Instance.new("Folder")
        local Manage_2 = Instance.new("TextLabel")
        local Bots = Instance.new("Folder")
        local BotsList = Instance.new("ScrollingFrame")
        local UIGridLayout = Instance.new("UIGridLayout")
        local Border = Instance.new("Frame")
        local Master = Instance.new("Folder")
        local Name_2 = Instance.new("TextLabel")
        local ToggleButton = Instance.new("ImageButton")

        --Properties:
        
        Main.Name = "Main"
        Main.Enabled = false
        Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Main.Parent = game:GetService("CoreGui")

        ambientShadow.Name = "ambientShadow"
        ambientShadow.Parent = Main
        ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadow.BackgroundTransparency = 1.000
        ambientShadow.ClipsDescendants = true
        ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
        ambientShadow.Size = UDim2.new(0, 620, 0, 525)
        ambientShadow.ZIndex = 0
        ambientShadow.Image = "rbxassetid://1316045217"
        ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadow.ImageTransparency = 0.500
        ambientShadow.ScaleType = Enum.ScaleType.Slice
        ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

        Frame.Parent = ambientShadow
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Frame.ClipsDescendants = true
        Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        Frame.Size = UDim2.new(0, 600, 0, 500)

        UICorner.Parent = Frame

        Top.Name = "Top"
        Top.Parent = Frame

        Name.Name = "Name"
        Name.Parent = Top
        Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Name.BackgroundTransparency = 1.000
        Name.Position = UDim2.new(0.333333343, 0, 0.0199999996, 0)
        Name.Size = UDim2.new(0, 200, 0, 26)
        Name.Font = Enum.Font.GothamBold
        Name.Text = "Extorius Bots"
        Name.TextColor3 = Color3.fromRGB(220, 220, 220)
        Name.TextSize = 26.000
        Name.TextYAlignment = Enum.TextYAlignment.Top

        CopyLink.Name = "CopyLink"
        CopyLink.Parent = Top
        CopyLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        CopyLink.BackgroundTransparency = 1.000
        CopyLink.Position = UDim2.new(0.333333343, 0, 0.0719999969, 0)
        CopyLink.Size = UDim2.new(0, 200, 0, 12)
        CopyLink.Font = Enum.Font.Unknown
        CopyLink.Text = "http://extorius.ezyro.com"
        CopyLink.TextColor3 = Color3.fromRGB(193, 193, 193)
        CopyLink.TextSize = 8.000

        Manage.Name = "Manage"
        Manage.Parent = Frame

        Manage_2.Name = "Manage"
        Manage_2.Parent = Manage
        Manage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Manage_2.BackgroundTransparency = 1.000
        Manage_2.Position = UDim2.new(0.333333343, 0, 0.239999995, 0)
        Manage_2.Size = UDim2.new(0, 200, 0, 26)
        Manage_2.Font = Enum.Font.GothamBold
        Manage_2.Text = "Manage"
        Manage_2.TextColor3 = Color3.fromRGB(220, 220, 220)
        Manage_2.TextSize = 26.000
        Manage_2.TextYAlignment = Enum.TextYAlignment.Top

        Bots.Name = "Bots"
        Bots.Parent = Manage

        BotsList.Name = "BotsList"
        BotsList.Parent = Bots
        BotsList.Active = true
        BotsList.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        BotsList.BorderSizePixel = 0
        BotsList.Position = UDim2.new(0.0416666679, 0, 0.462000012, 0)
        BotsList.Size = UDim2.new(0, 550, 0, 244)
        BotsList.BottomImage = ""
        BotsList.MidImage = ""
        BotsList.ScrollBarThickness = 0
        BotsList.TopImage = ""

        UIGridLayout.Parent = BotsList
        UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIGridLayout.CellSize = UDim2.new(0, 540, 0, 50)

        Border.Name = "Border"
        Border.Parent = Bots
        Border.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        Border.BorderSizePixel = 0
        Border.Position = UDim2.new(0.0500000007, 0, 0.451999992, 0)
        Border.Size = UDim2.new(0, 550, 0, 5)

        Master.Name = "Master"
        Master.Parent = Manage

        Name_2.Name = "Name"
        Name_2.Parent = Master
        Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Name_2.BackgroundTransparency = 1.000
        Name_2.Position = UDim2.new(0.33, 0, 0.326000005, 0)
        Name_2.Size = UDim2.new(0, 200, 0, 20)
        Name_2.Font = Enum.Font.Gotham
        Name_2.Text = tostring(readfile("Extorius Bots/master.txt"))
        Name_2.TextColor3 = Color3.fromRGB(210, 210, 210)
        Name_2.TextSize = 20.000
        Name_2.TextXAlignment = Enum.TextXAlignment.Center

        ToggleButton.Name = "ToggleButton"
        ToggleButton.Parent = Frame
        ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleButton.BackgroundTransparency = 1.000
        ToggleButton.Position = UDim2.new(0.0266666673, 0, 0.0199999996, 0)
        ToggleButton.Size = UDim2.new(0, 26, 0, 26)
        ToggleButton.Image = "rbxassetid://11153398007"

        -- Scripts:

        local function MHQMOPW_fake_script() -- ambientShadow.Draggable
            local script = Instance.new("LocalScript", ambientShadow)

            local UserInputService = game:GetService("UserInputService")

            local gui = script.Parent

            local dragging
            local dragInput
            local dragStart
            local startPos

            local function update(input)
                local delta = input.Position - dragStart
                gui.Position =
                    UDim2.new(
                    startPos.X.Scale,
                    startPos.X.Offset + delta.X,
                    startPos.Y.Scale,
                    startPos.Y.Offset + delta.Y
                )
            end

            gui.InputBegan:Connect(
                function(input)
                    if
                        input.UserInputType == Enum.UserInputType.MouseButton1 or
                            input.UserInputType == Enum.UserInputType.Touch
                     then
                        dragging = true
                        dragStart = input.Position
                        startPos = gui.Position

                        input.Changed:Connect(
                            function()
                                if input.UserInputState == Enum.UserInputState.End then
                                    dragging = false
                                end
                            end
                        )
                    end
                end
            )

            gui.InputChanged:Connect(
                function(input)
                    if
                        input.UserInputType == Enum.UserInputType.MouseMovement or
                            input.UserInputType == Enum.UserInputType.Touch
                     then
                        dragInput = input
                    end
                end
            )

            UserInputService.InputChanged:Connect(
                function(input)
                    if input == dragInput and dragging then
                        update(input)
                    end
                end
            )
        end
        coroutine.wrap(MHQMOPW_fake_script)()
        local function QEVEQKN_fake_script() -- ambientShadow.Logic
            local script = Instance.new("LocalScript", ambientShadow)

            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat
                task.wait()
            until game:GetService("Players")
            local UserInputService = game:GetService("UserInputService")
            local AncestorFrame = script.Parent
            local BotsList = script.Parent.Frame.Manage.Bots.BotsList
            local Toggle = script.Parent.Frame.ToggleButton
            local BotsTable = {}
            local Hidden = false
            local Players = game:GetService("Players")
            local function SortTable()
                table.sort(
                    BotsTable,
                    function(a, b)
                        return a:lower() < b:lower()
                    end
                )
            end
            local function GetAvatar(userid)
                local thumbType = Enum.ThumbnailType.HeadShot
                local thumbSize = Enum.ThumbnailSize.Size420x420
                local content, isReady = Players:GetUserThumbnailAsync(userid, thumbType, thumbSize)
                return content
            end
            local function AddProfile(botname, botnumber, botuserid)
                local BotProfile = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local Avatar = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local UIGradient = Instance.new("UIGradient")
                local ImageLabel = Instance.new("ImageLabel")
                local UICorner_3 = Instance.new("UICorner")
                local Username = Instance.new("TextLabel")
                local Number = Instance.new("TextLabel")
                local Configure = Instance.new("Folder")
                local No = Instance.new("Frame")
                local UICorner_4 = Instance.new("UICorner")
                local ImageButton = Instance.new("ImageButton")
                local UICorner_5 = Instance.new("UICorner")
                local ImageLabel_2 = Instance.new("ImageLabel")
                local UIGradient_2 = Instance.new("UIGradient")
                local Yes = Instance.new("Frame")
                local UICorner_6 = Instance.new("UICorner")
                local ImageButton_2 = Instance.new("ImageButton")
                local UICorner_7 = Instance.new("UICorner")
                local ImageLabel_3 = Instance.new("ImageLabel")
                local UIGradient_3 = Instance.new("UIGradient")
                local Enabled = Instance.new("TextLabel")
                local Kick = Instance.new("Frame")
                local UICorner_8 = Instance.new("UICorner")
                local ImageButton_3 = Instance.new("ImageButton")
                local UICorner_9 = Instance.new("UICorner")
                local ImageLabel_4 = Instance.new("ImageLabel")
                local UIGradient_4 = Instance.new("UIGradient")
                local TextLabel = Instance.new("TextLabel")

                --Properties:

                BotProfile.Name = botname
                BotProfile.Parent = BotsList
                BotProfile.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                BotProfile.Size = UDim2.new(0, 100, 0, 100)

                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = BotProfile

                Avatar.Name = "Avatar"
                Avatar.Parent = BotProfile
                Avatar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Avatar.ClipsDescendants = true
                Avatar.Position = UDim2.new(0.0130000003, 0, 0.0399999991, 0)
                Avatar.Size = UDim2.new(0, 45, 0, 45)

                UICorner_2.CornerRadius = UDim.new(1, 0)
                UICorner_2.Parent = Avatar

                UIGradient.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(170, 170, 255)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 255, 255))
                }
                UIGradient.Rotation = -30
                UIGradient.Parent = Avatar

                ImageLabel.Parent = Avatar
                ImageLabel.BackgroundTransparency = 1
                ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
                ImageLabel.Size = UDim2.new(0, 40, 0, 40)
                userid = botuserid
                ImageLabel.Image = GetAvatar(userid)

                UICorner_3.CornerRadius = UDim.new(1, 0)
                UICorner_3.Parent = ImageLabel

                Username.Name = "Username"
                Username.Parent = BotProfile
                Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Username.BackgroundTransparency = 1.000
                Username.Position = UDim2.new(0.114814818, 0, 0.0799999982, 0)
                Username.Size = UDim2.new(0, 240, 0, 18)
                Username.Font = Enum.Font.GothamBold
                Username.Text = botname
                Username.TextColor3 = Color3.fromRGB(220, 220, 220)
                Username.TextSize = 18.000
                Username.TextXAlignment = Enum.TextXAlignment.Left
                Username.TextYAlignment = Enum.TextYAlignment.Top

                Number.Name = "Number"
                Number.Parent = BotProfile
                Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Number.BackgroundTransparency = 1.000
                Number.Position = UDim2.new(0.118000001, 0, 0.479999989, 0)
                Number.Size = UDim2.new(0, 127, 0, 20)
                Number.Font = Enum.Font.GothamBold
                Number.Text = botnumber
                Number.TextColor3 = Color3.fromRGB(200, 200, 200)
                Number.TextSize = 14.000
                Number.TextXAlignment = Enum.TextXAlignment.Left
                Number.TextYAlignment = Enum.TextYAlignment.Top

                Configure.Name = "Configure"
                Configure.Parent = BotProfile

                No.Name = "No"
                No.Parent = Configure
                No.BackgroundColor3 = Color3.fromRGB(1, 8, 3)
                No.BorderSizePixel = 0
                No.Position = UDim2.new(0.907000005, 0, 0.264999986, 0)
                No.Size = UDim2.new(0, 35, 0, 24)

                UICorner_4.CornerRadius = UDim.new(0, 5)
                UICorner_4.Parent = No

                ImageButton.Parent = No
                ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageButton.BackgroundColor3 = Color3.fromRGB(193, 40, 42)
                ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
                ImageButton.Size = UDim2.new(0, 33, 0, 22)
                ImageButton.Image = "rbxassetid://11153332262"
                ImageButton.ImageTransparency = 1.000

                UICorner_5.CornerRadius = UDim.new(0, 5)
                UICorner_5.Parent = ImageButton

                ImageLabel_2.Parent = ImageButton
                ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel_2.BackgroundTransparency = 1.000
                ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                ImageLabel_2.Size = UDim2.new(0, 22, 0, 22)
                ImageLabel_2.Image = "rbxassetid://11153398007"
                ImageLabel_2.ImageColor3 = Color3.fromRGB(33, 195, 65)

                UIGradient_2.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(193, 40, 42)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
                }
                UIGradient_2.Rotation = -90
                UIGradient_2.Parent = ImageButton

                Yes.Name = "Yes"
                Yes.Parent = Configure
                Yes.BackgroundColor3 = Color3.fromRGB(1, 8, 3)
                Yes.BorderSizePixel = 0
                Yes.Position = UDim2.new(0.828425467, 0, 0.265022069, 0)
                Yes.Size = UDim2.new(0, 35, 0, 24)

                UICorner_6.CornerRadius = UDim.new(0, 5)
                UICorner_6.Parent = Yes

                ImageButton_2.Parent = Yes
                ImageButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageButton_2.BackgroundColor3 = Color3.fromRGB(33, 195, 65)
                ImageButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                ImageButton_2.Size = UDim2.new(0, 33, 0, 22)
                ImageButton_2.Image = "rbxassetid://11153332262"
                ImageButton_2.ImageTransparency = 1.000

                UICorner_7.CornerRadius = UDim.new(0, 5)
                UICorner_7.Parent = ImageButton_2

                ImageLabel_3.Parent = ImageButton_2
                ImageLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel_3.BackgroundTransparency = 1.000
                ImageLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                ImageLabel_3.Size = UDim2.new(0, 22, 0, 22)
                ImageLabel_3.Image = "rbxassetid://11153362248"
                ImageLabel_3.ImageColor3 = Color3.fromRGB(33, 195, 65)

                UIGradient_3.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(32, 193, 63)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
                }
                UIGradient_3.Rotation = -90
                UIGradient_3.Parent = ImageButton_2

                Enabled.Name = "Enabled"
                Enabled.Parent = Configure
                Enabled.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Enabled.BackgroundTransparency = 1.000
                Enabled.Position = UDim2.new(0.503703654, 0, 0.285021961, 0)
                Enabled.Size = UDim2.new(0, 98, 0, 23)
                Enabled.Font = Enum.Font.Unknown
                Enabled.Text = checkbot(botname, botnumber)
                Enabled.TextSize = 10.000
                Enabled.TextXAlignment = Enum.TextXAlignment.Right
                if Enabled.Text == "Enabled" then
                    Enabled.TextColor3 = Color3.fromRGB(26, 184, 53)
                else
                    Enabled.TextColor3 = Color3.fromRGB(193, 40, 42)
                end

                Kick.Name = "Kick"
                Kick.Parent = Configure
                Kick.BackgroundColor3 = Color3.fromRGB(1, 8, 3)
                Kick.BorderSizePixel = 0
                Kick.Position = UDim2.new(0.699999988, 0, 0.264999986, 0)
                Kick.Size = UDim2.new(0, 63, 0, 24)

                UICorner_8.CornerRadius = UDim.new(0, 5)
                UICorner_8.Parent = Kick

                ImageButton_3.Parent = Kick
                ImageButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageButton_3.BackgroundColor3 = Color3.fromRGB(38, 108, 193)
                ImageButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                ImageButton_3.Size = UDim2.new(0, 61, 0, 22)
                ImageButton_3.Image = "rbxassetid://11153332262"
                ImageButton_3.ImageTransparency = 1.000

                UICorner_9.CornerRadius = UDim.new(0, 5)
                UICorner_9.Parent = ImageButton_3

                ImageLabel_4.Parent = ImageButton_3
                ImageLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel_4.BackgroundTransparency = 1.000
                ImageLabel_4.Position = UDim2.new(0.219999999, 0, 0.5, 0)
                ImageLabel_4.Size = UDim2.new(0, 20, 0, 20)
                ImageLabel_4.Image = "rbxassetid://11157681222"
                ImageLabel_4.ImageColor3 = Color3.fromRGB(33, 195, 65)

                UIGradient_4.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(38, 108, 193)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
                }
                UIGradient_4.Rotation = -90
                UIGradient_4.Parent = ImageButton_3

                TextLabel.Parent = ImageButton_3
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.Position = UDim2.new(0.38393414, 0, -0.0454545468, 0)
                TextLabel.Size = UDim2.new(0, 37, 0, 24)
                TextLabel.Font = Enum.Font.Gotham
                TextLabel.Text = "Kick"
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000

                ImageButton.MouseButton1Click:Connect(
                    function()
                        Enabled.Text = "Disabled"
                        Enabled.TextColor3 = Color3.fromRGB(193, 40, 42)
                        to = "Disabled"
                        botname = botname
                        botnumber = botnumber
                        updatebot(botname, botnumber, to)
                    end
                )
                ImageButton_2.MouseButton1Click:Connect(
                    function()
                        Enabled.Text = "Enabled"
                        Enabled.TextColor3 = Color3.fromRGB(33, 195, 65)
                        to = "Enabled"
                        botname = botname
                        botnumber = botnumber
                        updatebot(botname, botnumber, to)
                    end
                )
                ImageButton_3.MouseButton1Click:Connect(
                    function()
                        filesupdate()
                        writefile("Extorius Bots/kick.txt", botname)
                    end
                )
            end
            local function notify(title, description)
                local Frame = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local Title = Instance.new("TextLabel")
                local Description = Instance.new("TextLabel")

                --Properties:

                Frame.Parent = AncestorFrame.Parent
                Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Frame.BorderSizePixel = 0
                Frame.ClipsDescendants = true
                Frame.Position = UDim2.new(1.20000005, 0, 0.91900003, 0)
                Frame.Size = UDim2.new(0, 250, 0, 70)

                UICorner.Parent = Frame

                Title.Name = "Title"
                Title.Parent = Frame
                Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0.100000009, 0, 0, 2)
                Title.Size = UDim2.new(0, 200, 0, 16)
                Title.Font = Enum.Font.GothamBold
                Title.Text = title
                Title.TextColor3 = Color3.fromRGB(230, 230, 230)
                Title.TextSize = 14.000
                Title.TextYAlignment = Enum.TextYAlignment.Bottom

                Description.Name = "Description"
                Description.Parent = Frame
                Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Description.BackgroundTransparency = 1.000
                Description.Position = UDim2.new(0.100000009, 0, 0.270000011, 0)
                Description.Size = UDim2.new(0, 200, 0, 24)
                Description.Font = Enum.Font.Gotham
                Description.Text = description
                Description.TextColor3 = Color3.fromRGB(212, 212, 212)
                Description.TextSize = 12.000
                Description.TextWrapped = true
                local TweenService = game:GetService("TweenService")
                local targetPosition = UDim2.new(.903, 0, 0.919, 0)
                local tweenInfo = TweenInfo.new(.5)
                local Tween = TweenService:Create(Frame, tweenInfo, {Position = targetPosition})
                Tween:Play()
                Tween.Completed:Wait()
                task.wait(5)
                targetPosition = UDim2.new(1.2, 0, 0.919, 0)
                tweenInfo = TweenInfo.new(.5)
                Tween = TweenService:Create(Frame, tweenInfo, {Position = targetPosition})
                Tween:Play()
                Tween.Completed:Wait()
            end
            Players.PlayerAdded:Connect(
                function(player)
                    if player.Name:match(BotsName) then
                        table.insert(BotsTable, player)
                        BotsInteger = BotsInteger + 1
                        botname = player.Name
                        botnumber = tonumber(string.gsub(player.Name, "[^%-%d]", ""))
                        botuserid = player.UserId
                        AddProfile(botname, botnumber, botuserid)
                    end
                end
            )
            Players.PlayerRemoving:Connect(
                function(player)
                    if player.Name:match(BotsName) then
                        table.insert(BotsTable, player)
                        BotsInteger = BotsInteger - 1
                        if BotsList:FindFirstChild(player.Name) then
                            BotsList:FindFirstChild(player.Name):Destroy()
                        end
                    end
                end
            )
            for _, v in ipairs(Players:GetPlayers()) do
                if v.Name:match(BotsName) then
                    table.insert(BotsTable, v)
                    BotsInteger = BotsInteger + 1
                end
            end
            for _, v in pairs(BotsTable) do
                botname = v.Name
                botnumber = tonumber(string.gsub(v.Name, "[^%-%d]", ""))
                botuserid = v.UserId
                AddProfile(botname, botnumber, botuserid)
            end

            Toggle.MouseButton1Click:Connect(
                function()
                    AncestorFrame.Visible = false
                    title = "Closed Gui."
                    description = "Press Right Ctrl to open the Gui."
                    notify(title, description)
                    Hidden = true
                end
            )
            UserInputService.InputBegan:Connect(
                function(input)
                    if input.UserInputType and UserInputService:IsKeyDown(Enum.KeyCode.RightControl) then
                        Hidden = false
                        AncestorFrame.Visible = true
                    end
                end
            )
            CopyLink.MouseButton1Click:Connect(
                function()
                    setclipboard("http://extorius.ezyro.com/")
                end
            )
        end
        coroutine.wrap(QEVEQKN_fake_script)()
        
        local function gethrp()
            if not localplr.Character then
                return
            end
            if not localplr.Character:FindFirstChild("HumanoidRootPart") then
                return
            else
                return localplr.Character.HumanoidRootPart
            end
        end
        local function gethum()
            if not localplr.Character then
                return
            end
            if not localplr.Character.Humanoid then
                return
            else
                return localplr.Character.Humanoid
            end
        end
        
        if AntiAntiCheat then
            spoofhrp1= gethrp().CFrame
            spoofhrp2 = gethrp().Position
            spoofhum1 = gethum().Parent
            
            localplr.CharacterAdded:Connect(function()
                spoof(gethrp(), "CFrame", spoofhrp1)
                spoof(gethrp(), "Position", spoofhrp2)
                spoof(gethum(), "Parent", spoofhum1)
                spoof(gethum(), "Name", "Humanoid")
                spoof(gethum(), "WalkSpeed", 16)
                spoof(gethum(), "JumpPower", 50)
            end)
        end
        if AntiChatLog then
            for i, v in next, getconnections(game:GetService('LogService').MessageOut) do
               v:Disable() 
            end
        end
        
        while task.wait() do
			if Name_2 then
				Name_2.Text = tostring(readfile("Extorius Bots/master.txt"))
			end
		end
        
        return
    end
    return
end
local function gethrp()
    if not localplr.Character then
        return
    end
    if not localplr.Character:FindFirstChild("HumanoidRootPart") then
        return
    else
        return localplr.Character.HumanoidRootPart
    end
end
local function gethum()
    if not localplr.Character then
        return
    end
    if not localplr.Character.Humanoid then
        return
    else
        return localplr.Character.Humanoid
    end
end
local function getmasterhrp()
    plr = game:GetService("Players")[masterplr()]
    if not plr.Character then
        return
    end
    if not plr.Character.HumanoidRootPart then
        return
    else
        return plr.Character.HumanoidRootPart
    end
end
local function getmasterhum()
    plr = game:GetService("Players")[masterplr()]
    if not plr.Character then
        return
    end
    if not plr.Character.Humanoid then
        return
    else
        return plr.Character.Humanoid
    end
end
local function killPlr(target)
    if swarmloop then
        swarmloop:Disconnect()
    end
    if bodythrust then
        bodythrust:Destroy()
    end
    if hideloop then
        hideloop:Disconnect()
    end
    if lineloop then
        lineloop:Disconnect()
    end
    if followloop then
        followloop:Disconnect()
    end
    if bangloop then
        bangloop:Disconnect()
        bang:Stop()
        bangAnim:Destroy()
    end
    if circleloop then
		circleloop:Disconnect()
	end
	
    alocalplr = game:GetService("Players").LocalPlayer
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    alocalhum = alocalchar:WaitForChild("Humanoid")
    task.wait(.1)

    targetchar = target.Character or target.CharacterAdded:Wait()
    targethrp = targetchar:WaitForChild("HumanoidRootPart")

    alocalhum.Name = "pi1"

    local pi1 = alocalhum:Clone()
    pi1.Parent = alocalchar
    pi1.Name = "Humanoid"

    task.wait(.2)

    alocalchar["pi1"]:Destroy()
    workspace.CurrentCamera.CameraSubject = alocalchar
    alocalchar.Humanoid.DisplayDistanceType = "None"
    alocalchar.Humanoid:UnequipTools()

    local foundTool = alocalplr.Backpack:FindFirstChildOfClass("Tool")
    if not foundTool then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("No tools in backpack.", "All")
        return
    end
    foundTool.Parent = alocalchar
    foundTool.Parent = alocalhrp

    goBack = alocalhrp.CFrame

    firetouchinterest(targethrp, foundTool.Handle, 0)
    firetouchinterest(targethrp, foundTool.Handle, 1)
    alocalhrp.CFrame =
        CFrame.new(0, game:GetService("Workspace").FallenPartsDestroyHeight + 4.5, 0) *
        CFrame.Angles(math.rad(190), 0, 0)
    task.wait(.2)
    alocalchar:Remove()

    alocalplr.CharacterAdded:Wait()
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    alocalhum = alocalchar:WaitForChild("Humanoid")
    alocalhrp.CFrame = goBack
end

local function voidPlr(target)
    if swarmloop then
        swarmloop:Disconnect()
    end
    if bodythrust then
        bodythrust:Destroy()
    end
    if hideloop then
        hideloop:Disconnect()
    end
    if lineloop then
        lineloop:Disconnect()
    end
    if followloop then
        followloop:Disconnect()
    end
    if bangloop then
        bangloop:Disconnect()
        bang:Stop()
        bangAnim:Destroy()
    end
    if circleloop then
		circleloop:Disconnect()
	end
	
    alocalplr = game:GetService("Players").LocalPlayer
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    alocalhum = alocalchar:WaitForChild("Humanoid")
    task.wait(.1)

    targetchar = target.Character or target.CharacterAdded:Wait()
    targethrp = targetchar:WaitForChild("HumanoidRootPart")

    alocalhum.Name = "pi1"

    local pi1 = alocalhum:Clone()
    pi1.Parent = alocalchar
    pi1.Name = "Humanoid"

    task.wait(.2)

    alocalchar["pi1"]:Destroy()
    workspace.CurrentCamera.CameraSubject = alocalchar
    alocalchar.Humanoid.DisplayDistanceType = "None"
    alocalchar.Humanoid:UnequipTools()

    local foundTool = alocalplr.Backpack:FindFirstChildOfClass("Tool")
    if not foundTool then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("No tools in backpack.", "All")
        return
    end
    foundTool.Parent = alocalchar
    foundTool.Parent = alocalhrp

    goBack = alocalhrp.CFrame

    alocalhrp.CFrame = CFrame.new(100000, 1000000, 300000)
    firetouchinterest(targethrp, foundTool.Handle, 0)
    firetouchinterest(targethrp, foundTool.Handle, 1)
    task.wait(.2)
    alocalchar:Remove()

    alocalplr.CharacterAdded:Wait()
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    alocalhum = alocalchar:WaitForChild("Humanoid")
    task.wait(.1)

    alocalhrp.CFrame = goBack
end

local function grabPlr(target)
    alocalplr = game:GetService("Players").LocalPlayer
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    alocalhum = alocalchar:WaitForChild("Humanoid")

    targetchar = target.Character or target.CharacterAdded:Wait()
    targethrp = targetchar:WaitForChild("HumanoidRootPart")

    alocalhum.Name = "pi1"

    local pi1 = alocalhum:Clone()
    pi1.Parent = alocalchar
    pi1.Name = "Humanoid"

    task.wait(.2)

    alocalchar["pi1"]:Destroy()
    workspace.CurrentCamera.CameraSubject = alocalchar
    alocalchar.Humanoid.DisplayDistanceType = "None"
    alocalchar.Humanoid:UnequipTools()

    local foundTool = alocalplr.Backpack:FindFirstChildOfClass("Tool")
    if not foundTool then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("No tools in backpack.", "All")
        return
    end
    foundTool.Parent = alocalchar
    foundTool.Parent = alocalhrp

    goBack = alocalhrp.CFrame

    firetouchinterest(targethrp, foundTool.Handle, 0)
    firetouchinterest(targethrp, foundTool.Handle, 1)

    alocalplr.CharacterAdded:Wait()
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    task.wait(.1)

    alocalhrp.CFrame = goBack
end

local function bringPlr(target)
    if swarmloop then
        swarmloop:Disconnect()
    end
    if bodythrust then
        bodythrust:Destroy()
    end
    if hideloop then
        hideloop:Disconnect()
    end
    if lineloop then
        lineloop:Disconnect()
    end
    if followloop then
        followloop:Disconnect()
    end
    if bangloop then
        bangloop:Disconnect()
        bang:Stop()
        bangAnim:Destroy()
    end
    if circleloop then
		circleloop:Disconnect()
	end
	
    alocalplr = game:GetService("Players").LocalPlayer
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    alocalhum = alocalchar:WaitForChild("Humanoid")
    task.wait(.1)

    targetchar = target.Character or target.CharacterAdded:Wait()
    targethrp = targetchar:WaitForChild("HumanoidRootPart")

    alocalhum.Name = "pi1"

    local pi1 = alocalhum:Clone()
    pi1.Parent = alocalchar
    pi1.Name = "Humanoid"

    task.wait(.2)

    alocalchar["pi1"]:Destroy()
    workspace.CurrentCamera.CameraSubject = alocalchar
    alocalchar.Humanoid.DisplayDistanceType = "None"
    alocalchar.Humanoid:UnequipTools()

    local foundTool = alocalplr.Backpack:FindFirstChildOfClass("Tool")
    if not foundTool then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("No tools in backpack.", "All")
        return
    end
    foundTool.Parent = alocalchar
    foundTool.Parent = alocalhrp

    goBack = alocalhrp.CFrame

    firetouchinterest(targethrp, foundTool.Handle, 0)
    firetouchinterest(targethrp, foundTool.Handle, 1)
    alocalhrp.CFrame = getmasterhrp().CFrame * CFrame.new(5, 0, 0)
    task.wait(.4)
    alocalchar:Remove()

    alocalplr.CharacterAdded:Wait()
    alocalchar = alocalplr.Character or alocalplr.CharacterAdded:Wait()
    alocalhrp = alocalchar:WaitForChild("HumanoidRootPart")
    alocalhrp.CFrame = getmasterhrp().CFrame * CFrame.new(5, 0, 0)
end
local function rejoin()
    user = string.gsub(localplr.Name, "[^%-%d]", "")
    usernum = tonumber(user)
    task.wait(usernum / 2)
    msg = "Rejoining | Bot " .. tostring(usernum)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    local ChatMain = require(localplr.PlayerScripts.ChatScript.ChatMain)
    ChatMain.MessagePosted:fire("/e wave")
    TeleportService = game:GetService("TeleportService")
    TeleportService.TeleportToPlaceInstance(TeleportService, game.PlaceId, game.JobId)
end
local function die()
    gethum().Health = 0
end
local function follow()
    user = string.gsub(localplr.Name, "[^%-%d]", "")
    usernum = tonumber(user)
    gethrp().CFrame = getmasterhrp().CFrame * CFrame.new(0, 0, usernum + usernum * checkdistance())
end
local function bring()
    user = string.gsub(localplr.Name, "[^%-%d]", "")
    usernum = tonumber(user)
    cframe = getmasterhrp().CFrame * CFrame.new(0, 0, usernum + usernum * checkdistance())
    task.wait(usernum / 2)
    gethrp().CFrame = cframe
end
local function line()
    user = string.gsub(localplr.Name, "[^%-%d]", "")
    usernum = tonumber(user)
    cframe = getmasterhrp().CFrame * CFrame.new(usernum + usernum * checkdistance(), 0, 0)
    task.wait(usernum / 2)
    gethrp().CFrame = cframe
end
local function loopline()
    user = string.gsub(localplr.Name, "[^%-%d]", "")
    usernum = tonumber(user)
    gethrp().CFrame = getmasterhrp().CFrame * CFrame.new(usernum + usernum * checkdistance(), 0, 0)
end
local function hide()
    gethrp().CFrame = CFrame.new(0, 10000000, 0)
end
local function jump()
    gethum().Jump = true
end
local function re()
    gobackto = gethrp().CFrame
    localplr.Character:Remove()
    localplr.CharacterAdded:Wait()
    task.wait(.1)
    user = string.gsub(localplr.Name, "[^%-%d]", "")
    usernum = tonumber(user)
    task.wait(usernum / 2)
    gethrp().CFrame = gobackto
end
local function circle()
	sine, cosine, radians = math.sin, math.cos, math.rad
	radius=12
	user = string.gsub(localplr.Name, "[^%-%d]", "")
    usernum = tonumber(user)
    local highestnum=0
    for _,v in ipairs(game:GetService("Players"):GetPlayers()) do
    	user_2=string.gsub(v.Name,"[^%-%d]", "")
    	usernum_2=tonumber(user_2)
    	if usernum_2 >= highestnum then
    		highestnum=usernum_2
		end
	end
    
    angle=radians(360/highestnum)*usernum
    gethrp().Position=getmasterhrp().Position+Vector3.new(cosine(angle)*radius,0,sine(angle)*radius)
end
local function commands()
    LPH_NO_VIRTUALIZE(
        function()
            user = string.gsub(localplr.Name, "[^%-%d]", "")
            usernum = tonumber(user)
            local commandsList = {
                "!commands - Lists commands through chat",
                "!rejoin - Rejoins the bots",
                "!follow - Makes the bots follow you",
                "!unfollow - Checks if the bots are following you, and unfollows if they are",
                "!come - Brings the bots to you",
                "!hide - Hides the bots",
                "!unhide - Checks if the bots are hiding, and unhides if they are",
                "!jump - Makes the bots jump",
                "!refresh - Refreshes the bots",
                "!master (Username After) - Allows that player to control the bots. Only one player can control the bots at once.",
                "!dance (1, 2, or 3 After) - Makes that bot play the specified dance though the /e dance feature",
                "!gettool - Loops through workspace's children and will automatically collect any tools it can. It will then tell you if it found any tools",
                "!spin - Makes the bots spin at either a custom or preset speed",
                "!stopspin - Checks if the bots are spinning and stops them if they are",
                "!spinspeed - Allows a custom speed for when spinning the bots",
                "!line - Brings the bots to you in a line formation",
                "!linefollow - Makes the bots follow you in a line formation",
                "!unlinefollow - Checks if the bots are line-following you, and if they are, unline-follows them from you",
                "!swarm1 (Username After) - Makes the bots swarm around the selected player in an unorganized pattern",
                "!swarm2 (Username After) - Makes the bots swarm around the selected player in an organized pattern",
                "!unswarm - Checks if the bots are swarming a player and unswarms if they are",
                "!toggleseat - Say the command to toggle on or off, disables bots sitting while on",
                "!bang (Username After) - Bangs that player 😳😳😳😳😳",
                "!unbang - Unbangs anyone being banged",
                "!distance (Number Here) - Sets the distance in between bots (in studs) for commands like !follow",
                "!circle - Makes all the bots surround you in a circle formation",
                "!loopcircle - Loops make all the bots surround you in a circle formation"
            }
            getgenv().TotalBots = 0
            for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
                if v.Name:match(BotsName) then
                    getgenv().TotalBots = TotalBots + 1
                end
            end
            if getgenv().TotalBots >= 4 then
                if usernum == 1 then
                    for i = 1, 5 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 2 then
                    for i = 6, 10 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 3 then
                    for i = 11, 15 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 4 then
                    for i = 16, 20 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 5 then
                    for i = 21, 25 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                end
            elseif getgenv().TotalBots == 4 then
                if usernum == 1 then
                    for i = 1, 5 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 2 then
                    for i = 6, 10 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 3 then
                    for i = 11, 15 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 4 then
                    for i = 16, 20 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                    task.wait(3)
                    for i = 21, 25 do
                        task.wait()
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                end
            elseif getgenv().TotalBots == 3 then
                if usernum == 1 then
                    for i = 1, 8 do
                        task.wait(.1)
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 2 then
                    for i = 9, 17 do
                        task.wait(.2)
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                elseif usernum == 3 then
                    for i = 18, 25 do
                        task.wait(.2)
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            commandsList[i],
                            "All"
                        )
                    end
                end
            elseif getgenv().TotalBots == 2 then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                    "Not enough bots to list commands.",
                    "All"
                )
            elseif getgenv().TotalBots == 1 then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                    "Not enough bots to list commands.",
                    "All"
                )
            end
        end
    )()
end
local function swarmfunction()
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if string.lower(v.Name):match(swarmplr) then
            plr = v
        end
    end
    if plr then
        if not plr.Character then
            return
        end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then
            return
        end
        plrhrp = plr.Character.HumanoidRootPart
        if swarmnum == 1 then
            gethrp().CFrame =
                plrhrp.CFrame * CFrame.new(math.random(-5, 5), math.random(-2, 5), math.random(-5, 5)) *
                CFrame.Angles(
                    math.rad(math.random(1, 359)),
                    math.rad(math.random(1, 359)),
                    math.rad(math.random(1, 359))
                )
        else
            user = string.gsub(localplr.Name, "[^%-%d]", "")
            usernum = tonumber(user)
            gethrp().CFrame = plrhrp.CFrame * CFrame.new(0, 0, usernum + usernum * checkdistance())
        end
    end
end
local function noseat()
    gethum().Sit = false
end
local function followcmd()
    if swarmloop then
        swarmloop:Disconnect()
    end
    if bodythrust then
        bodythrust:Destroy()
    end
    if hideloop then
        hideloop:Disconnect()
    end
    if lineloop then
        lineloop:Disconnect()
    end
    if bangloop then
        bangloop:Disconnect()
        bang:Stop()
        bangAnim:Destroy()
    end
    followloop = game:GetService("RunService").RenderStepped:Connect(follow)
end
local function hidecmd()
    if swarmloop then
        swarmloop:Disconnect()
    end
    if followloop then
        followloop:Disconnect()
    end
    if lineloop then
        lineloop:Disconnect()
    end
    if bangloop then
        bangloop:Disconnect()
        bang:Stop()
        bangAnim:Destroy()
    end
    getgenv().returnto = gethrp().CFrame
    hideloop = game:GetService("RunService").RenderStepped:Connect(hide)
end
local function spincmd()
    if not bodythrust then
        bodythrust = Instance.new("BodyThrust")
        bodythrust.Parent = gethrp()
        bodythrust.Location = gethrp().Position
        bodythrust.Force = Vector3.new(0, 0, getgenv().spinspeed)
    else
        bodythrust:Destroy()
        bodythrust = Instance.new("BodyThrust")
        bodythrust.Parent = gethrp()
        bodythrust.Location = gethrp().Position
        bodythrust.Force = Vector3.new(0, 0, getgenv().spinspeed)
    end
end
local function linefollowcmd()
    if swarmloop then
        swarmloop:Disconnect()
    end
    if followloop then
        followloop:Disconnect()
    end
    if hideloop then
        hideloop:Disconnect()
    end
    if bangloop then
        bangloop:Disconnect()
        bang:Stop()
        bangAnim:Destroy()
    end
    lineloop = game:GetService("RunService").RenderStepped:Connect(loopline)
end
local function bangfunction()
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if string.lower(v.Name):match(bangplr) then
            plr = v
        end
    end
    if plr then
        if not plr.Character then
            return
        end
        if not localplr.Character:FindFirstChild("HumanoidRootPart") then
            return
        end
        plrhrp = plr.Character.HumanoidRootPart
        gethrp().CFrame = plrhrp.CFrame * CFrame.new(0, 0, 1.1)
    end
end

LPH_NO_VIRTUALIZE(
    function()
        local ChatEvents = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents", math.huge)
        local OnMessageEvent =
            ChatEvents:WaitForChild("OnMessageDoneFiltering", math.huge).OnClientEvent:Connect(
            function(data)
                if data ~= nil and checkbot() == "Enabled" then
                    local player = tostring(data.FromSpeaker)
                    local message = tostring(data.Message)
                    local originalchannel = tostring(data.OriginalChannel)
                    if string.find(originalchannel, "To ") then
                        message = "/w " .. string.gsub(originalchannel, "To ", "") .. " " .. message
                    end
                    if originalchannel == "Team" then
                        message = "/team " .. message
                    end
                    if player == tostring(masterplr()) then
                        local originalmsg = message
                        local message = string.lower(message)
                        if message == "!commands" or message == "!cmds" then
                            commands()
                        elseif message == "!rejoin" or message == "!rj" then
                            rejoin()
                        elseif message == "!die" or message == "!dead" or message == "!ded" then
                            die()
                        elseif message == "!follow" then
                            followcmd()
                        elseif message == "!unfollow" then
                            if followloop then
                                followloop:Disconnect()
                            end
                        elseif message == "!return" then
                            bring()
                        elseif message == "!hide" then
                            hidecmd()
                        elseif message == "!unhide" then
                            if hideloop then
                                hideloop:Disconnect()
                                task.wait(.1)
                                for i = 1, 20 do
                                    task.wait()
                                    gethrp().CFrame = getgenv().returnto
                                end
                            end
                        elseif message == "!jump" then
                            jump()
                        elseif message == "!refresh" or message == "!re" then
                            re()
                        elseif message:match("!dance") then
                            msg = string.split(message, "!")
                            local ChatMain = require(localplr.PlayerScripts.ChatScript.ChatMain)
                            ChatMain.MessagePosted:fire("/e " .. msg[2])
                        elseif message == "!spin" or message == "!rotate" then
                            spincmd()
                        elseif message == "!stopspin" or message == "!stoprotate" then
                            if bodythrust then
                                bodythrust:Destroy()
                            end
                        elseif message:match("!spinspeed") or message:match("!rotatespeed") then
                            msg = string.split(message, " ")
                            getgenv().spinspeed = tonumber(msg[2])
                            if bodythrust then
                                bodythrust.Force = Vector3.new(0, 0, getgenv().spinspeed)
                            end
                        elseif message == "!line" then
                            line()
                        elseif message == "!linefollow" then
                            linefollowcmd()
                        elseif message == "!unlinefollow" then
                            if lineloop then
                                lineloop:Disconnect()
                            end
                        elseif message:match("!swarm1") then
                            if swarmloop then
                                swarmloop:Disconnect()
                            end
                            if bodythrust then
                                bodythrust:Destroy()
                            end
                            if hideloop then
                                hideloop:Disconnect()
                            end
                            if lineloop then
                                lineloop:Disconnect()
                            end
                            if followloop then
                                followloop:Disconnect()
                            end
                            if bangloop then
                                bangloop:Disconnect()
                                bang:Stop()
                                bangAnim:Destroy()
                            end
                            if circleloop then
								circleloop:Disconnect()
							end
                            swarmnum = 1
                            swarmplr = string.gsub(message, "!swarm1 ", "")
                            swarmloop = game:GetService("RunService").RenderStepped:Connect(swarmfunction)
                        elseif message:match("!swarm2") then
                            if swarmloop then
                                swarmloop:Disconnect()
                            end
                            if bodythrust then
                                bodythrust:Destroy()
                            end
                            if hideloop then
                                hideloop:Disconnect()
                            end
                            if lineloop then
                                lineloop:Disconnect()
                            end
                            if followloop then
                                followloop:Disconnect()
                            end
                            if bangloop then
                                bangloop:Disconnect()
                                bang:Stop()
                                bangAnim:Destroy()
                            end
                            if circleloop then
								circleloop:Disconnect()
							end
                            swarmnum = 2
                            swarmplr = string.gsub(message, "!swarm2 ", "")
                            swarmloop = game:GetService("RunService").RenderStepped:Connect(swarmfunction)
                        elseif message == "!unswarm" then
                            if swarmloop then
                                swarmloop:Disconnect()
                            end
                        elseif message == "!toggleseat" then
                            if seatloop then
                                seatloop:Disconnect()
                            else
                                seatloop = game:GetService("RunService").RenderStepped:Connect(noseat)
                            end
                        elseif message:match("!bang") then
                            if swarmloop then
                                swarmloop:Disconnect()
                            end
                            if bodythrust then
                                bodythrust:Destroy()
                            end
                            if hideloop then
                                hideloop:Disconnect()
                            end
                            if lineloop then
                                lineloop:Disconnect()
                            end
                            if followloop then
                                followloop:Disconnect()
                            end
                            if circleloop then
								circleloop:Disconnect()
							end
                            bangplr = string.gsub(message, "!bang ", "")
                            if not bangAnim then
                                bangAnim = Instance.new("Animation")
                            end
                            bangAnim.AnimationId = "rbxassetid://148840371"
                            bang = gethum():LoadAnimation(bangAnim)
                            bang:Play(.1, 1, 1)
                            bangloop = game:GetService("RunService").RenderStepped:Connect(bangfunction)
                        elseif message == "!unbang" then
                            if bangloop then
                                bangloop:Disconnect()
                                bang:Stop()
                                bangAnim:Destroy()
                            end
                        elseif message:match("!distance") then
                            if message:match("%d") then
                                writefile("Extorius Bots/distance.txt", string.gsub(message, "!distance ", ""))
                            else
                                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                    "Error: Distance does not contain number.",
                                    "All"
                                )
                            end
						elseif message=="!circle" then
							circle()
						elseif message=="!loopcircle" then
							if swarmloop then
                                swarmloop:Disconnect()
                            end
                            if bodythrust then
                                bodythrust:Destroy()
                            end
                            if hideloop then
                                hideloop:Disconnect()
                            end
                            if lineloop then
                                lineloop:Disconnect()
                            end
                            if followloop then
                                followloop:Disconnect()
                            end
                            if bangloop then
                                bangloop:Disconnect()
                                bang:Stop()
                                bangAnim:Destroy()
                            end
							circleloop=game:GetService("RunService").RenderStepped:Connect(circle)
						elseif message=="!unloopcircle" then
							if circleloop then
								circleloop:Disconnect()
							end
                        end
                    end
                    if player == tostring(MasterName) then
                        originalmsg = message
                        message = string.lower(message)
                        if
                            message:match("!master") or message:match("!rank") or message:match("!perm") or
                                message:match("!perms")
                         then
                            user = string.gsub(localplr.Name, "[^%-%d]", "")
                            usernum = tonumber(user)
                            if usernum == 1 then
                                splitmessage = string.split(message, " ")
                                for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
                                    if string.lower(v.Name):match(splitmessage[2]) then
                                        if v.Name ~= masterplr() then
                                            newmaster = v.Name
                                        end
                                    end
                                end
                                if newmaster then
                                    writefile("Extorius Bots/master.txt", newmaster)
                                    msg = "New master is: " .. masterplr() .. ". Use '!commands' to view all available commands."
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        msg,
                                        "All"
                                    )
                                    
                                    newmaster = nil
                                else
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        "Master player has not changed.",
                                        "All"
                                    )
                                end
                            end
                        elseif message == "!disconnect" or message == "!leave" then
                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                "Host has requested a disconnect; Forcing accounts to leave.",
                                "All"
                            )
                            task.wait(2)
                            game:Shutdown()
                        elseif message:match("!say") then
                        	local ChatMain = require(localplr.PlayerScripts.ChatScript.ChatMain)
							ChatMain.MessagePosted:fire(string.gsub(originalmsg, "!say ", ""))
                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                string.gsub(originalmsg, "!say ", ""),
                                "All"
                            )
                        elseif message == "!advertise" then
                            if _G.wl_key == "1b9989e24f761e3a1b60df4a755dd519c6c8baab" then
                                for i = 1, 10 do
                                    task.wait()
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        "Script available at extőrius. ezyrő. cőm Script available at extőrius. ezyrő. cőm Script available at extőrius. ezyrő. cőm",
                                        "All"
                                    )
                                end
                            end
                        elseif message == "!credits" or message == "!credit" or message == "!info" then
                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                "Script made by Noxu | Dis: noxu 2161 | Website: extőrius. ezyrő. cőm | Script Name: Extorius Bots",
                                "All"
                            )
                        elseif message:match("!kill") or message:match("!smite") then
                            user = tonumber(string.gsub(localplr.Name, "[^%-%d]", ""))
                            if user == 1 then
                                plr = string.gsub(message, "!kill ", "")
                                plr = string.gsub(message, "!smite ", "")
                                for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
                                    if string.lower(v.Name):match(plr) then
                                        target = v
                                    end
                                end
                                if target then
                                    killPlr(target)
                                else
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        "Could not find player.",
                                        "All"
                                    )
                                end
                            end
                        elseif message:match("!void") then
                            user = tonumber(string.gsub(localplr.Name, "[^%-%d]", ""))
                            if user == 1 then
                                plr = string.gsub(message, "!void ", "")
                                for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
                                    if string.lower(v.Name):match(plr) then
                                        target = v
                                    end
                                end
                                if target then
                                    voidPlr(target)
                                else
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        "Could not find player.",
                                        "All"
                                    )
                                end
                            end
                        elseif message:match("!bring") then
                            user = tonumber(string.gsub(localplr.Name, "[^%-%d]", ""))
                            if user == 1 then
                                plr = string.gsub(message, "!bring ", "")
                                for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
                                    if string.lower(v.Name):match(plr) then
                                        target = v
                                    end
                                end
                                if target then
                                    bringPlr(target)
                                else
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        "Could not find player.",
                                        "All"
                                    )
                                end
                            end
                        elseif message:match("!grab") then
                            user = tonumber(string.gsub(localplr.Name, "[^%-%d]", ""))
                            if user == 1 then
                                plr = string.gsub(message, "!grab ", "")
                                for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
                                    if string.lower(v.Name):match(plr) then
                                        target = v
                                    end
                                end
                                if target then
                                    grabPlr(target)
                                else
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                                        "Could not find player.",
                                        "All"
                                    )
                                end
                            end
                        end
                    elseif player ~= tostring(MasterName) then
                        originalmsg = message
                        message = string.lower(message)
                        if message:match("who asked") or message:match("who cares") then
                            user = string.gsub(localplr.Name, "[^%-%d]", "")
                            usernum = tonumber(user)
                            task.wait(usernum / 2)
                            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("me", "All")
                        end
                    end
                end
            end
        )
    end
)()

spoofhrp1 = gethrp().CFrame
spoofhrp2 = gethrp().Position
spoofhum1 = gethum().Parent
if AntiAntiCheat then
    localplr.CharacterAdded:Connect(function()
        spoof(gethrp(), "CFrame", spoofhrp1)
        spoof(gethrp(), "Position", spoofhrp2)
        spoof(gethum(), "Parent", spoofhum1)
        spoof(gethum(), "Name", "Humanoid")
    end)
end
if AntiChatLog then
    for i, v in next, getconnections(game:GetService('LogService').MessageOut) do
       v:Disable() 
    end
end

LPH_NO_VIRTUALIZE(
    function()
        if BotAntiLag and localplr.Name:match(BotsName) then
            game.Workspace.StreamingEnabled = false
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        end
        vu = game:GetService("VirtualUser")
        localplr.Idled:Connect(
            function()
                vu:ClickButton1(Vector2.new(0, 0))
            end
        )
        user = string.gsub(localplr.Name, "[^%-%d]", "")
        msg = string.gsub(LoadIn, "BotNum", user)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
        setfpscap(BotFps)
        
        while task.wait() do
            if tostring(readfile("Extorius Bots/kick.txt")) == localplr.Name then
                game:Shutdown()
                writefile("Extorius Bots/kick.txt", "")
            end
        end
    end
)()
