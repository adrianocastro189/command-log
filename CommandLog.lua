CommandLog = StormwindLibrary_v1_14_0.new({
    colors = {
        primary = '000000'
    },
    command = 'commandlog',
    data = 'CommandLogData',
    name = 'CommandLog',
    settings = {
        groups = {
            {
                id = 'history',
                settings = {
                    {
                        id = 'limit',
                        label = 'Limit',
                        description = 'Sets the maximum number of command executions to keep in the history',
                        type = 'number',
                        default = 50,
                        scope = 'player',
                        accessibleByCommand = true,
                    },
                },
            },
        },
    },
})

local events = CommandLog.events

events:listen(events.EVENT_NAME_PLAYER_LOGIN, function()
end)
