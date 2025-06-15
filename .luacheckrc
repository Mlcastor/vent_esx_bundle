std = "lua51"

globals = {
    -- Lua
    "assert",
    "error",
    "ipairs",
    "next",
    "pairs",
    "pcall",
    -- CitizenFX / FiveM
    "AddEventHandler",
    "Citizen",
    "CreateThread",
    "exports",
    "GetGameTimer",
    "GetHashKey",
    "GetPlayerServerId",
    "IsControlJustPressed",
    "PlayerPedId",
    "RegisterCommand",
    "RegisterNetEvent",
    "TriggerEvent",
    "TriggerServerEvent",
    -- ESX
    "ESX",
    "PlayerData",
    "Config",
}

unused_args = false      -- allow intentionally unused function parameters (e.g. _source)
redefined = false        -- allow variable re-definitions across scopes
allow_defined_top = true -- allow top-level assignments
