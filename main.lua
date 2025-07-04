
-- Jogoroblox HUB Loader
-- Repositório: https://github.com/hubzinbr/Jogoroblox-HUB

local repo = "https://raw.githubusercontent.com/hubzinbr/Jogoroblox-HUB/main/"

-- Tela de carregamento
loadstring(game:HttpGet(repo .. "carregamento.lua"))()
task.wait(2)

-- Verificação de Key
loadstring(game:HttpGet(repo .. "key.lua"))()

-- Após key correta, seu key.lua deve carregar automaticamente:
-- loadstring(game:HttpGet(repo .. "interface.lua"))()
-- loadstring(game:HttpGet(repo .. "botoes.lua"))()
-- loadstring(game:HttpGet(repo .. "abas.lua"))()
-- loadstring(game:HttpGet(repo .. "config.lua"))()
-- loadstring(game:HttpGet(repo .. "musica.lua"))()
