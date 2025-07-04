
-- Botões no painel da direita da interface principal personalizada

local rightPanel = game:GetService("CoreGui"):WaitForChild("JogorobloxInterface"):WaitForChild("MainMenu"):WaitForChild("rightPanel")

local function criarBotao(nome, acao)
    local btn = Instance.new("TextButton", rightPanel)
    btn.Size = UDim2.new(0.6, 0, 0, 40)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = nome
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)

    btn.MouseButton1Click:Connect(acao)

    -- Hover roxo
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(140, 0, 255)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    end)
end

-- Criar os botões
criarBotao("ESP", function()
    print("ESP ativado")
end)

criarBotao("Fly", function()
    print("Fly ativado")
end)

criarBotao("Speed", function()
    print("Speed ativado")
end)

criarBotao("AutoKill", function()
    print("AutoKill ativado")
end)

criarBotao("Teleport", function()
    print("Teleport ativado")
end)
