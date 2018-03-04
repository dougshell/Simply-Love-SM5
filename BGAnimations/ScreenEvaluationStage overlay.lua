return Def.ActorFrame{
	-- the content
	LoadActor( THEME:GetPathB("ScreenEvaluation","common") ),

	LoadFont("_wendy small")..{
		InitCommand=cmd(zoom,WideScale(0.3, 0.4); xy, _screen.cx, SCREEN_BOTTOM-15; horizalign,center; diffusealpha,0; queuecommand,"TextSet"),
		TextSetCommand=function(self)
			self:settext(string.format('%2i:%02i %s %02i, %04i', Hour(), Minute(), MonthToString(MonthOfYear()), DayOfMonth(), Year()))
		end,
		OnCommand=cmd(decelerate,0.5; diffusealpha,1),
		OffCommand=cmd(accelerate,0.5;diffusealpha,0),
		PulseMessageCommand=cmd(playcommand,"TextSet")
	},
	Def.Quad {
		PulseCommand=function(self) MESSAGEMAN:Broadcast("Pulse"); self:sleep(1); self:queuecommand("Pulse"); end;
		InitCommand=cmd(visible,false;playcommand,"Pulse");
	}
}
