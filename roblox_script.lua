local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Enemies = workspace:WaitForChild("Enemies")
local Lighting = game:GetService("Lighting")

local SEA1_PLACE_ID = 2753915549 -- Fixed: Added SEA1_PLACE_ID
local SEA2_PLACE_ID = 4442272183 -- Fixed: Corrected duplicate assignment
local SEA3_PLACE_ID = 7449423635
local jobId = tostring(game.JobId)
local playerCount = #Players:GetPlayers()
local joinScript = string.format(
    'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, "%s", game.Players.LocalPlayer)',
    jobId
)

--// Webhook configuration
local Kuri = {
    ["Mirage Island"] = "",
    ["Kitsune Island"] = "",
    ["Prehistoric Island"] = "",
    ["Full Moon"] = "",
    ["Near Full Moon"] = "",
    ["Rip Indra"] = "",
    ["Dough King"] = "",
    ["Cake Prince"] = "",
    ["Tyrant of the Skies"] = "",
    ["Darkbeard"] = "",
    ["Soul Reaper"] = "",
    ["Cursed Captain"] = "",
    ["Legendary Sword"] = ""
}

local WebhookURLs = getgenv().WebhookURLs or {
    ["Kuri"] = true,
    -- Có thể thêm nhiều webhook group khác ở đây
}

local WebhookGroups = {
    ["Kuri"] = Kuri,
    ["buoi"] = buoi
}

function sendBossWebhook(eventName, swordName)
    -- Determine current sea based on PlaceId
    local currentSea = "Unknown Sea"
    if game.PlaceId == SEA1_PLACE_ID then
        currentSea = "First Sea"
    elseif game.PlaceId == SEA2_PLACE_ID then
        currentSea = "Second Sea"
    elseif game.PlaceId == SEA3_PLACE_ID then
        currentSea = "Third Sea"
    end
end
