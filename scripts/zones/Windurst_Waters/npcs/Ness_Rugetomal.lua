-----------------------------------
-- Area: Windurst Waters
--  NPC: Ness Rugetomal
-- Standard Merchant NPC
-- Confirmed shop stock, August 2013
-----------------------------------
require("scripts/globals/events/harvest_festivals")
require("scripts/globals/shop")
local ID = require("scripts/zones/Windurst_Waters/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    onHalloweenTrade(player, trade, npc)
end

entity.onTrigger = function(player, npc)
    player:showText(npc, ID.text.NESSRUGETOMALL_SHOP_DIALOG)

    local stock =
    {
        4394,   10, 1, -- Ginger Cookie
        4407,  727, 1, -- Carp Sushi
        4425,  323, 1, -- Tomato Juice
        4459, 1656, 1, -- Nebimonite Bake
        4397,   14, 2, -- Cinna-cookie
        4422,  184, 2, -- Orange Juice
        4456, 2070, 2, -- Boiled Crab
        4510,   21, 3, -- Acorn Cookie
        4376,  108, 3, -- Meat Jerky
        4509,   10, 3, -- Distilled Water
        4538,  846, 3, -- Roast Pipira
    }

    xi.shop.nation(player, stock, xi.nation.WINDURST)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
