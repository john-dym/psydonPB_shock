--[[ For my references
Innocent Roles
ROLE_INNOCENT=0
ROLE_DETECTIVE=2
ROLE_MERCENARY=3
ROLE_PHANTOM=5
ROLE_GLITCH=7

Technically Innocent
ROLE_JESTER=4
ROLE_SWAPPER=10

Tratior Roles
ROLE_TRAITOR=1
ROLE_HYPNOTIST=6
ROLE_ZOMBIE=8
ROLE_VAMPIRE=9
ROLE_ASSASSIN=11
ROLE_KILLER=12

GetRole() Innocent = 0
GetRoundState()
1= Round Wait
2= Round Prep
3=Current Round
4=Round end

--]]
function pb_test(pb_victim, pb_inflictor, pb_attacker)
	--print(pb_attacker:Name(), "killed", pb_victim:Name())
	--print(pb_attacker:GetRoleString(),"=",pb_attacker:GetRole(), "and", pb_victim:GetRoleString(), "=", pb_victim:GetRole())
	--print(GetRoundState())
	local logOutput = GetRoundState()..","..pb_attacker:Name()..","..pb_attacker:GetRoleString()..","..pb_victim:GetRoleString().."\n"
	file.Append("shock.txt", logOutput)
end

function pb_botspawn(name, ip)
	if ip != "none" then
		player.CreateNextBot("Spokes")
		player.CreateNextBot("Spokeys")
		player.CreateNextBot("Sadon")
		player.CreateNextBot("Spokedon")
		player.CreateNextBot("Psydon")
		player.CreateNextBot("Cuddly_Spokey")
		player.CreateNextBot("Spokey_Rampage")
	end
end
file.Write("shock.txt", "Round_Mode, attacker_Name, attacker_Role, victim_Role\n")
hook.Add("PlayerDeath", "psydonpb_shock", pb_test)
hook.Add("PlayerConnect", "psydonpb_shock", pb_botspawn)