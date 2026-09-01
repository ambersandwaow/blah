local config = SMODS.current_mod.config

SMODS.Seal{
    key = 'white',
    atlas = 'blahSeals',
    pos = {x=0,y=0},
    badge_color = G.C.WHITE,
    text_colour = G.C.BLACK,
    discovered = true,
    sound = { sound = 'generic1', per = 1.2, vol = 0.4 },
    config={extra={
        xmult = 6
    }},
    loc_vars = function(self,info_queue,card)
        if config ~= nil and config.extraGay then
            info_queue[#info_queue + 1] = { key = 'c_blah_whiteSealTip', set = 'blah_tooltips'}
        end
        return{vars={
            card.ability.seal.extra.xmult
        }}
    end,
    calculate = function(self,card,context)
        if context.main_scoring and context.cardarea == G.play then
            return{xmult = card.ability.seal.extra.xmult}
        end
        if (context.after and context.cardarea == G.play) or (context.discard and context.other_card == card) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card:set_seal(nil,nil,true)
                        play_sound('generic1')
                        return true
                    end
                }))
        end
    end
}
--called in whiteSealDeath.toml
function BLAH.destroyWhiteSeals()
    for i=1, #G.deck.cards do
        if G.deck.cards[i]:get_seal() == 'blah_white' then
            return{
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.deck:juice_up(1,2)
                        play_sound('blah_boom')
                        SMODS.destroy_cards(G.deck.cards[i])
                        return true
                    end
                }))
            }
        end
    end
end