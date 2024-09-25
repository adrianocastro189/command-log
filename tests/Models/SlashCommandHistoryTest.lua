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

-- @covers SlashCommandHistory:insert()
TestCase.new()
    :setName('insert')
    :setTestClass(TestSlashCommandHistory)
    :setExecution(function()
        -- @TODO: Implement this in SH4 <2024.09.25>
    end)
    :register()

-- @covers SlashCommandHistory:setFromArray()
TestCase.new()
    :setName('setFromArray')
    :setTestClass(TestSlashCommandHistory)
    :setExecution(function()
        -- @TODO: Implement this in SH3 <2024.09.25>
    end)
    :register()

-- @covers SlashCommandHistory:toArray()
TestCase.new()
    :setName('toArray')
    :setTestClass(TestSlashCommandHistory)
    :setExecution(function()
        -- @TODO: Implement this in SH5 <2024.09.25>
    end)
    :register()

-- @covers SlashCommandHistory:truncateHistory()
TestCase.new()
    :setName('truncateHistory')
    :setTestClass(TestSlashCommandHistory)
    :setExecution(function()
        -- @TODO: Implement this in SH2 <2024.09.25>
    end)
    :register()

-- end of TestSlashCommandHistory
