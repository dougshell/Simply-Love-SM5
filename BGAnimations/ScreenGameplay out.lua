return Def.Quad{
	InitCommand=function(self) self:FullScreen():diffuse(0,0,0,0) end,
	OnCommand=function(self) self:sleep(1):linear(2):diffusealpha(1) end
}