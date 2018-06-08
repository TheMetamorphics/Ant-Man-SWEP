/*
  Created by: Metamorphics
  STEAM_1:1:52851671
*/

local swep = FindMetaTable("Weapon")

function swep:ShootLaserEffects()

  local Owner = self.Owner
  local tr = Owner:GetEyeTrace()
  local fx = EffectData()

  fx:SetEntity(self)
  fx:SetStart(Owner:GetShootPos())
  fx:SetOrigin(tr.HitPos)
  fx:SetAttachment(1)

  util.Effect("tooltracer", fx)

end
