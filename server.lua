-- Funkcija za obaveštavanje igrača koristeći ox_lib
function Notifikacija(playerId, message, messageType)
    TriggerClientEvent('ox_lib:notify', playerId, {
        type = messageType, -- 'uspešno', 'greška', 'info'.
        description = message,
        duration = 5000 -- Dužina u milisekundama
    })
end

-- Komanda
RegisterCommand('napunisef', function(source, args, rawCommand)
    -- Provera za admina
    if not IsPlayerAceAllowed(source, "group.admin") then
        Notifikacija(source, "Nemate dozvolu da koristite ovu komandu.", 'error')
        return
    end

    local sefId = args[1]
    if not sefId then
        Notifikacija(source, "Koriscenje: /napunisef <sefId>", 'error')
        return
    end

    -- Itemi
    local itemi = {
        {ime = 'WEAPON_PISTOL', kolicina = 10},
        {ime = 'WEAPON_ASSAULTRIFLE', kolicina = 5},
        {ime = 'WEAPON_SMG', kolicina = 7},
        {ime = 'bandage', kolicina = 3}
    }

    -- Dodavanje Itema u SEF
    for _, item in ipairs(itemi) do
        exports.ox_inventory:AddItem(sefId, item.ime, item.kolicina)
    end

    Notifikacija(source, "Sef " .. sefId .. " je napunjen.", 'success')
end, true)
