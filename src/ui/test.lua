function BLAH.display()
    return{
        {n = G.UIT.R,config={r=.1,h=5,w=6,align='tm',colour=G.C.BLACK},nodes={
            {n=G.UIT.C,config={r=.2,h=2,maxh=3,maxw=3.5,align='lm',colour=G.C.GREEN,padding=.3},nodes={
                {n=G.UIT.O,config={Sprite='m_blah_gaia',padding=.1,r=1,juice=true,hover=true,shadow=true}},
                {n=G.UIT.O,config={Sprite='m_blah_ambray',padding=.1,r=1,juice=true,hover=true,shadow=true}}
            }},
            {n=G.UIT.C,config={r=.2,h=2,maxh=3,maxw=3.5,align='rm',colour=G.C.GREEN,padding=.3},nodes={
                {n=G.UIT.O,config={Sprite='c_blah_yuri',padding=.1,r=1,juice=true,hover=true,shadow=true}},
                {n=G.UIT.O,config={Sprite='c_blah_ubi',padding=.1,r=1,juice=true,hover=true,shadow=true}}
            }}
        }}
    }
end

function BLAH.test_ui()
	return {
		n = G.UIT.ROOT,
		config = {
			emboss = 0.05,
			r = 0.1,
			padding = 0.1,
			colour = G.C.BLACK,
            align = "cm"
		},
		nodes = {}
	}
end

--[[SMODS.current_mod.extra_tabs = function()
    return{
        {
            label='Test UI',
            tab_definition_function=BLAH.test_ui()
        },
        {
            label='gamer',
            tab_definition_function=BLAH.display()
        }
    }
end

yeah so i was trying to make extra tabs on the mod thing to learn and i followed a tutorial but it crashed every time even after copy and pasting their code
so idk ill figure it out one day or maybe not
if youre a genius id happily accept tips
--]]