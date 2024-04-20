local frame = CreateFrame("Frame")

local function sendLinkToChat(linkGenerated)
    local playerName = UnitName("Player")
    SendChatMessage(linkGenerated, "WHISPER", nil, playerName)


end


local function myFunction(itemID)
    print("info: " .. itemID)
    -- itemAppearanceID, itemModifiedAppearanceID = C_TransmogCollection.GetItemInfo(itemLink)
    local linkGenerated = "https://www.wowhead.com/item=" .. itemID
    sendLinkToChat(linkGenerated)
end


function OnTooltipSetItem(tooltip, ...)
    local itemName, itemLink, item = tooltip:GetItem()
    if itemName and itemLink then
        if IsLeftShiftKeyDown() and IsAltKeyDown() then
            myFunction(item)
        end
    end
end

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnTooltipSetItem)

