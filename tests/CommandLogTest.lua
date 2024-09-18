TestCommandLog = BaseTestClass:new()

-- @covers CommandLog
TestCase.new()
    :setName('addon table')
    :setTestClass(TestCommandLog)
    :setExecution(function()
        lu.assertNotIsNil(CommandLog)
    end)
    :register()
-- end of TestAddonTable