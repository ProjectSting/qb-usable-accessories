local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-usable-accessories:server:HasChain', function(source, cb, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item) then
		cb(true)
	end 
end)
QBCore.Functions.CreateCallback('qb-usable-accessories:server:HasMask', function(source, cb, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item) then
		cb(true)
	end 
end)
QBCore.Functions.CreateCallback('qb-usable-accessories:server:HasShoe', function(source, cb, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item) then
		cb(true)
	end 
end)
QBCore.Functions.CreateCallback('qb-usable-accessories:server:HasHat', function(source, cb, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item) then
		cb(true)
	end 
end)
QBCore.Functions.CreateCallback('qb-usable-accessories:server:HaGlasses', function(source, cb, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item) then
		cb(true)
	end 
end)
QBCore.Functions.CreateCallback('qb-usable-accessories:server:HasWatch', function(source, cb, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName(item) then
		cb(true)
	end 
end)

CreateThread(function()
    for k, v in pairs(Config.Chains) do
        QBCore.Functions.CreateUseableItem(k, function(source)
            TriggerClientEvent('qb-usable-accessories:client:chains', source, k, v.componentId, v.drawableId, v.textureId, v.paletteId)         
        end)
    end

    for k, v in pairs(Config.Masks) do
        QBCore.Functions.CreateUseableItem(k, function(source, item)
            TriggerClientEvent('qb-usable-accessories:client:masks', source, k, v.componentId, v.drawableId, v.textureId, v.paletteId)
        end)
    end

    for k, v in pairs(Config.Shoes) do
        QBCore.Functions.CreateUseableItem(k, function(source)
            TriggerClientEvent('qb-usable-accessories:client:shoes', source, k, v.componentId, v.drawableId, v.textureId, v.paletteId)
        end)
    end
    for k, v in pairs(Config.Hats) do
        QBCore.Functions.CreateUseableItem(k, function(source)
            TriggerClientEvent('qb-usable-accessories:client:hats', source, k, v.componentId, v.drawableId, v.textureId, v.paletteId)
        end)
    end
    for k, v in pairs(Config.Glasses) do
        QBCore.Functions.CreateUseableItem(k, function(source)
            TriggerClientEvent('qb-usable-accessories:client:glasses', source, k, v.componentId, v.drawableId, v.textureId, v.paletteId)
        end)
    end
    for k, v in pairs(Config.Watches) do
        QBCore.Functions.CreateUseableItem(k, function(source)
            TriggerClientEvent('qb-usable-accessories:client:watches', source, k, v.componentId, v.drawableId, v.textureId, v.paletteId)
        end)
    end
end)
