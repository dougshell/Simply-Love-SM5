return Def.ActorFrame{
	InitCommand=cmd(x, 26),

	Def.Quad{
		InitCommand=cmd(diffuse, color("#000000"); diffusealpha, 0.85; zoomto, _screen.w/2.1675, _screen.h/15)
	},
	Def.Quad{
		InitCommand=cmd(diffuse, color("#283239"); diffusealpha, 0.85; zoomto, _screen.w/2.1675, _screen.h/15 - 1)
	}
}