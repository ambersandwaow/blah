SMODS.Seal{
    key = 'white',
    atlas = 'blahSeals',
    pos = {x=0,y=0},
    badge_color = G.C.WHITE,
    text_colour = G.C.BLACK,
    sound = { sound = 'generic1', per = 1.2, vol = 0.4 },
    config={extra={
        xmult = 6
    }},
    loc_vars = function(self,info_queue,card)
        return{vars={
            card.ability.seal.extra.xmult
        }}
    end,
    calculate = function(self,card,context)
        if context.main_scoring and context.cardarea == G.play then
            return{xmult = card.ability.seal.extra.xmult}
        end
        if context.after and context.cardarea == G.play then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card:set_seal(nil,nil,true)
                        play_sound('generic1')
                        return true
                    end
                }))
        end
        if context.end_of_round then
            return{message = 'boom!'},
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_boom')
                    card:juice_up()
                    return true
                end,
                SMODS.destroy_cards(card,nil,nil,true)
            }))
        end
    end
}