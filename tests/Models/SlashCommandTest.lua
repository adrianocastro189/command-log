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

-- @covers SlashCommand.newFromString()
TestCase.new()
    :setName('newFromString with invalid strings')
    :setTestClass(TestSlashCommand)
    :setExecution(function(data)
        local class = CommandLog:getClass('CommandLog/SlashCommand')

        lu.assertErrorMsgContains(data.expectedErrorMessage, class.newFromString, data.commandString)
    end)
    :setScenarios({
        ['empty string'] = {
            commandString = '',
            expectedErrorMessage = 'Invalid slash command string: ',
        },
        ['single word'] = {
            commandString = 'word',
            expectedErrorMessage = 'Invalid slash command string: word',
        },
        ['special characters'] = {
            commandString = '/wrongcommand!',
            expectedErrorMessage = 'Invalid slash command string: /wrongcommand!',
        },
    })
    :register()

-- @covers SlashCommand.newFromString()
TestCase.new()
    :setName('newFromString with valid strings')
    :setTestClass(TestSlashCommand)
    :setExecution(function(data)
        local class = CommandLog:getClass('CommandLog/SlashCommand')

        local result = class.newFromString(data.commandString)

        lu.assertEquals(data.expectedCommand, result.command)
    end)
    :setScenarios({
        ['single command'] = {
            commandString = '/command',
            expectedCommand = 'command',
        },
        ['command with args'] = {
            commandString = '/command with args',
            expectedCommand = 'command',
        },
        ['command with numbers'] = {
            commandString = '/command123',
            expectedCommand = 'command123',
        },
        ['command with underscore'] = {
            commandString = '/command_with_underscore',
            expectedCommand = 'command_with_underscore',
        },
    })
    :register()

-- @covers SlashCommand:toString()
TestCase.new()
    :setName('toString')
    :setTestClass(TestSlashCommand)
    :setExecution(function(data)
        local instance = CommandLog:new('CommandLog/SlashCommand')
        instance.command = data.command

        local result = instance:toString(data.optionalArgs)

        lu.assertEquals(data.expectedResult, result)
    end)
    :setScenarios({
        ['single command'] = {
            command = 'command',
            optionalArgs = nil,
            expectedResult = '/command',
        },
        ['single command with empty args'] = {
            command = 'command',
            optionalArgs = {},
            expectedResult = '/command',
        },
        ['command with args'] = {
            command = 'command',
            optionalArgs = {'arg1', 'arg2'},
            expectedResult = '/command arg1 arg2',
        },
    })
    :register()
-- end of TestSlashCommand
