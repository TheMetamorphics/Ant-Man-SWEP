/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

AddCSLuaFile ("cl_init.lua")
AddCSLuaFile ("shared.lua")

include ("shared.lua")

function SWEP:PrimaryAttack()
  local bullet = {}

  bullet.Num 	= num_bullets
  bullet.Src 	= self.Owner:GetShootPos() -- Source
	bullet.Dir 	= self.Owner:GetAimVector() -- Dir of bullet
  bullet.Spread 	= Vector( aimcone, aimcone, 0 )	-- Aim Cone
  bullet.Tracer	= 5 -- Show a tracer on every x bullets
  bullet.Force	= 1 -- Amount of force to give to phys objects
  bullet.Damage	= damage
  bullet.AmmoType = "Pistol"

  self.Owner:FireBullets( bullet )
  self:SetNextPrimaryFire(CurTime() + 0.2)
end
