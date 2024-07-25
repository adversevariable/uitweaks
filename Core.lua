--
-- [ Adverse UI Tweaks ]
-- (c) AdverseVariable
--

local frame = CreateFrame("Frame")

frame:RegisterEvent("PLAYER_ENTERING_WORLD")

function scalePlayerFrame()
  if PlayerSpellsFrame then
    PlayerSpellsFrame:SetScale(0.8)
  end
end

frame:SetScript("OnEvent", function(self, event, addon)
  print(event)

  if event == "PLAYER_ENTERING_WORLD" then
    -- Stupid game frame is super large, wtf why?
    GameMenuFrame:SetScale(0.8)

    -- Spellbook/Talents/Spec frames
    EventRegistry:RegisterCallback("PlayerSpellsFrame.OpenFrame", scalePlayerFrame)
  end
end)
