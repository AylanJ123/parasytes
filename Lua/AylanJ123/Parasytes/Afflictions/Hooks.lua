-- Test for insta apply parasyte to humans
Hook.Add("character.created", "testParasyteApply", function(character)
    local cordyceps = AfflictionPrefab.Prefabs["cordyceps"]
    local affl = cordyceps.Instantiate(
        character.IsPlayer and 0.1 or math.random(1, 15), character
    )
    if not character.CharacterHealth then return end
    character.CharacterHealth.ApplyAffliction(nil, affl, false)
 end)