local RSGCore = exports['rsg-core']:GetCoreObject()

-- main admin base menu
RegisterNetEvent('rsg-adminmenu:client:openadminmenu', function()

    lib.registerContext({
        id = 'admin_mainmenu',
        title = 'Admin Menu',
        options = {
            {
                title = 'Admin Options',
                description = 'view admin options',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:adminoptions',
                arrow = true
            },
            {
                title = 'Player Options',
                description = 'view player options',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:playersoptions',
                arrow = true
            },
            {
                title = 'Manage Server',
                description = 'view server options',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:serveroptions',
                arrow = true
            },
            {
                title = 'Developer Options',
                description = 'view developer options',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:devoptions',
                arrow = true
            },
        }
    })
    lib.showContext('admin_mainmenu')

end)

-- admin options menu
RegisterNetEvent('rsg-adminmenu:client:adminoptions', function()

    lib.registerContext({
        id = 'admin_optionsmenu',
        title = 'Admin Options Menu',
        menu = 'admin_mainmenu',
        onBack = function() end,
        options = {
            {
                title = 'Teleport to Marker',
                description = 'you must have a marker set before doing this',
                icon = 'fa-solid fa-fingerprint',
                event = 'RSGCore:Command:GoToMarker',
                arrow = true
            },
            {
                title = 'Self Revive',
                description = 'revive yourself from the dead',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-medic:client:adminRevive',
                arrow = true
            },
            {
                title = 'Go Invisible',
                description = 'toggle invisible on/off',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:goinvisible',
                arrow = true
            },
            {
                title = 'God Mode',
                description = 'toggle god mode on/off',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:godmode',
                arrow = true
            },
        }
    })
    lib.showContext('admin_optionsmenu')

end)

-----------------------------------------------------------------------------------
-- player options
-----------------------------------------------------------------------------------

-- players options menu
RegisterNetEvent('rsg-adminmenu:client:playersoptions', function()
    RSGCore.Functions.TriggerCallback('rsg-adminmenu:server:getplayers', function(players)
        local options = {}
        for k, v in pairs(players) do
            options[#options + 1] = {
                title = 'ID: '..k..' | '..v.name,
                description = '',
                icon = 'fa-solid fa-circle-user',
                event = 'rsg-adminmenu:client:playermenu',
                args = { name = v.name, player = k },
                arrow = true,
            }
        end
        lib.registerContext({
            id = 'players_optionssmenu',
            title = 'Players Menu',
            menu = 'admin_mainmenu',
            onBack = function() end,
            position = 'top-right',
            options = options
        })
        lib.showContext('players_optionssmenu')
    end)
end)

-----------------------------------------------------------------------------------

-- player menu
RegisterNetEvent('rsg-adminmenu:client:playermenu', function(data)

    lib.registerContext({
        id = 'player_menu',
        title = data.name,
        menu = 'players_optionssmenu',
        onBack = function() end,
        options = {
            {
                title = 'Revive Player',
                description = 'revive this player',
                icon = 'fa-solid fa-fingerprint',
                serverEvent = 'rsg-adminmenu:server:playerrevive',
                args = { id = data.player },
                arrow = true
            },
            {
                title = 'Player Inventory',
                description = 'open a players inventory, press [I] when open',
                icon = 'fa-solid fa-fingerprint',
                serverEvent = 'rsg-adminmenu:server:openinventory',
                args = { id = data.player },
                arrow = true
            },
            {
                title = 'Kick Player',
                description = 'kick a player from the server with reason',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:kickplayer',
                args = { id = data.player, name = data.name },
                arrow = true
            },
            {
                title = 'Ban Player',
                description = 'ban a player from the server with reason',
                icon = 'fa-solid fa-fingerprint',
                event = 'rsg-adminmenu:client:banplayer',
                args = { id = data.player, name = data.name },
                arrow = true
            },
        }
    })
    lib.showContext('player_menu')

end)

-- server options menu
RegisterNetEvent('rsg-adminmenu:client:serveroptions', function()

    lib.registerContext({
        id = 'server_optionssmenu',
        title = 'Server Options Menu',
        menu = 'admin_mainmenu',
        onBack = function() end,
        options = {
            {
                title = 'title',
                description = 'description',
                icon = 'fa-solid fa-fingerprint',
                event = '',
                arrow = true
            },
        }
    })
    lib.showContext('server_optionssmenu')

end)

-- server options menu
RegisterNetEvent('rsg-adminmenu:client:devoptions', function()

    lib.registerContext({
        id = 'dev_optionssmenu',
        title = 'Developer Options Menu',
        menu = 'admin_mainmenu',
        onBack = function() end,
        options = {
            {
                title = 'title',
                description = 'description',
                icon = 'fa-solid fa-fingerprint',
                event = '',
                arrow = true
            },
        }
    })
    lib.showContext('dev_optionssmenu')

end)

-------------------------------------------------------------------
-- go invisible
-------------------------------------------------------------------
local invisible = false
RegisterNetEvent('rsg-adminmenu:client:goinvisible', function()
    TriggerServerEvent('rsg-logs:server:CreateLog', 'admin', 'Admin Options', 'red', GetPlayerName() .. ' toggled > INVISIBLE MODE <')
    if invisible then
        SetEntityVisible(PlayerPedId(), true)
        invisible = false
        lib.notify({ title = 'Invisible On', description = 'as you can see you are invisible!', type = 'inform' })
    else
        SetEntityVisible(PlayerPedId(), false)
        invisible = true
        lib.notify({ title = 'Invisible Off', description = 'as you can see you are not invisible!', type = 'inform' })
    end
end)

-------------------------------------------------------------------
-- god mode
-------------------------------------------------------------------
RegisterNetEvent('rsg-adminmenu:client:godmode', function()
    godmode = not godmode
    if godmode == true then
        lib.notify({ title = 'God Mode On', description = 'god mode is now on!', type = 'inform' })
    end
    TriggerServerEvent('rsg-logs:server:CreateLog', 'admin', 'Admin Options', 'red', GetPlayerName() .. ' toggled > GODMODE <')
    if godmode then
        while godmode do
            Wait(0)
            SetPlayerInvincible(PlayerPedId(), true)
        end
        SetPlayerInvincible(PlayerPedId(), false)
        lib.notify({ title = 'God Mode Off', description = 'god mode is now off!', type = 'inform' })
    end
end)

-------------------------------------------------------------------
-- open player inventory
-------------------------------------------------------------------
RegisterNetEvent('rsg-adminmenu:client:openinventory', function(targetPed)
    TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", targetPed)
end)

-------------------------------------------------------------------
-- kick player reason
-------------------------------------------------------------------
RegisterNetEvent('rsg-adminmenu:client:kickplayer', function(data)
    local input = lib.inputDialog('Kick Player : '..data.name, {
        { 
            label = 'Reason',
            type = 'input',
            required = true,
        },
    })
    if not input then return end

    TriggerServerEvent('rsg-adminmenu:server:kickplayer', data.id, input[1])

end)

-------------------------------------------------------------------
-- ban player reason
-------------------------------------------------------------------
RegisterNetEvent('rsg-adminmenu:client:banplayer', function(data)
    local input = lib.inputDialog('Ban Player : '..data.name, {
        { 
            label = 'Ban Type',
            type = 'select',
                options = {
                    { value = "permanent", label = "Permanent" },
                    { value = "temporary", label = "Temporary" },
                },
            required = true,
        },
        { 
            label = 'Ban Time',
            type = 'select',
                options = {
                    { value = '3600', label = "1 Hour" },
                    { value = '21600', label = "6 Hours" },
                    { value = '43200', label = "12 Hours" },
                    { value = '86400', label = "1 Day" },
                    { value = '259200', label = "3 Days" },
                    { value = '604800', label = "1 Week" },
                    { value = '2678400', label = "1 Month" },
                    { value = '8035200', label = "3 Months" },
                    { value = '16070400', label = "6 Months" },
                    { value = '32140800', label = "1 Year" }
                },
            required = true,
        },
        { 
            label = 'Reason',
            type = 'input',
            required = true,
        }
	})

    if not input then return end

    -- permanent ban
    if input[1] == 'permanent' then
        TriggerServerEvent('rsg-adminmenu:server:banplayer', data.id, '99999999999', input[3])
    end
    -- temporary ban
    if input[1] == 'temporary' then
        TriggerServerEvent('rsg-adminmenu:server:banplayer', data.id, input[2], input[3])
    end
end)
