--//bypass adonis--//
local debugMode = true

local function isAdonisAC(table) -- basic stupid checks
    return rawget(table, "Detected") and typeof(rawget(table, "Detected")) == "function" and rawget(table, "RLocked")
end
local function dwarn(func, ...)
    if debugMode then
        --print("debug mode enable")
        func(...)
    end
end

dwarn(warn, "------------------------------")

for _, v in next, getgc(true) do
    if typeof(v) == "table" and isAdonisAC(v) then
        dwarn(warn, "uwu")
        for i, v in next, v do
            dwarn(print, i, typeof(v))
            if rawequal(i, "Detected") then
                dwarn(warn, "^^^^^^^")
                local old;
                old = hookfunction(v, function(action, info, nocrash)
                    if rawequal(action, "_") and rawequal(info, "_") and rawequal(nocrash, true) then
                        -- warn("checkup")
                        return old(action, info, nocrash)
                    end
                    dwarn(warn, "detected for :", action, info, nocrash)
                    return task.wait(9e9)
                end)
            end
        end
    end
end

warn("bypassed adonis ac")
--//Bypass//--
local old
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    if not checkcaller() then
        local func = getnamecallmethod()
        local cScript = getcallingscript()
        local args = {...}
        if rawequal(func, "FireServer") and tonumber(self) then
            warn(self.Name)
            return wait(9e9)
    
        end
    end
    return old(self, ...)
end))
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Tha Bronx 2 | V2 By boweb! .gg/ciagov", "GrapeTheme")
local Tab1 = Window:NewTab("Player")
local Tab2 = Window:NewTab("Teleport")
local Tab3 = Window:NewTab("AutoFarm")
local Tab4 = Window:NewTab("Extra")
local Tab5 = Window:NewTab("AutoBuy")
local Tab6 = Window:NewTab("Credits")

local Section1 = Tab1:NewSection("Settings")
Section1:NewSlider("WalkSpeed", "Walkspeed", 100, 16, function(ws) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)
Section1:NewSlider("JumpPower", "Walkspeed", 47, 37, function(jp) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end)
Section1:NewSlider("fov", "ButtonInfo", 120, 87, function(k)
    workspace.CurrentCamera.FieldOfView = k
end)
Section1:NewButton("Give Bag", "", function()
    fireclickdetector(workspace.dufflebagequip.ClickDetector)
end)
Section1:NewButton("Sell gold", "", function()
    fireclickdetector(workspace.Map555555.sellgold.ClickDetector)
end)

Section1:NewButton("RiceBag", "", function ()
	fireclickdetector(workspace.GUNS.RiceBag.ClickDetector)
end)

Section1:NewButton("Tp Tool", "Nigga", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/RfkSLmL5",true))()
end)


local Section2 = Tab2:NewSection("Teleport")
Section2:NewButton("Car Concessionnaire", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-455.6111145019531, 3.2135274410247803, -571.3959350585938)
end)

Section2:NewButton("Cop", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(678.9931030273438, 3.612440824508667, -248.346923828125)
end)

Section2:NewButton("Bank Upstairs", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-583.2862548828125, 82.38386535644531, -594.7566528320312)
end)

Section2:NewButton("Bank Down there", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-609.2326049804688, 3.3500494956970215, -600.3145141601562)
end)

Section2:NewButton("IceBox", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-612.2337036132812, 3.27215576171875, -639.6926879882812)
end)

Section2:NewButton("Gun Shop", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1226.6864013671875, 261.9952392578125, -802.01611328125)
end)

Section2:NewButton("Cook", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-604.7481689453125, 3.181774377822876, -47.35617446899414)
end)

Section2:NewButton("Hotel", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-847.0947265625, 3.272132635116577, 140.95591735839844)
end)

local Section3 = Tab3:NewSection("ahaha-autofarm by boweb")
Section3:NewButton("AutoFarm Box", "", function()
    --//yeaaa
workspace.BoxParts["1"].Size = Vector3.new(500000, 50000, 50000)
workspace.BoxParts["1"].CanCollide = false

local players = game:GetService("Players")
local plr = players.LocalPlayer
local backpack = plr:WaitForChild("Backpack")
local char = plr.Character or plr.CharacterAdded:Wait()
    local oldCFrame = nil
    
    if value then
        oldCFrame = player.Character.HumanoidRootPart.CFrame
    end
getgenv().autofarm = true
        while getgenv().autofarm do
			local tool = backpack:FindFirstChild("Box") or char:FindFirstChild("Box")
			local humr = char:FindFirstChild("HumanoidRootPart")
			local hum = char:FindFirstChild("Humanoid")
			if humr and hum then
				if tool then
					hum:EquipTool(tool)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1549, 247, -652) 
			    else
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1469, 249, -598)  
					fireproximityprompt(workspace["1# Map"]["2 Meshes"]:GetChildren()[1070].ProximityPrompt) 
			    end
			end
			task.wait()
        end
		if value then
        player.Character.HumanoidRootPart.CFrame = oldCFrame
		end
end)

Section3:NewButton("StopAutofarm Box", "ButtonInfo", function()
    getgenv().autofarm = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-968.8911743164062, 253.53968811035156, -1037.9703369140625)
end)

local Section4 = Tab4:NewSection("omg nice")
Section4:NewButton("KillAura", "Equip your poing", function()
    getgenv().killAura = true

local Players = game:GetService("Players")
local player = Players.LocalPlayer


while getgenv().killAura do
    local character = player.Character
    if character and character:FindFirstChild("Fist") then
        for i, nigger:Player in next, Players:GetPlayers() do
            if nigger ~= player then
                pcall(function()
                    local niggus = nigger.Character
                    if player:DistanceFromCharacter(nigger.character.PrimaryPart.Position) <= 8 then
                        character.Fist.LocalScript.punched:InvokeServer(unpack({
                            [1] = niggus.Humanoid,
                            [3] = niggus.LeftUpperArm
                        }))
                    end
                end)
            end
        end
    end
    task.wait()
end
end)
Section4:NewButton("Infinite-Yield", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
end)

local Section5 = Tab5:NewSection("I'm too lazy to do everything")
Section5:NewButton("C4 | 950$", "950$", function()
    fireclickdetector(workspace.GUNS.C4.ClickDetector)
end)
Section5:NewButton("Bag | BANK! | FREE$", "FREE$", function()
    local players = game:GetService("Players")
    local player = players.LocalPlayer
    local backpack = player:WaitForChild("Backpack")
    local character = player.Character or player.CharacterAdded:Wait()
    local oldCFrame = nil

    if character then
        oldCFrame = character:WaitForChild("HumanoidRootPart").CFrame
    end

    fireproximityprompt(workspace.dufflebagequip.ProximityPrompt)
    fireclickdetector(workspace.dufflebagequip.ClickDetector)

    if oldCFrame then
        character:WaitForChild("HumanoidRootPart").CFrame = oldCFrame
    end
end)



Section5:NewButton("Bag | NOBANK! | 300$", "300$", function()
    fireproximityprompt(workspace.GUNS.Bag.Model.Sign.BuyPrompt.ProximityPrompt)
end)


Section5:NewButton("Drill | 700$", "700$", function()

    fireproximityprompt(workspace.GUNS.Drill.Model.Sign.BuyPrompt.ProximityPrompt)
end)

Section5:NewButton("DracoD | Gamepass", "Gamepass", function()
    fireclickdetector(workspace.GUNS.DracoD.ClickDetector)
end)

Section5:NewButton("Draco | 6200$", "6200$", function()
    fireclickdetector(workspace.GUNS.Draco.ClickDetector)
end)

Section5:NewButton("Card | Gamepass", "Gamepass", function()
    fireclickdetector(workspace.GUNS.Card.ClickDetector)
end)

local Section6 = Tab6:NewSection("Settings")
Section6:NewButton("by boweb x)")
Section6:NewButton(".gg/Pb7dpUKm4h")
