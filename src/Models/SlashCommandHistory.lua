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

    --[[
    Inserts a command execution at the top of this history instance.

    @treturn boolean Whether the command execution was successfully inserted
    ]]
    function SlashCommandHistory:insert(slashCommandExecution)
        -- @TODO: Implement this in SH4 <2024.09.25>
    end

    --[[
    Clears the command execution history and fill it with the given array by
    converting its elements to SlashCommandExecution instances.

    This method also truncates the history to the allowed maximum number of
    elements.
    ]]
    function SlashCommandHistory:setFromArray(historyArray)
        -- @TODO: Implement this in SH3 <2024.09.25>
    end

    --[[
    Converts the command execution history to an array of "serializable"
    elements.

    This method is the one to be called when saving the history to any data
    structure.

    @treturn table The command execution history as an array
    ]]
    function SlashCommandHistory:toArray()
        -- @TODO: Implement this in SH5 <2024.09.25>
    end

    --[[
    Truncates the command execution history to the allowed maximum number of
    elements.

    The allowed maximum number of elements is defined by an addon setting.
    ]]
    function SlashCommandHistory:truncateHistory()
        -- @TODO: Implement this in SH2 <2024.09.25>
    end
-- end of SlashCommandHistory