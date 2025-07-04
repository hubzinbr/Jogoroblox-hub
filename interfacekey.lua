-- Interface de verificação da chave (key)
local keyCorreta = "spyro123"

local keyGui = Instance.new("ScreenGui", game.CoreGui)
keyGui.Name = "JogorobloxKeyUI"
keyGui.ResetOnSpawn = false
keyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local keyFrame = Instance.new("Frame", keyGui)
keyFrame.Size = UDim2.new(1, 0, 1, 0)
keyFrame.Position = UDim2.new(0, 0, 0, 0)
keyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("UICorner", keyFrame).CornerRadius = UDim.new(0, 20)

local closeBtn = Instance.new("TextButton", keyFrame)
closeBtn.Size = UDim2.new(0, 40, 0, 40)
closeBtn.Position = UDim2.new(1, -50, 0, 10)
closeBtn.Text = "X"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 8)
closeBtn.MouseButton1Click:Connect(function()
    keyGui:Destroy()
end)

local title = Instance.new("TextLabel", keyFrame)
title.Text = "Digite a chave para acessar o Jogoroblox HUB"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.Size = UDim2.new(1, 0, 0, 60)
title.Position = UDim2.new(0, 0, 0.25, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local input = Instance.new("TextBox", keyFrame)
input.PlaceholderText = "Ex: spyro123"
input.Text = ""
input.Font = Enum.Font.Gotham
input.TextSize = 18
input.TextColor3 = Color3.fromRGB(0, 0, 0)
input.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
input.Size = UDim2.new(0.3, 0, 0, 40)
input.Position = UDim2.new(0.35, 0, 0.4, 0)
Instance.new("UICorner", input).CornerRadius = UDim.new(0, 10)

local botao = Instance.new("TextButton", keyFrame)
botao.Text = "Entrar"
botao.Font = Enum.Font.GothamBold
botao.TextSize = 18
botao.TextColor3 = Color3.fromRGB(255, 255, 255)
botao.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
botao.Size = UDim2.new(0.2, 0, 0, 40)
botao.Position = UDim2.new(0.4, 0, 0.52, 0)
Instance.new("UICorner", botao).CornerRadius = UDim.new(0, 10)

botao.MouseButton1Click:Connect(function()
    if input.Text == keyCorreta then
        keyGui:Destroy()

        loadstring(game:HttpGet(repo .. "menu.lua"))()
    else
        input.Text = ""
        input.PlaceholderText = "❌ Chave incorreta"
        input.PlaceholderColor3 = Color3.fromRGB(255, 0, 0)
    end
end)