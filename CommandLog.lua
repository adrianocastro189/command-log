CommandLog = StormwindLibrary_v1_14_0.new({
    colors = {
      primary = '000000'
    },
    command = 'commandlog',
    data = 'CommandLogData',
    name = 'CommandLog'
  })

local events = CommandLog.events

events:listen(events.EVENT_NAME_PLAYER_LOGIN, function ()
end)