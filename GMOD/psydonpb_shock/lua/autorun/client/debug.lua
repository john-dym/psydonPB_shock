function pbdebug()
	RunConsoleCommand( "give", "weapon_zm_rifle" )
	RunConsoleCommand("ttt_quickslot", "3")
	RunConsoleCommand("givecurrentammo")
end
hook.Add("TTTPrepareRound", "psydonpb_shock", pbdebug)
hook.Add("TTTBeginRound", "psydonpb_shock", pbdebug)