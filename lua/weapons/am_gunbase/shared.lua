/*
  Created by: Metamorphics
  STEAM_1:1:52851671
*/

SWEP.Category = "The Ant-Man SWEP"
SWEP.Spawnable = false
SWEP.PrintName = "Gun Base"
SWEP.Author = "Metamorphics"
SWEP.Purpose = ""
SWEP.Instructions = ""
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true
SWEP.ViewModelBoneMods = {}
SWEP.Primary.Ammo = "none"   //Have to set primary and secondary ammo to none in order to hide the ammo HUD
SWEP.Secondary.Ammo = "none" // "SWEP.DrawAmmo = false" doesn't like to work for some reason, so this is the work around
SWEP.HoldType = "smg"
SWEP.Slot = 0
SWEP.SlotPos = 128
SWEP.ShootSize = 1
SWEP.SizeMode = "Shrink"
//SWEP.WepSelectIcon = surface.GetTextureID("")

function SWEP:SetupDataTables()

  self:NetworkVar("Float", 0, "ShrinkTargetSize")
  self:NetworkVar("Float", 1, "GrowTargetSize")
  self:NetworkVar("String", 0, "SizeMode")

end

function SWEP:Initialize()

  self:SetSizeMode(self.SizeMode)
  self:SetShrinkTargetSize(1)

end
