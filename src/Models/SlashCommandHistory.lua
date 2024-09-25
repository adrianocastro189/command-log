--[[
Represents a World of Warcraft slash command execution history.

This class encapsulates a record of a slash command executions for persistence
and visualization purposes.
]]
local SlashCommandHistory = {}
    SlashCommandHistory.__index = SlashCommandHistory
    CommandLog:addClass('CommandLog/SlashCommandHistory', SlashCommandHistory)

    --[[
    SlashCommandHistory constructor.
    ]]
    function SlashCommandHistory.__construct()
        local self = setmetatable({}, SlashCommandHistory)

        self.slashCommandExecutions = {}

        return self
    end
-- end of SlashCommandHistory