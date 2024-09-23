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

-- @covers SlashCommandExecution.newFromArray()
TestCase.new()
    :setName('newFromArray')
    :setTestClass(TestSlashCommandExecution)
    :setExecution(function()
        -- @TODO: Implement this method in SE2 <2024.09.23>
    end)
    :register()

-- @covers SlashCommandExecution.newFromString()
TestCase.new()
    :setName('newFromString')
    :setTestClass(TestSlashCommandExecution)
    :setExecution(function()
        -- @TODO: Implement this method in SE3 <2024.09.23>
    end)
    :register()

-- @covers SlashCommandExecution.toArray()
TestCase.new()
    :setName('toArray')
    :setTestClass(TestSlashCommandExecution)
    :setExecution(function()
        -- @TODO: Implement this method in SE4 <2024.09.23>
    end)
    :register()
-- end of TestSlashCommandExecution
