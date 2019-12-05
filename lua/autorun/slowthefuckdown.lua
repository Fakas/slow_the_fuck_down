function SlowTheFuckDown()
	-- Force player move speed as configured
	if GetConVar("fakas_speed_enforce"):GetInt() == 1 then
		-- Get walk-speed value
		fakas_walkspeed = GetConVar("fakas_speed_walk"):GetInt()
		-- Get run-speed value
		fakas_runspeed = GetConVar("fakas_speed_run"):GetInt()
		-- Iterate over every player on the server and set speed values
		for i,ply in pairs(player.GetAll()) do
			ply:SetWalkSpeed(fakas_walkspeed)
			ply:SetRunSpeed(fakas_runspeed)
		end
	end
end

-- Set up ConVars
CreateConVar("fakas_speed_walk","150")
CreateConVar("fakas_speed_run","250")
CreateConVar("fakas_speed_enforce","1")

-- Run every tick
hook.Add("Tick", "SlowTheFuckDown", SlowTheFuckDown)