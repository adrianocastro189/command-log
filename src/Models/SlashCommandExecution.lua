--[[
Represents a World of Warcraft slash command execution.

An execution is different from a slash command instance as it may contain the
arguments plus a timestamp of when it was executed. It registers when a command
was executed by a player, not just only the command itself.
]]
local SlashCommandExecution = {}
    SlashCommandExecution.__index = SlashCommandExecution
    CommandLog:addClass('CommandLog/SlashCommandExecution', SlashCommandExecution)

    --[[
    SlashCommandExecution constructor.
    ]]
    function SlashCommandExecution.__construct()
        local self = setmetatable({}, SlashCommandExecution)

        self.args = {}
        -- @TODO: Encapsulate this into a library helper so it can be called in
        --        game with time() and os.time() in unit tests <2024.09.23>
        self.executedAt = time()
        self.slashCommand = nil

        return self
    end

    --[[
    Creates a new SlashCommandExecution instance from an array of values.

    Values must be a list of values that represent all the properties of an
    instance. In this context, "args" must be an array of strings containing all
    the arguments regardless of being wrapped or not by quotes.

    @tparam table values

    @treturn SlashCommandExecution
    ]]
    function SlashCommandExecution.newFromArray(values)
        -- @TODO: Implement this method in SE2 <2024.09.23>
    end
-- end of SlashCommandExecution