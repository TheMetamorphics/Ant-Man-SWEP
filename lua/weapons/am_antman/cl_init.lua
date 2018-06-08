/*
  Created by: Metamorphics
  STEAM_1:1:52851671
*/

include ("shared.lua")

function SWEP:DrawHUD()

  local boxColor = Color(50, 50, 50, 150)
  local textColor = Color(255, 0, 0)
  local Owner = self.Owner

  draw.WordBox(8, 8, 8, "Size: " .. math.Round(Owner:GetModelScale(), 2), "Default", boxColor, textColor)
  draw.WordBox(8, 8, 40, "Size Mode: " .. self:GetSizeMode(), "Default", boxColor, textColor)

  if self:GetSizeMode() == "Shrink" then
    draw.WordBox(8, 8, 72, "Target Size: " .. math.Round(self:GetShrinkTargetSize(), 2), "Default", boxColor, textColor)
  else
    draw.WordBox(8, 8, 72, "Target Size: " .. math.Round(self:GetGrowTargetSize(), 2), "Default", boxColor, textColor)
  end

end
