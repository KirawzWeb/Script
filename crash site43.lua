-- owner & dev : kuzey
-- 1000 cola == crash

local Players = game:GetService("Players")
local speaker = Players.LocalPlayer
local backpack = speaker.Backpack
local character = speaker.Character

-- local ez = 0

getgenv().real = true --// true or false

while getgenv().real do
    local cola = backpack:FindFirstChild("Cola")
    
    if cola then
        cola.Parent = character
        -- print("cola !!")
    else
        fireproximityprompt(workspace:GetChildren()[3990].Main.PromptAttachment.ProximityPrompt)
        -- ez = ez + 1
        -- print("cola ",ez)
    end
    
    task.wait(0.1)
end
