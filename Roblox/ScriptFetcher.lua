local y,n = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mstir16/Mstirs-Utilities/main/Roblox/"..tostring(game.PlaceId)..".lua"))()
end)

if not y then
   game.StarterGui:SetCore("SendNotification", {
        Title = "Mstir's Utilities";
        Text = "No Script for this game! Check whats supported in discord";
        Duration = 10;
    });
    
    function join()
        local http = nil

        function CheckExecutor()
            if syn and not fluxus then
                http = syn.request
                print('synapse')
                return true
            elseif KRNL_LOADED then
                print('krnl')
                http = http_request
                return true 
            elseif fluxus then
                print('fluxus')
                http = fluxus.request
                return true
            elseif not syn and not fluxus and not KRNL_LOADED then
                if getexecutorname() == "ScriptWare" then
                    print('script-ware')
                    http = request
                    return true
                else
                    return false
                end
            end
            return false
        end
        CheckExecutor()
        wait()
        if http == nil then Status.Text = "Error: Exploit not Supported" return end
        http(
            {
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["origin"] = "https://discord.com",
                },
                Body = game:GetService("HttpService"):JSONEncode(
                {
                    ["args"] = {
                        ["code"] = "7gN9zDeKUH",
                    },
                    ["cmd"] = "INVITE_BROWSER",
                    ["nonce"] = "."
                })
            })
    end
    setclipboard("https://discord.gg/7gN9zDeKUH")
    join()
end
