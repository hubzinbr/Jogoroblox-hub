
-- Abas do menu no painel da esquerda (sem Rayfield)

local leftPanel = game:GetService("CoreGui"):WaitForChild("JogorobloxInterface"):WaitForChild("MainMenu"):WaitForChild("leftPanel")

local function criarAba(nome)
    local aba = Instance.new("TextButton", leftPanel)
    aba.Size = UDim2.new(0.9, 0, 0, 40)
    aba.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    aba.TextColor3 = Color3.fromRGB(255, 255, 255)
    aba.Text = nome
    aba.Font = Enum.Font.GothamBold
    aba.TextSize = 16
    Instance.new("UICorner", aba).CornerRadius = UDim.new(0, 10)

    -- Hover roxo
    aba.MouseEnter:Connect(function()
        aba.BackgroundColor3 = Color3.fromRGB(140, 0, 255)
    end)
    aba.MouseLeave:Connect(function()
        aba.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    end)

    -- Ação temporária (teste)
    aba.MouseButton1Click:Connect(function()
        print("Aba selecionada:", nome)
    end)
end

-- Criar abas
criarAba("Alt")
criarAba("Configurações")
criarAba("Brookhaven")
criarAba("Jogos")
criarAba("Sobre")
