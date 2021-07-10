EPT = EPT or {}
local EPT = EPT

local specialSets = {
  [147] = {
    ["initialize"] = EPT.InitializeMartial,
    ["terminate"] = EPT.TerminateMartial,
    ["primaryType"] = "timer",
    ["secondaryInd"] = EPT.SecondaryIndicatorMartial,
  },
  [455] = {
    ["initialize"] = EPT.InitializeZen,
    ["terminate"] = EPT.TerminateZen,
    ["primaryType"] = "value",
  },
  [496] = { --normal
    ["initialize"] = EPT.InitializeOpportunist,
    ["terminate"] = EPT.TerminateOpportunist,
    ["primaryType"] = "timer",
    ["secondaryInd"] = EPT.SecondaryIndicatorOpportunist,
    ["tertiaryInd"] = EPT.TertiaryIndicatorOpportunist,
  },
  [497] = { --perf
    ["initialize"] = EPT.InitializeOpportunist,
    ["terminate"] = EPT.TerminateOpportunist,
    ["primaryType"] = "timer",
    ["secondaryInd"] = EPT.SecondaryIndicatorOpportunist,
    ["tertiaryInd"] = EPT.TertiaryIndicatorOpportunist,
  },
  [587] = { --perf
    ["initialize"] = EPT.InitializeMania,
    ["terminate"] = EPT.TerminateMania,
  },
  [591] = { --perf
    ["initialize"] = EPT.InitializeMania,
    ["terminate"] = EPT.TerminateMania,
  },
  [501] = {
    --["initialize"] = EPT.InitializeMythic,
    ["terminate"] = EPT.TerminateMythic,
    ["secondaryInd"] = EPT.SecondaryIndicatorMythic,
  },
  [594] = {
    --["initialize"] = EPT.InitializeMythic,
    ["terminate"] = EPT.TerminateMythic,
    ["secondaryInd"] = EPT.SecondaryIndicatorMythic,
  },
  [596] = {
    --["initialize"] = EPT.InitializeMythic,
    ["terminate"] = EPT.TerminateMythic,
    ["secondaryInd"] = EPT.SecondaryIndicatorMythic,
  }, 
}

-- punkt oder doppelpunkt??? -> Punkte, functionen anpassens

function EPT:InitializeSpecialSet(setId)
  local initFunc = specialSets[setId].initialize
  EPT.testVar = specialSets
  if not initFunc or type(initFunc) ~= "function" then return end
  initFunc(self, setId)

end

function EPT:TerminateSpecialSet(setId)
  local terminateFunc = specialSets[setId].terminate
  if not terminateFunc or type(terminateFunc) ~= "function" then return end
  terminateFunc(self, setId)
end

function EPT:GetPrimaryIndicatorType(setId)
  return specialSets[setId].primaryType
end

--function EPT:GetSecondaryIndicator(setId, win)
--  local func = specialSets[setId].secondaryInd
--  if not func or type(Func) ~= "function" then return end
--  return func(self, win, setId)
--end

--function EPT:GetTertiaryIndicator(setId, win)
--  local func = specialSets[setId].tertiaryInd
--  if not func or type(Func) ~= "function" then return end
--  return func(self, win, setId)
--end

function EPT:GetSecondaryIndicator(setId, win)
  if setId == 496 or setId == 497 then return self:SecondaryIndicatorOpportunist(setId, win)
  elseif setId == 147 then return self:SecondaryIndicatorMartial(win)
  elseif setId == 455 then return nil--self:SecondaryIndicatorZen(win)
  --
  elseif setId == 501 then return self:SecondaryIndicatorMythic(setId, win)
  elseif setId == 594 then return self:SecondaryIndicatorMythic(setId, win)
  elseif setId == 596 then return self:SecondaryIndicatorMythic(setId, win)
  else return nil
  end
end


function EPT:GetTertiaryIndicator(setId, win)
  if setId == 496 or setId == 497 then return self:TertiaryIndicatorOpportunist(setId, win)
  elseif setId == 147 then return nil
  elseif setId == 147 then return nil
  end
end

function EPT:GetPrimaryIndicatorType(setId)
  if setId == 496 or setId == 497 then return "timer"
  elseif setId == 147 then return "timer"
  elseif setId == 455 then return "value"
  end
end
