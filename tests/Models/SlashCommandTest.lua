TestSlashCommand = BaseTestClass:new()

-- @covers SlashCommand:__construct()
TestCase.new()
    :setName('__construct')
    :setTestClass(TestSlashCommand)
    :setExecution(function()
        local instance = CommandLog:new('CommandLog/SlashCommand')
        lu.assertNotNil(instance)
    end)
    :register()
-- end of TestSlashCommand