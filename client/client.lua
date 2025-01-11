RegisterNetEvent('sunset:spawnVehicle')
AddEventHandler('sunset:spawnVehicle', function(vehicleName, licensePlate, plateColor)
    -- Check if the model exists
    local model = GetHashKey(vehicleName)
    if not IsModelInCdimage(model) or not IsModelAVehicle(model) then
        -- If the vehicle model is invalid, do nothing
        return
    end

    -- Load the vehicle model
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end

    -- Get the player's position
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)

    -- Create the vehicle
    local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z, heading, true, false)
    SetPedIntoVehicle(playerPed, vehicle, -1) -- Put the player in the driver's seat

    -- Set the license plate
    SetVehicleNumberPlateText(vehicle, licensePlate)

    -- Determine and apply the license plate color
    local plateIndex
    if plateColor == "black" then
        plateIndex = 1 -- Black and yellow
    elseif plateColor == "white" then
        plateIndex = 0 -- White
    elseif plateColor == "blue" then
        plateIndex = 2 -- Blue
    elseif plateColor == "yellow" then
        plateIndex = 3 -- Yellow on blue
    else
        plateIndex = 0 -- Default to white if invalid
    end

    SetVehicleNumberPlateTextIndex(vehicle, plateIndex)

    -- Release the vehicle model
    SetModelAsNoLongerNeeded(model)
end)
