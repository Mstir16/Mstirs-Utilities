local y,n = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mstir16/Mstirs-Utilities/main/Roblox/"..game.PlaceId..".lua"))()
end)

if not y then
   game.StarterGui:SetCore("SendNotification", {
        Title = "Mstir's Utilities";
        Text = "No Script for this game! Check whats supported in discord";
        Duration = 10;
    });
end
