
-- Fundo de pontos interativos para o Jogoroblox HUB

local CoreGui = game:GetService("CoreGui")
local RS = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local gui = CoreGui:WaitForChild("JogorobloxInterface")
local menu = gui:WaitForChild("MainMenu")

-- Criar camada de fundo para os pontos (abaixo das abas)
local fundo = Instance.new("Frame", menu)
fundo.Size = UDim2.new(1, 0, 1, 0)
fundo.Position = UDim2.new(0, 0, 0, 0)
fundo.BackgroundTransparency = 1
fundo.Name = "PontoFundo"
fundo.ZIndex = 0

-- Configurações dos pontos
local espacamento = 40
local tamanho = 3
local atracao = 10
local alcance = 100

local pontos = {}

-- Tamanho do fundo (em pixels)
local function criarPontos()
    local largura = fundo.AbsoluteSize.X
    local altura = fundo.AbsoluteSize.Y

    for x = 0, largura, espacamento do
        for y = 0, altura, espacamento do
            -- Ignora a faixa da esquerda (onde ficam as abas)
            if x > 150 then
                local ponto = Instance.new("Frame", fundo)
                ponto.Size = UDim2.new(0, tamanho, 0, tamanho)
                ponto.Position = UDim2.new(0, x, 0, y)
                ponto.BackgroundColor3 = Color3.new(1, 1, 1)
                ponto.BorderSizePixel = 0
                ponto.AnchorPoint = Vector2.new(0.5, 0.5)
                ponto.ZIndex = 0
                ponto.Name = "ponto"
                table.insert(pontos, {
                    gui = ponto,
                    original = Vector2.new(x, y)
                })
            end
        end
    end
end

-- Atualização visual por frame
local function atualizar()
    local mouse = UserInputService:GetMouseLocation()
    local offset = gui.AbsolutePosition

    for _, ponto in ipairs(pontos) do
        local gui = ponto.gui
        local original = ponto.original
        local dist = (Vector2.new(gui.AbsolutePosition.X, gui.AbsolutePosition.Y) - mouse).Magnitude

        if dist < 100 then
            local direcao = (mouse - Vector2.new(gui.AbsolutePosition.X, gui.AbsolutePosition.Y)).Unit
            local deslocamento = direcao * (atracao * (1 - dist / alcance))
            local novaPos = original + deslocamento
            gui.Position = UDim2.new(0, novaPos.X, 0, novaPos.Y)
        else
            gui.Position = UDim2.new(0, original.X, 0, original.Y)
        end
    end
end

-- Criar e animar
criarPontos()
RS.RenderStepped:Connect(atualizar)
