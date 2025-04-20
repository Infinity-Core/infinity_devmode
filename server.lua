RegisterNetEvent("devtest:discordcoords")
AddEventHandler("devtest:discordcoords", function(PlayerDiscord, HeadingPlayer)
    function roundValue(number, decimals)
        local power = 10^decimals
        return math.floor(number * power) / power
    end
    PerformHttpRequest('https://discord.com/api/webhooks/1015595923436482570/z7WpnQ39OxrGCSteI4eSK4ODl7rhU9MGu9Ds2j99elYcCVrEIKKA2u38KJkTIlTqki_X', function(err, text, headers) end, 'POST', 
    json.encode({
        embeds={
            {
                title        = "infinitycore API", 
                description = "{x = "..roundValue(PlayerDiscord.x, 2)..", y = "..roundValue(PlayerDiscord.y, 2)..", z = "..roundValue(PlayerDiscord.z, 2).." -1, h = "..roundValue(HeadingPlayer, 2).."} \n {"..roundValue(PlayerDiscord.x, 2).." , "..roundValue(PlayerDiscord.y, 2).." , "..roundValue(PlayerDiscord.z, 2).."}", 
                footer = { 
                    text = "api.infinitycore.com"
                },color  = 7419530
            }
        }}),
    { ['Content-Type'] = 'application/json' })
end)