-- Gui to Lua
-- Version: 3.2

-- Instances:

local Kls = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

--Properties:

Kls.Name = "Kls"
Kls.Parent = game.Players.LocalPlayer.PlayerGui

Frame.Parent = Kls
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 2000, 0, 2000)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(43, 43, 43)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(135, 135, 135))}
UIGradient.Parent = Frame

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "discord.gg/ciagov"
TextLabel.TextColor3 = Color3.fromRGB(52, 52, 52)
TextLabel.TextScaled = true
TextLabel.TextSize = 42.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.474999994, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Ciagov crash site 43"
TextLabel_2.TextColor3 = Color3.fromRGB(52, 52, 52)
TextLabel_2.TextSize = 42.000

TextLabel_3.Parent = Frame
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.499749959, 0, 0.532999992, 0)
TextLabel_3.Size = UDim2.new(0, 221, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "ESTIMATED TIME : 5 - 10 time"
TextLabel_3.TextColor3 = Color3.fromRGB(124, 124, 124)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 49.000
TextLabel_3.TextWrapped = true