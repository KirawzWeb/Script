
local actuel = nil

local function getWorkspace()
    for _, v in ipairs(workspace:GetDescendants()) do
        if #v.Name == 36 then
            actuel = v
            break 
        end
    end
end

getWorkspace()


game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("GameService"):WaitForChild("RE"):WaitForChild("FinishedIntro"):FireServer()


-- Interface
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fnaf", "Sentinel")
local Tab1 = Window:NewTab("Players")
local Tab2 = Window:NewTab("ESP")

local Section2 = Tab1:NewSection("Player config")

Section2:NewToggle("On speed", "", function(state)
    if state then
        getgenv().speed = true
    else
        getgenv().speed = false
    end
end)

Section2:NewSlider("Walkspeed", "", 70, 20, function(s)
    if getgenv().speed then
        while getgenv().speed do 
            task.wait(0.1)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10
    end
end)

Section2:NewToggle("Auto-Evade", "", function(state)
    if state then
        getgenv().launch = state 

        while getgenv().launch do
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MonsterService"):WaitForChild("RE"):WaitForChild("Escape"):FireServer()
            task.wait(0.1)
        end
    else
        getgenv().launch = false
    end
end)






local x = Tab2:NewSection("ESP")

x:NewToggle("Esp Task", "ToggleInfo", function(state)
    if state then
        if actuel and actuel:FindFirstChild("Map") and actuel.Map:FindFirstChild("Tasks") then
            local task = actuel.Map.Tasks
            for _, v in ipairs(task:GetDescendants()) do
                if v:IsA("MeshPart") and v.Name == "Screen" then
                    local highlight = Instance.new("Highlight")
                    highlight.Adornee = v
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.OutlineColor = Color3.fromRGB(13, 13, 255)
                    highlight.FillColor = Color3.fromRGB(0, 0, 0)
                    highlight.Parent = v
                end
            end
        else
            warn("no")
        end
    else
        if actuel and actuel:FindFirstChild("Map") and actuel.Map:FindFirstChild("Tasks") then
            local task = actuel.Map.Tasks
            for _, v in ipairs(task:GetDescendants()) do
                if v:IsA("MeshPart") and v.Name == "Screen" then
                    for _, child in ipairs(v:GetChildren()) do
                        if child:IsA("Highlight") then
                            child:Destroy()
                        end
                    end
                end
            end
        end
    end
end)
