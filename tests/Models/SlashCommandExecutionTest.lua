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
    :setExecution(function(data)
        local instance = CommandLog
            :getClass('CommandLog/SlashCommandExecution')
            .newFromArray(data.executionData)

        lu.assertEquals(data.expectedCommand, instance.slashCommand.command)
        lu.assertEquals(data.expectedArgs, instance.args)
        lu.assertEquals(data.expectedExecutedAt, instance.executedAt)
    end)
    :setScenarios({
        ['no args'] = {
            executionData = {
                executedAt = 1,
                slashCommand = 'command',
            },
            expectedArgs = {},
            expectedCommand = 'command',
            expectedExecutedAt = 1,
        },
        ['with args'] = {
            executionData = {
                args = {'arg1', 'arg2'},
                executedAt = 1,
                slashCommand = 'command',
            },
            expectedArgs = {'arg1', 'arg2'},
            expectedCommand = 'command',
            expectedExecutedAt = 1,
        },
    })
    :register()

-- @covers SlashCommandExecution.newFromString()
TestCase.new()
    :setName('newFromString')
    :setTestClass(TestSlashCommandExecution)
    :setExecution(function(data)
        _G['time'] = function() return 1 end

        local instance = CommandLog
            :getClass('CommandLog/SlashCommandExecution')
            .newFromString(data.slashCommand)

        lu.assertEquals(data.expectedCommand, instance.slashCommand.command)
        lu.assertEquals(data.expectedArgs, instance.args)
        lu.assertEquals(1, instance.executedAt)
    end)
    :setScenarios({
        ['simple command'] = {
            slashCommand = '/command',
            expectedArgs = {},
            expectedCommand = 'command',
        },
        ['command with args'] = {
            slashCommand = '/command arg1 arg2',
            expectedArgs = {'arg1', 'arg2'},
            expectedCommand = 'command',
        },
    })
    :register()

-- @covers SlashCommandExecution.reExecute()
TestCase.new()
    :setName('reExecute')
    :setTestClass(TestSlashCommandExecution)
    :setExecution(function()
        -- @TODO: Implement this method in SE6 <2024.09.23>
    end)
    :register()

-- @covers SlashCommandExecution.save()
TestCase.new()
    :setName('save')
    :setTestClass(TestSlashCommandExecution)
    :setExecution(function()
        -- @TODO: Implement this method in SE5 <2024.09.23>
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
