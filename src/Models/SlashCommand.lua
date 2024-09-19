--[[
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

    CommandLog.constants = CommandLog.arr:freeze({
        COMMAND_REGEX = '^/([%w_]+)$',
    })

    --[[--
    SlashCommand constructor.
    ]]
    function SlashCommand.__construct()
        local self = setmetatable({}, SlashCommand)

        -- add properties here

        return self
    end

    --[[
    Creates a new SlashCommand instance from a string.

    To be a valid slash command, the string must start with a single / followed
    by a word that represents the command. The command may have spaces
    indicating it has arguments, however, invalid characters in the command part
    are not allowed.

    @tparam string commandString
    ]]
    function SlashCommand.newFromString(commandString)
        local self = SlashCommand.__construct()

        -- breaks the string into parts and gets the first one, which is the
        -- command part
        local commandPart = CommandLog.str:split(commandString, ' ')[1] or ''

        -- attempts to extract the command name
        self.command = string.match(
            commandPart,
            CommandLog.constants.COMMAND_REGEX
        )

        if not self.command then
            error('Invalid slash command string: ' .. commandString)
        end

        return self
    end

    --[[
    Gets the string representation of this slash command that may include
    arguments (optional).

    The arguments are passed as an array of strings, but if not provided, the
    command will be returned as is, starting with slash.

    @tparam string[] optionalArgs

    @treturn string
    ]]
    function SlashCommand:toString(optionalArgs)
        local commandParts = CommandLog.arr:concat(
            {'/'..self.command},
            optionalArgs or {}
        )

        return CommandLog.arr:implode(' ', commandParts)
    end
-- end of SlashCommand