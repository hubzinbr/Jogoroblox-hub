-- Interface personalizada do menu (sem Rayfield)

local menuGui = Instance.new("ScreenGui", game.CoreGui)
menuGui.Name = "JogorobloxInterface"
menuGui.ResetOnSpawn = false
menuGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Retângulo grande ocupando quase toda a tela
local mainFrame = Instance.new("Frame", menuGui)
mainFrame.Name = "MainMenu"
mainFrame.Size = UDim2.new(0.85, 0, 0.85, 0)
mainFrame.Position = UDim2.new(0.075, 0, 0.075, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BorderSizePixel = 0
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 20)

-- Layout vertical para abas (lado esquerdo)
local leftPanel = Instance.new("Frame", mainFrame)
leftPanel.Size = UDim2.new(0.25, 0, 1, 0)
leftPanel.Position = UDim2.new(0, 0, 0, 0)
leftPanel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Instance.new("UICorner", leftPanel).CornerRadius = UDim.new(0, 0)

-- Layout para os botões (lado direito)
local rightPanel = Instance.new("Frame", mainFrame)
rightPanel.Size = UDim2.new(0.75, 0, 1, 0)
rightPanel.Position = UDim2.new(0.25, 0, 0, 0)
rightPanel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Instance.new("UICorner", rightPanel).CornerRadius = UDim.new(0, 0)

-- Título no topo do menu
local title = Instance.new("TextLabel", mainFrame)
title.Text = "Jogoroblox HUB"
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, -50)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Layout para abas
local tabLayout = Instance.new("UIListLayout", leftPanel)
tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
tabLayout.Padding = UDim.new(0, 10)

-- Layout para botões
local buttonLayout = Instance.new("UIListLayout", rightPanel)
buttonLayout.SortOrder = Enum.SortOrder.LayoutOrder

local gui = game:GetService("CoreGui"):WaitForChild("JogorobloxInterface")
local menu = gui:WaitForChild("MainMenu")

-- Botão "X" para minimizar
local fechar = Instance.new("TextButton", menu)
fechar.Size = UDim2.new(0, 40, 0, 40)
fechar.Position = UDim2.new(1, -50, 0, 10)
fechar.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
fechar.TextColor3 = Color3.new(1, 1, 1)
fechar.Text = "X"
fechar.Font = Enum.Font.GothamBold
fechar.TextSize = 18
Instance.new("UICorner", fechar).CornerRadius = UDim.new(0, 10)

-- Minimiza ao clicar
fechar.MouseButton1Click:Connect(function()
    menu.Visible = false
end)

-- Reexibe com tecla "K"
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.K then
        menu.Visible = true
    end
end)
buttonLayout.Padding = UDim.new(0, 10)