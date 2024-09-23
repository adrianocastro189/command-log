TestSlashCommandExecution = BaseTestClass:new()

-- @covers SlashCommandExecution:__construct()
TestCase.new()
    :setName('__construct')
    :setTestClass(TestSlashCommandExecution)
    :setExecution(function()
        _G['time'] = function() return 1 end

        local instance = CommandLog:new('CommandLog/SlashCommandExecution')

        lu.assertNotNil(instance)
        lu.assertEquals(instance.args, {})
        lu.assertEquals(instance.executedAt, 1)
        lu.assertIsNil(instance.slashCommand)
    end)
    :register()
-- end of TestSlashCommandExecution
