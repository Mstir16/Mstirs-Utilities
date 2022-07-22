local ScriptURL = "https://raw.githubusercontent.com/Mstir16/Mstirs-Utilities/main/Roblox/"..tostring(game.PlaceId)..".lua"

local http = nil
        
function CheckExecutor()
   if syn and not fluxus then
       http = syn.request
       exploit = "Synapse X"
       return true
   elseif not syn and not fluxus and not KRNL_LOADED then
       if getexecutorname() == "ScriptWare" then
           exploit = "Script-Ware"
           http = request
           return true
       else
           return false
       end
   end
   exploit = "UnSupported"
   return false
end
CheckExecutor()
wait()
if http == nil then 
    game.StarterGui:SetCore("SendNotification", {
        Title = "Mstir's Utilities";
        Text = "Exploit UnSupported!";
        Duration = 10;
    });
    return 
end

local Response = syn.request({
    Url = ScriptURL,
    Method = "GET"
})

if Response.StatusCode ~= 404 then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Mstir's Utilities";
        Text = "Script Found in Place Id: "..tostring(game.PlaceId);
        Duration = 10;
    });
    loadstring(game:HttpGet(ScriptURL))()
else
    function join()
        local http = nil

        function CheckExecutor()
            if syn and not fluxus then
                http = syn.request
                print('synapse')
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
        if http == nil then return end
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
                        ["code"] = "XqW8Sguk33",
                    },
                    ["cmd"] = "INVITE_BROWSER",
                    ["nonce"] = "."
                })
            })
    end
    setclipboard("https://discord.gg/7gN9zDeKUH")
    join()
        
    game.StarterGui:SetCore("SendNotification", {
        Title = "Mstir's Utilities";
        Text = "Script Not Found/Doesn't Exist";
        Duration = 10;
    });
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Mstir's Utilities";
        Text = "Join the discord & check #roblox-script";
        Duration = 10;
    });
end
