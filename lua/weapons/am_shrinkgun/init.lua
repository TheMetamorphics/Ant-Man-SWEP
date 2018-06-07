/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include ("shared.lua")

function SWEP:OnRemove()
	print("true")
end

function SWEP:PrimaryAttack()
	self:ShootSize(self:GetShrinkTargetSize(), 0.2)
	self:SetNextSecondaryFire(CurTime() + 0.5)
end

function SWEP:SecondaryAttack()
	self:ShootSize(1, 0.2)
	self:SetNextSecondaryFire(CurTime() + 0.5)
end
