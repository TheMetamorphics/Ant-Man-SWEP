/*
  Created by: Metamorphics
  STEAM_1:1:52851671
*/

local antManWeapons = { "am_antman", "am_wasp", "am_yellowjacket", "am_shrinkgun", "am_growgun" }
local antManSuits = { "am_antman", "am_wasp", "am_yellowjacket" }

hook.Add("PlayerButtonDown", "am_KeyDetection", function(ply, btn)

  local wep = ply:GetActiveWeapon()

  if !IsValid(wep) or !table.HasValue(antManWeapons, wep:GetClass()) then return end

  if table.HasValue(antManSuits, wep:GetClass()) then
    if btn == KEY_J then
      if ply:GetModelScale() != 1 then ply:am_SetModelScale(1, 0.2) return end
      if wep:GetSizeMode() == "Shrink" then
        ply:am_SetModelScale(wep:GetShrinkTargetSize(), 0.2)
      else
        ply:am_SetModelScale(wep:GetGrowTargetSize(), 0.2)
      end
    end
  end

  if table.HasValue(antManWeapons, wep:GetClass()) then

    if btn == KEY_N and wep:GetSizeMode() == "Shrink" and wep:GetShrinkTargetSize() > 0.11 then
      wep:SetShrinkTargetSize(wep:GetShrinkTargetSize() - 0.1)
    elseif btn == KEY_N and wep:GetGrowTargetSize() > 1.5 then
      wep:SetGrowTargetSize(wep:GetGrowTargetSize() - 0.5)
    end

    if btn == KEY_M and wep:GetSizeMode() == "Shrink" and wep:GetShrinkTargetSize() < 0.9 then
      wep:SetShrinkTargetSize(wep:GetShrinkTargetSize() + 0.1)
    elseif btn == KEY_M and wep:GetGrowTargetSize() < 5 then
      wep:SetGrowTargetSize(wep:GetGrowTargetSize() + 0.5)
    end

  end

end)
