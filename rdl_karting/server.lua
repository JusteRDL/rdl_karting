ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('RDLkarting:SpawnKart')
AddEventHandler('RDLkarting:SpawnKart', function(Label, Value, Price)
    local _src = source
	local xPlayer = ESX.GetPlayerFromId(_src)
    local car = Value
	
	if(xPlayer.getAccount('bank').money >= Price) then
		xPlayer.removeAccountMoney('bank', Price)
        TriggerClientEvent('RDLkarting:spawnCar',source,car)
		Citizen.Wait(10000)
		TriggerClientEvent('esx:showAdvancedNotification', _src, 'Banque', 'Conseiller', 'Un prélèvement de ~r~'..Price..'$ ~s~a été effectué sur votre compte bancaire !', 'CHAR_BANK_MAZE', 1)
	else
		TriggerClientEvent('esx:showAdvancedNotification', _src, 'Banque', 'Conseiller', 'Vous n\'avez pas suffisament d\'argent sur votre compte bancaire!', 'CHAR_BANK_MAZE', 2)
	end	
end)
