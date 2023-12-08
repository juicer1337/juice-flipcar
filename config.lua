Config = {}
--

Config.UseESX = true                        -- Use ESX Framework
Config.UseQBCore = false                    -- Use QBCore Framework (Ignored if Config.UseESX = true)

Config.UseCustomNotify = true                -- Use a custom notification script, must complete event below.

-- Only complete this event if Config.UseCustomNotify is true; mythic_notification provided as an example
RegisterNetEvent('angelicxs-flipcar:CustomNotify')
AddEventHandler('angelicxs-flipcar:CustomNotify', function(message, type)
    --exports.mythic_notify:SendAlert(type, message, 4000)
    lib.notify({
        title = "FLIP",
        description = message,
        type = 'success'
    })
end)

Config.TimetoFlip = 30                        -- How long, in seconds, to flip the car.

Config.Jobs = {                                -- List of permitted jobs; leave empty table for to allow all.

}
Config.AndOr = true                            --  Logic to determine item requirement
                                            -- If false car can be flipped with either meeting the job or item requirement (if needed/wanted you can ignore Config.RequiredItem with this setting)
                                            -- If true car can only be flipped by having both job and item requirement
Config.RequiredItem = 'carjack'        -- Replace 'itemnamehere' with item to be used for flipping vehicles, it is NOT removed on use, it only needs to be in the inventory (can be ignored if Config.AndOr = or and no item is wanted). 


-- Visual Preference
Config.UseThirdEye = true                     -- Enables using a third eye (depending on version will need to update export to target all vehicles)
Config.ThirdEyeName = 'ox_target'             -- Name of third eye aplication
Config.UseChatCommand = false                -- Enables using chat command to flip vehicle. Must be true if Config.UseThirdEye=false.
Config.ChatCommand = 'flipcar'              -- When Config.UseChatCommand = true, is the phrase used to flip vehicle.

-- Language Configuration
Config.LangType = {
    ['error'] = 'error',
    ['success'] = 'success',
    ['info'] = 'inform'
}

Config.Lang = {
    ['flipped'] = 'You have flipped the vehicle!',
    ['allset'] = 'Vehicle is already upright', 
    ['in_vehicle'] = 'You can not flip the vehicle from inside!',
    ['far_away'] = 'You are not close enough flip the vehicle!',
    ['not_allowed'] = 'You don\'t have the training or tools to flip a vehicle!',
}
