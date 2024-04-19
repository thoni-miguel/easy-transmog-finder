wowheadUrl = "https://www.wowhead.com/wow/retail"

-- Define your keybind and the function you want to execute
local MY_KEYBIND = "ALT+SHIFT+F"
local function MyFunction()
    -- Your code here
    print("Shift + Up key pressed!")
    -- Example: You can replace the print statement with any function you want to run
end

-- Register for the PLAYER_LOGIN event to ensure the player is logged in
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event, ...)
    -- Set up the OnKeyDown script handler to capture key presses
    self:SetScript("OnKeyDown", function(_, key)
        -- Check if the pressed key matches the desired keybind
        if key == MY_KEYBIND then
            -- Call the function when the keybind is pressed
            MyFunction()
        end
    end)
end)
