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
    Gets the maximum allowed length of the command execution history.

    @treturn number The maximum allowed length of the command execution history
    ]]
    function SlashCommandHistory:getMaximumAllowedLength()
        -- @TODO: Replace this method's logic with setting automatic number
        --        conversion when it's implemented <2024.09.25>
        local setting = CommandLog:setting('history.limit')
        local limit = tonumber(setting:getValue())

        return limit ~= nil and limit or setting.default
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

    This method also truncates the history to the maximum allowed number of
    elements.

    @tparam table historyArray The command execution history as an array
    ]]
    function SlashCommandHistory:setFromArray(historyArray)
        self.slashCommandExecutions = {}
        CommandLog.arr:each(historyArray, function(values)
            local execution = CommandLog
                :getClass('CommandLog/SlashCommandExecution')
                .newFromArray(values)

            table.insert(self.slashCommandExecutions, execution)
        end)
        self:truncateHistory()
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
    Truncates the command execution history to the maximum allowed number of
    elements.

    The maximum allowed number of elements is defined by an addon setting.
    ]]
    function SlashCommandHistory:truncateHistory()
        self.slashCommandExecutions = CommandLog.arr:truncate(
            self.slashCommandExecutions,
            self:getMaximumAllowedLength()
        )
    end
-- end of SlashCommandHistory