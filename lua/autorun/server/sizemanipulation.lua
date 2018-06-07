/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

local ent = FindMetaTable("Entity")
local ply = FindMetaTable("Player")
local swep = FindMetaTable("Weapon")

function ply:am_SetPhysicalAttributes(walk, run, jump)
  self:SetWalkSpeed(walk) //Default: 200
  self:SetRunSpeed(run) //Default: 400
  self:SetJumpPower(jump) //Default: 200
end

function ent:am_SetModelScale(size, time)
  if self:IsVehicle() then return end
  if self:IsPlayer() then
    self:am_SetPhysicalAttributes(200*size, 400*size, 200*size)
    self:SetStepSize(18*size)
    self:SetViewOffset(Vector(0, 0, 64*size))
	  self:SetViewOffsetDucked(Vector(0, 0, 28*size))
    self:SetHull(Vector(size*-16, size*-16, 0), Vector(size*16, size*16, size*72))
    self:SetHullDuck(Vector(size*-16, size*-16, 0), Vector(size*16, size*16, size*48))
  end
  self:SetModelScale(size, time)
  self:EmitSound("weapons/physcannon/energy_disintegrate4.wav", 65)
  self:SetMaterial("models/effects/comball_sphere")
	timer.Create("am_ModeScaleReset_"..self:EntIndex(), time, 1, function()
		self:SetMaterial("")
    self:Activate()
	end)
end

function swep:ShootSize(size, time)
	local Owner = self.Owner
	local tr = Owner:GetEyeTrace()

	if IsValid(tr.Entity) then
		tr.Entity:am_SetModelScale(size, time)
	end
end
