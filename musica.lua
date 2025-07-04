
-- Música ambiente que toca ao abrir o menu (sem botão de controle)

local som = workspace:FindFirstChild("JogorobloxMusic")
if not som then
    som = Instance.new("Sound", workspace)
    som.Name = "JogorobloxMusic"
    som.SoundId = "rbxassetid://4290728499" -- Música clássica da Roblox
    som.Volume = 1
    som.Looped = true
    som:Play()
end
