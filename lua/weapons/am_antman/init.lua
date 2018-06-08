/*
  Created by: Metamorphics
  STEAM_1:1:52851671
*/

AddCSLuaFile ("cl_init.lua")
AddCSLuaFile ("shared.lua")

include ("shared.lua")

function SWEP:Initialize()

  self:SetSizeMode("Shrink")
  self:SetShrinkTargetSize(0.2)
  self:SetGrowTargetSize(2)

end

function SWEP:Deploy()

  return true

end

function SWEP:Holster()

  local Owner = self.Owner

  if Owner:GetModelScale() != 1 then
    Owner:am_SetModelScale(1, 0.2)
  end

  return true

end

function SWEP:OnRemove()

  local Owner = self.Owner

  Owner:SetModelScale(1)
  Owner:SetMaterial("")
  Owner:am_SetPhysicalAttributes(200, 400, 200)

end

function SWEP:PrimaryAttack()

end

function SWEP:SecondaryAttack()

  if self:GetSizeMode() == "Shrink" then
    self:SetSizeMode("Grow")
  else
    self:SetSizeMode("Shrink")
  end

  self:SetNextSecondaryFire(CurTime() + 0.5)
  
end
