-- qb_wateroverride/server.lua
-- This resource is intended to be restarted to apply a different water XML.
-- Because live-swapping water files is not universally supported at runtime,
-- we rely on a restart of this resource with a convar to choose which XML to register.
-- You must uncomment and set the proper data_file line in fxmanifest.lua for your build.

local phase = GetConvar('qbwater:phase', 'normal') -- 'normal' | 'flood' | 'max'

AddEventHandler('onResourceStart', function(res)
    if res ~= GetCurrentResourceName() then return end
    print(('[qb_wateroverride] starting with phase: %s'):format(phase))
    print('[qb_wateroverride] NOTE: Ensure fxmanifest has the correct data_file active for this phase.')
end)

RegisterNetEvent('qb_wateroverride:server:setPhase', function(newPhase)
    if type(newPhase) ~= 'string' then return end
    newPhase = newPhase:lower()
    if newPhase ~= 'normal' and newPhase ~= 'flood' and newPhase ~= 'max' then return end
    -- Persist via setting convar (temporary for session) and restart this resource
    SetConvarReplicated('qbwater:phase', newPhase)
    print(('[qb_wateroverride] Switching phase to %s and restarting resource...'):format(newPhase))
    CreateThread(function()
        Wait(100)
        StopResource(GetCurrentResourceName())
        Wait(500)
        StartResource(GetCurrentResourceName())
    end)
end)
