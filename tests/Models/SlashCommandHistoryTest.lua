TestSlashCommandHistory = BaseTestClass:new()

-- @covers SlashCommandHistory:__construct()
TestCase.new()
    :setName('__construct')
    :setTestClass(TestSlashCommandHistory)
    :setExecution(function()
        local instance = CommandLog:new('CommandLog/SlashCommandHistory')

        lu.assertNotNil(instance)
        lu.assertEquals(instance.slashCommandExecutions, {})
    end)
    :register()
-- end of TestSlashCommandHistory
