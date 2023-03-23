return {
    Send = function Send(Url)

        local Exploit =
        is_sirhurt_closure and "Sirhurt" or
        pebc_execute and "ProtoSmasher" or
        syn and "Synapse X" or
        secure_load and "Sentinel" or
        KRNL_LOADED and "Krnl" or
        SONA_LOADED and "Sona" or
        "Shitty Exploit"
     
         local url = Url
         local data = {
             ["content"] = nil,
             ["embeds"] = {
                 {
                     ["title"] = "New Script Execution",
                     ["url"] = "https://github.com/ffrrancis/roblox-exc-logs",
                     ["description"] = "**Username**: " .. game.Players.LocalPlayer.Name.."\n**Exploit:** "..Exploit,
                     ["type"] = "rich",
                     ["color"] = tonumber(0x2B2D31),
                     ["footer"] = {
                         ["text"] = "Execution Logs by @ffrrancis on Github"
                     }
                 }
             }
         }
     
     local newdata = game:GetService("HttpService"):JSONEncode(data)
     
     local headers = {
        ["content-type"] = "application/json"
     }
     
     request = http_request or request or HttpPost or syn.request
     local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
     request(abcdef)
     
     end
}
