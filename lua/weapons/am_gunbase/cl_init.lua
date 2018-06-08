/*
  Created by: Metamorphics
  STEAM_1:1:52851671
*/

include ("shared.lua")

function SWEP:DrawHUD()

  local Owner = self.Owner
  draw.WordBox(8, 8, 8, "Size Mode: " .. self:GetSizeMode(), "Default", Color(255, 0, 0, 50), Color(255, 0, 0))
  draw.WordBox(8, 8, 40, "Target Size: " .. math.Round(self:GetShrinkTargetSize(), 2), "Default", Color(255, 0, 0, 50), Color(255, 0, 0))

end

function SWEP:PrimaryAttack()

  self:ShootLaserEffects()
  self:SetNextPrimaryFire(CurTime() + 0.5)

end

function SWEP:SecondaryAttack()

  self:ShootLaserEffects()
  self:SetNextSecondaryFire(CurTime() + 0.5)
  
end
