local function antibd()
    local a = 0
    local aa = {}

    for i = 0, GetNumResources() - 1 do
        local aaa = GetResourceByFindIndex(i)
        if aaa and GetResourceState(aaa) == "started" then
            a = a + 1
            table.insert(aa, aaa)
        end
    end

    print("^7[^736lw^2Sense^7] ^4Found^1 " .. a .. " ^4Resources. ^7")
    print("^7[^736lw^2Sense^7] ^4List: ^7")

    for _, res in ipairs(aa) do
        print("^2 - ^7" .. res .. "^2 Successfully Started!^7")
    end

    if GetResourceState("_rage_ui") == "started" then
        print("^7[^736lw^2Sense^7] ^1CIPHER FOUND ^7 – ^2STOPPING RESOURCE^7")
        StopResource("_rage_ui")
        Wait(2000)
        print("^7[^736lw^2Sense^7]^7 - ^1Cipher ^2 successfully stopped.^7")
    else
        print("^7[^736lw^2Sense^7] Cipher was not found in your ^4Resources. ^7")
    end
end

CreateThread(function()
    Wait(5000)
    antibd()
end)
