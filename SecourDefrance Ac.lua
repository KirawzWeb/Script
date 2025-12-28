local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))() -- notif (i love it)

local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local humRoot = char:WaitForChild("HumanoidRootPart")

local signal = {
    hum:GetPropertyChangedSignal("WalkSpeed"),
    hum:GetPropertyChangedSignal("JumpPower"),
    humRoot:GetPropertyChangedSignal("CFrame"),
    humRoot:GetPropertyChangedSignal("AssemblyAngularVelocity"),
    humRoot:GetPropertyChangedSignal("AssemblyLinearVelocity"),
    workspace:GetPropertyChangedSignal("Gravity"),
    workspace.DescendantAdded 
}
do 
    for _, con in signal do
        for _, conn in getconnections(con) do
            Library:Notify({
                Title = "Found Connection Ac",
                Description = conn,
                Time = 2,
            })
            conn:Disable()
        end
    end 
    -- # GG 
    Library:Notify({
        Title = "Ac Bypassed",
        Description = "with 0 errors",
        Time = 6,
    })
end