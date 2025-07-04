
-- Botão de mutar/desmutar música (fica no painel esquerdo em "Configurações")

local leftPanel = game:GetService("CoreGui"):WaitForChild("JogorobloxInterface"):WaitForChild("MainMenu"):WaitForChild("leftPanel")

-- Criar botão de mute
local muteButton = Instance.new("TextButton", leftPanel)
muteButton.Size = UDim2.new(0.9, 0, 0, 40)
muteButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
muteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
muteButton.Text = "🔊 Mute Música"
muteButton.Font = Enum.Font.GothamBold
muteButton.TextSize = 16
Instance.new("UICorner", muteButton).CornerRadius = UDim.new(0, 10)

-- Hover roxo
muteButton.MouseEnter:Connect(function()
    muteButton.BackgroundColor3 = Color3.fromRGB(140, 0, 255)
end)
muteButton.MouseLeave:Connect(function()
    muteButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
end)

-- Sistema de mute
local som = workspace:FindFirstChild("JogorobloxMusic")
if not som then
    som = Instance.new("Sound", workspace)
    som.Name = "JogorobloxMusic"
    som.SoundId = "rbxassetid://4290728499" -- Música clássica
    som.Volume = 1
    som.Looped = true
    som:Play()
end

local mutado = false
muteButton.MouseButton1Click:Connect(function()
    mutado = not mutado
    som.Volume = mutado and 0 or 1
    muteButton.Text = mutado and "🔇 Música Mutada" or "🔊 Mute Música"
end)
