SMODS.Enhancement{
    key = 'ambray',
    atlas = 'blahEnhancements',
    pos={x=1,y=0},
    replace_base_card = true,
    no_suit = true,
    no_rank = true,
    always_scores = true,
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_lazy', set = 'blah_tooltips'}
        info_queue[#info_queue + 1] = { key = 'c_blah_gaiaTip', set = 'blah_tooltips'}
    end
}
SMODS.Enhancement {
    key = 'gaia',
    atlas = 'blahEnhancements',
    pos = { x = 0, y = 0 },
    replace_base_card = true,
    no_suit = true,
    no_rank = true,
    always_scores = true,
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_lazy', set = 'blah_tooltips'}
        info_queue[#info_queue + 1] = { key = 'c_blah_ambrayTip', set = 'blah_tooltips'}
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.after then
            for i in ipairs(G.play.cards) do
                if G.play.cards[i] ~= nil then
                    if SMODS.has_enhancement(G.play.cards[i], 'm_blah_ambray') then
                        --wanted to make it add negative blueprint and brainstorm with the pinned sticker
                        --but i couldnt figure out how to add the pinned sticker but ill either do that or make something fun later
                        local achoo=SMODS.add_card({set = 'Joker', key = 'j_brainstorm', edition = 'e_negative'})
                        achoo:add_sticker('pinned',true)
                        local bleh=SMODS.add_card({set = 'Joker', key = 'j_blueprint', edition = 'e_negative'})
                        bleh:add_sticker('pinned',true)
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                card:juice_up()
                                return true
                            end
                        }))
                    end
                end
            end
        end
    end
}