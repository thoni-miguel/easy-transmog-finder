wowheadUrl = "https://www.wowhead.com/wow/retail"

-- Create a frame to handle the keybind
-- Define your keybind and the function you want to execute
local MY_KEYBIND = "SHIFT+UP"
local function MyFunction()
    -- Your code here
    print("Shift + Up key pressed!")
    -- Example: You can replace the print statement with any function you want to run
end

-- Register for the PLAYER_LOGIN event to ensure the player is logged in
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event, ...)
    -- Register the keybind when the player logs in
    SetOverrideBinding(frame, true, MY_KEYBIND, "MyBindingName")
    -- Set up the function to be called when the keybind is pressed
    hooksecurefunc("MyBindingName", MyFunction)
end)
