wowheadUrl = "https://www.wowhead.com/wow/retail"

-- Create a frame to handle the keybind
local frame = CreateFrame("Frame", "MyKeybindFrame", UIParent, "SecureHandlerBaseTemplate")


-- Register the keybind
frame:SetAttribute("_onstate-keyup", [[
    if newstate == "up" then
        -- Call your specific function when the keybind is pressed
        MyFunction()
    end
]])

-- Set up the keybind
SetBinding(frame, "keyup", "[mod:shift] up; none")

-- Function to be called when the keybind is pressed
function MyFunction()
    -- Your specific function code goes here
    print("Keybind pressed!")
    local item = C_Cursor.GetCursorItem
    print(item)
end
