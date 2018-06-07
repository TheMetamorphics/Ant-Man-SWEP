/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

AddCSLuaFile ("cl_init.lua")
AddCSLuaFile ("shared.lua")

include ("shared.lua")

function SWEP:Initialize()
	self:SetSizeMode("Grow")
	self:SetGrowTargetSize(1.5)
end

function SWEP:OnRemove()

end

function SWEP:PrimaryAttack()
	self:ShootSize(self:GetGrowTargetSize(), 0.2)
	self:SetNextPrimaryFire(CurTime() + 0.5)
end

function SWEP:SecondaryAttack()
	self:ShootSize(1, 0.2)
	self:SetNextSecondaryFire(CurTime() + 0.5)
end
