game.StarterGui:SetCore("SendNotification", {
    Title = "Mstir's Utilities";
    Text = "Make sure this is a Supported Game!";
    Duration = 10;
});

game.StarterGui:SetCore("SendNotification", {
    Title = "Mstir's Utilities";
    Text = "Before saying it doesn't work!";
    Duration = 10;
});

loadstring(game:HttpGet("https://raw.githubusercontent.com/Mstir16/Mstirs-Utilities/main/Roblox/"..tostring(game.PlaceId)..".lua"))()
