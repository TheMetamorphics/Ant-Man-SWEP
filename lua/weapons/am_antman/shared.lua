/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

SWEP.Category = "The Ant-Man SWEP"
SWEP.Spawnable = true
SWEP.PrintName = "The Ant-Man SWEP"
SWEP.Author = "Metamorphics"
SWEP.Purpose = "Shrink or Grow"
SWEP.Instructions = "Press J to shrink or grow. Use N and M to adjust size."
SWEP.ViewModel = ""
SWEP.WorldModel = ""
SWEP.Primary.Ammo = "none"   //Have to set primary and secondary ammo to none in order to hide the ammo HUD
SWEP.Secondary.Ammo = "none" // "SWEP.DrawAmmo = false" doesn't like to work for some reason, so this is the work around
SWEP.HoldType = "normal"
SWEP.Slot = 0
SWEP.SlotPos = 128
//SWEP.WepSelectIcon = surface.GetTextureID("")

function SWEP:SetupDataTables()
  self:NetworkVar("Float", 0, "ShrinkTargetSize")
  self:NetworkVar("Float", 1, "GrowTargetSize")
  self:NetworkVar("String", 0, "SizeMode")
end

function SWEP:Initialize()
	self:SetHoldType(self.HoldType)
end

function SWEP:PrimaryAttack()

end

function SWEP:SecondaryAttack()

end
