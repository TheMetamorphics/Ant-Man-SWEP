/*
  Created by: Metamorphics
  STEAM_1:1:52851671
*/

local antManWeapons = { "am_antman", "am_wasp", "am_yellowjacket", "am_shrinkgun", "am_growgun" }
local antManSuits = { "am_antman", "am_wasp", "am_yellowjacket" }
local shrinkMin = 0.11
local shrinkMax = 0.9
local shrinkIncrement = 0.1
local growMin = 1.5
local growMax = 5
local growIncrement = 0.5

hook.Add("PlayerButtonDown", "am_ActivationKey", function(ply, btn)

  local wep = ply:GetActiveWeapon()

  if !IsValid(wep) or !table.HasValue(antManSuits, wep:GetClass()) then return end

  if btn == KEY_J then
    if ply:GetModelScale() != 1 then ply:am_SetModelScale(1, 0.2) return end
    if wep:GetSizeMode() == "Shrink" then
      ply:am_SetModelScale(wep:GetShrinkTargetSize(), 0.2)
    else
      ply:am_SetModelScale(wep:GetGrowTargetSize(), 0.2)
    end
  end

end)

hook.Add("PlayerButtonDown", "am_DecreaseKey", function(ply, btn)

  local wep = ply:GetActiveWeapon()

  if !IsValid(wep) or !table.HasValue(antManWeapons, wep:GetClass()) then return end

  if btn == KEY_N and wep:GetSizeMode() == "Shrink" and wep:GetShrinkTargetSize() > shrinkMin then
    wep:SetShrinkTargetSize(wep:GetShrinkTargetSize() - shrinkIncrement)
  elseif btn == KEY_N and wep:GetSizeMode() == "Grow" and wep:GetGrowTargetSize() > growMin then
    wep:SetGrowTargetSize(wep:GetGrowTargetSize() - growIncrement)
  end

end)

hook.Add("PlayerButtonDown", "am_IncreaseKey", function(ply, btn)

  local wep = ply:GetActiveWeapon()

  if !IsValid(wep) or !table.HasValue(antManWeapons, wep:GetClass()) then return end

  if btn == KEY_M and wep:GetSizeMode() == "Shrink" and wep:GetShrinkTargetSize() < shrinkMax then
    wep:SetShrinkTargetSize(wep:GetShrinkTargetSize() + shrinkIncrement)
  elseif btn == KEY_M and wep:GetSizeMode() == "Grow" and wep:GetGrowTargetSize() < growMax then
    wep:SetGrowTargetSize(wep:GetGrowTargetSize() + growIncrement)
  end

end)
