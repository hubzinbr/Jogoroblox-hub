
-- Tela de carregamento com barra roxa animada
local TweenService = game:GetService("TweenService")

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "JogorobloxCarregando"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.4, 0, 0.25, 0)
frame.Position = UDim2.new(0.3, 0, 0.35, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 15)

local title = Instance.new("TextLabel", frame)
title.Text = "Jogoroblox HUB"
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Position = UDim2.new(0, 0, 0.1, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local barBackground = Instance.new("Frame", frame)
barBackground.Size = UDim2.new(0.9, 0, 0.25, 0)
barBackground.Position = UDim2.new(0.05, 0, 0.6, 0)
barBackground.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
barBackground.BorderSizePixel = 0
Instance.new("UICorner", barBackground).CornerRadius = UDim.new(0, 12)

local bar = Instance.new("Frame", barBackground)
bar.Size = UDim2.new(0, 0, 1, 0)
bar.BackgroundColor3 = Color3.fromRGB(140, 0, 255)
bar.BorderSizePixel = 0
Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 12)

local tween = TweenService:Create(bar, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Size = UDim2.new(1, 0, 1, 0)
})
tween:Play()
tween.Completed:Wait()

gui:Destroy()
