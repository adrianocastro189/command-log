--[[--
Represents a World of Warcraft slash command.

This is a model, which means it is a class that represents a concept in the
game, not a slash command executor, even if it may contain methods that execute
itself.

Although designed in CommandLog, this class is a candidate to be part of
Stormwind Library down the road.
]]
local SlashCommand = {}
    SlashCommand.__index = SlashCommand
    CommandLog:addClass('CommandLog/SlashCommand', SlashCommand)

    --[[--
    SlashCommand constructor.
    ]]
    function SlashCommand.__construct()
        local self = setmetatable({}, SlashCommand)

        -- add properties here

        return self
    end
-- end of SlashCommand