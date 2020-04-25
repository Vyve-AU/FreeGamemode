local Proxy = module("_core", "libs/Proxy")
local Tunnel = module("_core", "libs/Tunnel")

API = Proxy.getInterface("API")
cAPI = Tunnel.getInterface("cAPI")

RegisterCommand('teste', function(source, args, rawCommand)
    API.varyHunger(source, 1)
end)