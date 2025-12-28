-- bloxfruit, md2




-- bandit quests --

local args = {
    [1] = "StartQuest",
    [2] = "BanditQuest1",
    [3] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))


getgenv().autofarm = true

if getgenv().autofarm then
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    while getgenv().autofarm do
        for _, bandit in ipairs(workspace.Enemies:GetChildren()) do
            if bandit:IsA("Model") and bandit.Name == "Bandit" then
                local humanoid = bandit:FindFirstChild("Humanoid")
                local rootPart = bandit:FindFirstChild("HumanoidRootPart")

                if humanoid and rootPart and humanoid.Health > 0 then
                    while humanoid.Health > 0 and getgenv().autofarm do
                        humanoidRootPart.CFrame = rootPart.CFrame + Vector3.new(0, 10, 0)
                        wait(0.1)
                    end
                end
            end
        end
        wait(0.1) 
    end
end
