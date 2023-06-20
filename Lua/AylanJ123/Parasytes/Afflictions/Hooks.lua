-- Test for insta apply parasyte to humans
Hook.Add("character.created", "testParasyteApply", function(character)
    local cordyceps = AfflictionPrefab.Prefabs["cordyceps"]
    local affl = cordyceps.Instantiate(
        1, character
    )
    if not character.IsPlayer then return end
    character.CharacterHealth.ApplyAffliction(nil, affl, false)
    local s, m = pcall(function ()
        for _, v in pairs(affl.Prefab.Effects) do
            print(v.MinStrength .. " -> " .. v.MaxStrength)
        end
    end)
    if s then print(s)
    else print(m) end
    local ss, mm = pcall(function ()
        for _, v in pairs(affl.Prefab.Descriptions) do
            print(v.Text)
        end
    end)
    if ss then print(ss)
    else print(mm) end
 end)