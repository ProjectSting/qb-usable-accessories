local QBCore = exports['qb-core']:GetCoreObject()

local chain, mask, shoe, hat, glasses, watch = nil
local chainHave, maskHave, shoeHave, hatHave, glassesHave, watchHave = false
local chainTakeoff, maskTakeoff, shoeTakeoff, hatTakeoff, glassesTakeoff, watchTakeoff = true
local chainComponent, maskComponent, shoeComponent, hatComponent, glassesComponent, watchComponent = nil

RegisterNetEvent('qb-usable-accessories:client:chains', function(type, componentId, drawableId, textureId, paletteId)
    chain = type
    chainTakeoff = not chainTakeoff
    chainComponent = componentId
	while not HasAnimDictLoaded("clothingtie") do
        RequestAnimDict("clothingtie")
        Wait(1)
	end
	TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_positive_a", 8.00, -8.00, 2100, 51, 0.00, 0, 0, 0)
	Wait(1500)
    if chainTakeoff then
        SetPedComponentVariation(PlayerPedId(), componentId, 0, 0, 2)
    elseif not chainTakeoff then
	    SetPedComponentVariation(PlayerPedId(), componentId, drawableId, textureId, paletteId)
    end
end)

RegisterNetEvent('qb-usable-accessories:client:masks', function(type, componentId, drawableId, textureId, paletteId)
    mask = type
    maskTakeoff = not maskTakeoff
    maskComponent = componentId
	while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do
        RequestAnimDict("mp_masks@standard_car@ds@")
        Wait(1)
	end
	TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 8.00, -8.00, 800, 51, 0.00, 0, 0, 0)
	Wait(600)
    if maskTakeoff then
        SetPedComponentVariation(PlayerPedId(), componentId, 0, 0, 2)
    elseif not maskTakeoff then
	    SetPedComponentVariation(PlayerPedId(), componentId, drawableId, textureId, paletteId)
    end
end)

RegisterNetEvent('qb-usable-accessories:client:shoes', function(type, componentId, drawableId, textureId, paletteId)
    shoe = type
    shoeTakeoff = not shoeTakeoff
    shoeComponent = componentId
	while not HasAnimDictLoaded("random@domestic") do
        RequestAnimDict("random@domestic")
        Wait(1)
	end
	TaskPlayAnim(PlayerPedId(), "random@domestic", "pickup_low", 8.00, -8.00, 1200, 0, 0.00, 0, 0, 0)
	Wait(1000)
    if shoeTakeoff then
        SetPedComponentVariation(PlayerPedId(), componentId, 34, 0, 2)
    elseif not shoeTakeoff then
	    SetPedComponentVariation(PlayerPedId(), componentId, drawableId, textureId, paletteId)
    end
end)

RegisterNetEvent('qb-usable-accessories:client:hats', function(type, componentId, drawableId, textureId, paletteId)
    hat = type
    hatTakeoff = not hatTakeoff
    hatComponent = componentId
	while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do
        RequestAnimDict("mp_masks@standard_car@ds@")
        Wait(1)
	end
	TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 8.00, -8.00, 800, 51, 0.00, 0, 0, 0)
	Wait(600)
    if hatTakeoff then
        SetPedComponentVariation(PlayerPedId(), componentId, 0, 0, 2)
    elseif not hatTakeoff then
	    SetPedComponentVariation(PlayerPedId(), componentId, drawableId, textureId, paletteId)
    end
end)

RegisterNetEvent('qb-usable-accessories:client:glasses', function(type, componentId, drawableId, textureId, paletteId)
    glasses = type
    glassesTakeoff = not glassesTakeoff
    glassesComponent = componentId
	while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do
        RequestAnimDict("mp_masks@standard_car@ds@")
        Wait(1)
	end
	TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 8.00, -8.00, 800, 51, 0.00, 0, 0, 0)
	Wait(600)
    if glassesTakeoff then
        SetPedComponentVariation(PlayerPedId(), componentId, 0, 0, 2)
    elseif not glassesTakeoff then
	    SetPedComponentVariation(PlayerPedId(), componentId, drawableId, textureId, paletteId)
    end
end)

RegisterNetEvent('qb-usable-accessories:client:watches', function(type, componentId, drawableId, textureId, paletteId)
    watch = type
    watchTakeoff = not watchTakeoff
    watchComponent = componentId
	while not HasAnimDictLoaded("nmt_3_rcm-10") do
        RequestAnimDict("nmt_3_rcm-10")
        Wait(1)
	end
	TaskPlayAnim(PlayerPedId(), "nmt_3_rcm-10", "cs_nigel_dual-10", 8.00, -8.00, 1200, 51, 0.00, 0, 0, 0)
	Wait(1000)
    if watchTakeoff then
        SetPedComponentVariation(PlayerPedId(), componentId, 0, 0, 2)
    elseif not watchTakeoff then
	    SetPedComponentVariation(PlayerPedId(), componentId, drawableId, textureId, paletteId)
    end
end)

CreateThread(function()
    while true do
        Wait(5)
		if LocalPlayer.state['isLoggedIn'] then
            --chain start
            QBCore.Functions.TriggerCallback('qb-usable-accessories:server:HasChain', function(cb)
                if cb then
                    chainHave = true
                end
            end, chain)
			if not chainHave then
				SetPedComponentVariation(PlayerPedId(), chainComponent, 0, 0, 2)
			end
			chainHave = false
            --chain stop
            --mask start
            QBCore.Functions.TriggerCallback('qb-usable-accessories:server:HasMask', function(cb)
                if cb then
                    maskHave = true
                end
            end, mask)
			if not maskHave then
				SetPedComponentVariation(PlayerPedId(), maskComponent, 0, 0, 2)
			end
			maskHave = false
            --mask stop
            --shoe start
            QBCore.Functions.TriggerCallback('qb-usable-accessories:server:HasShoe', function(cb)
                if cb then
                    shoeHave = true
                end
            end, shoe)
			if not shoeHave then
				SetPedComponentVariation(PlayerPedId(), shoeComponent, 34, 0, 2)
			end
			shoeHave = false
            --shoe stop
            --hat start
            QBCore.Functions.TriggerCallback('qb-usable-accessories:server:HasHat', function(cb)
                if cb then
                    hatHave = true
                end
            end, hat)
			if not hatHave then
				SetPedComponentVariation(PlayerPedId(), hatComponent, 34, 0, 2)
			end
			hatHave = false
            --hat stop
            --glasses start
            QBCore.Functions.TriggerCallback('qb-usable-accessories:server:HasGlasses', function(cb)
                if cb then
                    glassesHave = true
                end
            end, glasses)
			if not glassesHave then
				SetPedComponentVariation(PlayerPedId(), glassesComponent, 0, 0, 2)
			end
			glassesHave = false
            --glasses stop
            --watches start
            QBCore.Functions.TriggerCallback('qb-usable-accessories:server:HasWatch', function(cb)
                if cb then
                    watchHave = true
                end
            end, watch)
            if not watchHave then
                if watchComponent == 8 then
                    SetPedComponentVariation(PlayerPedId(), watchComponent, 15, 0, 2)
                else
                    SetPedComponentVariation(PlayerPedId(), watchComponent, 0, 0, 2)
                end
            end
            watchHave = false
            --watches stop
		end
		Wait(1500)
    end
end)
