--[[

    Made by Layer7
    Open source code
    dsc.gg/ciagov
    DO NOT USE THIS FOR MALICIOUS PURPOSES
    SilentSpy is a tool for educational purposes, not intended for malicious activities.
    SilentSpy is invulnerable, executing actions with unmatched stealth and efficiency

]]

--[ << Services >> ]--

local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.Character:WaitForChild("Character")
local Humanoid = Character.Humanoid
local StarterPlayerScript = Player.PlayerScripts

--[ << Functions >> ]--

local function rs1()
    local args = {
        [1] = "car_for_buy",
        [2] = "rs6",
        [3] = "4500"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Voiture"):WaitForChild("Buy"):FireServer(unpack(args))
end    

local function sell()
    local args = {
        [1] = "sellSecured",
        [2] = "rs6",
        [3] = "31500" -- 31k
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Voiture"):WaitForChild("Sell"):FireServer(unpack(args))
end    


--[ >> UI Library & Initialization ]--

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "SilentSpy - VoiceChat Francophone",
    Icon = "eye", 
    LoadingTitle = "SilentSpy is invulnerable, executing actions with unmatched stealth and efficiency",
    LoadingSubtitle = "",
    Theme = "Default",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = true,
       Invite = "ciagov",
       RememberJoins = true
    },
 
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"Hello"}
    }
})

do
    local Informations = Window:CreateTab("Information", "bug-play")

    local Section = Informations:CreateSection("Debug")
    local Paragraph = Informations:CreateParagraph({Title = "Version:", Content = "1.0"})

    local PlayerTab = Window:CreateTab("Player", "mouse-pointer-2")
    local Slider = PlayerTab:CreateSlider({
        Name = "WalkSpeed",
        Range = {0, 100},
        Increment = 10,
        Suffix = "",
        CurrentValue = 10,
        Flag = "",
        Callback = function(Value)
            Humanoid.WalkSpeed = Value
        end,
     })

    local Slider = PlayerTab:CreateSlider({
        Name = "JumpPower",
        Range = {0, 100},
        Increment = 10,
        Suffix = "",
        CurrentValue = 10,
        Flag = "",
        Callback = function(Value)
            Humanoid.JumpPower = Value
        end,
     })

    local AAfk = PlayerTab:CreateButton({
        Name = "Remove AFK Detector",
        Callback = function()
            if StarterPlayerScript.AFKDetector.Disabled == false then
                StarterPlayerScript.AFKDetector.Disabled = true
            end
        end,
    })

    local CodeAuto = PlayerTab:CreateButton({
        Name = "AutoClaim Code",
        Callback = function()
            local codes = game:GetService("Players").LocalPlayer.Codes
            for _, v in ipairs(codes:GetChildren()) do
                if v:IsA("BoolValue") then 
                    local args = {
                        [1] = v.Name
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("CodesRS"):WaitForChild("CodeChanged"):FireServer(unpack(args))
                end
            end
        end,
    })

    local ExploitTab = Window:CreateTab("Exploit", "bug-off")

    local Money = ExploitTab:CreateButton({
        Name = "Money Dupe",
        Callback = function()
            for _, v in ipairs(Player.leaderstats:GetChildren()) do
                if v:IsA("IntValue") and v.Name == "Voice Coin" then
                    if v.Value >= 4500 then
                        Rayfield:Notify({Title = "SilentSpy", Content = "Operation in Progress", Duration = 1, Image = "eye"})
                        rs1()
                        task.wait(1.2)
                        sell()
                        Rayfield:Notify({Title = "SilentSpy", Content = "Money Successful", Duration = 2.2, Image = "ticket-check"})
                    else
                        Rayfield:Notify({Title = "SilentSpy", Content = "Insufficient Money", Duration = 2.2, Image = "circle-x"})
                    end
                end
            end
        end,
    })
    
    local UnlockB = ExploitTab:CreateButton({
        Name = "Unlock Banners",
        Callback = function()
            local unlocked = false
            for _, item in ipairs(game:GetService("Players").LocalPlayer.OverheadFolder:GetChildren()) do
                if item:IsA("BoolValue") then
                    item.Value = true
                    unlocked = true
                end
            end
            if unlocked then
                Rayfield:Notify({Title = "SilentSpy", Content = "Banners Unlocked", Duration = 2.2, Image = "trophy"})
            end
        end,
    })

    local UnlockT = ExploitTab:CreateButton({
        Name = "Unlock Title",
        Callback = function()
            local unlocked = false
            for _, item in ipairs(game:GetService("Players").LocalPlayer.TagsFolder:GetChildren()) do
                if item:IsA("BoolValue") then
                    item.Value = true
                    unlocked = true
                end
            end
            if unlocked then
                Rayfield:Notify({Title = "SilentSpy", Content = "Title Unlocked", Duration = 2.2, Image = "trophy"})
            end
        end,
    })
end

Rayfield:LoadConfiguration()
