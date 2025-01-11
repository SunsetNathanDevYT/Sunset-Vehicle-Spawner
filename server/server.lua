RegisterCommand('spawn', function(source, args, rawCommand)
    local src = source
    if #args < 3 then
        -- Ensure there are enough arguments (vehicle, license plate, color)
        return
    end

    local vehicleName = args[1]:lower()
    local licensePlate = args[2]:upper()
    local plateColor = args[3]:lower()

    -- Send vehicle details to the client
    TriggerClientEvent('sunset:spawnVehicle', src, vehicleName, licensePlate, plateColor)
end, false)
