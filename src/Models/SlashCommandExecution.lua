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
    the arguments as broken by empty spaces regardless of being wrapped or not
    by quotes.

    @tparam table values

    @treturn SlashCommandExecution
    ]]
    function SlashCommandExecution.newFromArray(values)
        local instance = SlashCommandExecution.__construct()

        instance.args = values.args or {}
        instance.executedAt = values.executedAt
        instance.slashCommand = CommandLog
            :new('CommandLog/SlashCommand')
            :setCommand(values.slashCommand)

        return instance
    end

    --[[
    Parses a slash command represented by a string and returns a new instance.

    It's important to mention that this will return an instence with executedAt
    set to the current time.

    @tparam string value

    @treturn SlashCommandExecution
    ]]
    function SlashCommandExecution.newFromString(value)
        -- @TODO: Implement this method in SE3 <2024.09.23>
    end

    --[[
    Re-executes the command with the same arguments.
    ]]
    function SlashCommandExecution:reExecute()
        -- @TODO: Implement this method in SE6 <2024.09.23>
    end

    --[[
    Saves the instance to the addon data table.
    ]]
    function SlashCommandExecution:save()
        -- @TODO: Implement this method in SE5 <2024.09.23>
    end

    --[[
    Gets a table with all the properties of the instance as serializable data.

    In this context, "args" is be an array of strings containing all the
    arguments as broken by empty spaces regardless of being wrapped or not by
    quotes.

    @treturn table
    ]]
    function SlashCommandExecution:toArray()
        -- @TODO: Implement this method in SE4 <2024.09.23>
    end
-- end of SlashCommandExecution