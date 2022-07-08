local ScriptURL = "https://raw.githubusercontent.com/Mstir16/Mstirs-Utilities/main/Roblox/"..tostring(game.PlaceId)..".lua"

local http = nil
        
function CheckExecutor()
   if syn and not fluxus then
       http = syn.request
       exploit = "Synapse X"
       return true
   elseif KRNL_LOADED then
       http = http_request
       exploit = "KRNL"
       return true 
   elseif fluxus then
       exploit = "Fluxus"
       http = fluxus.request
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
    game.StarterGui:SetCore("SendNotification", {
        Title = "Mstir's Utilities";
        Text = "Script Not Found/Doesn't Exist";
        Duration = 10;
    });
end
