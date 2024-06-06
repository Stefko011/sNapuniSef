
-- Eventi za Notifikacije
RegisterNetEvent('ox_lib:notify')
AddEventHandler('ox_lib:notify', function(data)
    lib.notify({
        type = data.type, -- 'uspešno', 'greška', 'info', itd.
        description = data.description,
        duration = data.duration or 5000 -- Dužina u milisekundama
    })
end)
