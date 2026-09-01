local config = SMODS.current_mod.config


SMODS.Enhancement{--Ambray
    key = 'ambray',
    atlas = 'blahEnhancements',
    pos={x=1,y=0},
    replace_base_card = true,
    no_suit = true,
    no_rank = true,
    always_scores = true,
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_gaiaTip', set = 'blah_tooltips'}
        if config ~= nil then
            if config.extraGay then
                return{key='m_blah_ambray_alt'}
            end
        end
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge('she/her', SMODS.Gradients['blah_transGrad'], SMODS.Gradients['blah_transGradInv'], 1 )
    end,
}
SMODS.Enhancement {--Gaia
    key = 'gaia',
    atlas = 'blahEnhancements',
    pos = { x = 0, y = 0 },
    replace_base_card = true,
    no_suit = true,
    no_rank = true,
    always_scores = true,
    config={extra={bwee=false}},
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_ambrayTip', set = 'blah_tooltips'}
        if config ~= nil then
            if config.extraGay then
                return{key='m_blah_gaia_alt'}
            end
        end
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge('they/its', SMODS.Gradients['blah_nbGrad'], SMODS.Gradients['blah_nbGradInv'], 1 )
    end,
    calculate = function(self,card,context)
        if context.before and context.cardarea == G.play then
        for i in ipairs(G.play.cards) do
                if G.play.cards[i] ~= nil then
                    if SMODS.has_enhancement(G.play.cards[i], 'm_blah_ambray') then
                        BLAH.yuriTrigger = true
                        BLAH.yuriTriggerCards = {card,G.play.cards[i]}
                    end
                end
            end
        end
        if context.after and BLAH.yuriTrigger then
            if config ~= nil then
                card.ability.extra.bwee = false
                for _,jonkler in ipairs(G.jokers.cards) do
                    if jonkler:is_rarity('blah_waow') then card.ability.extra.bwee = true end
                end
                if not config.balanced and not card.ability.extra.bwee then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local achoo=SMODS.add_card({set = 'Joker', rarity = 'blah_waow'})
                            card:juice_up()
                            return true
                        end
                    }))
                    BLAH.yuriTrigger = false --i have no clue why this needs to be here but if its not it crashes and if its in the event it crashes
                elseif config.balanced and BLAH.yuriTrigger and not next(SMODS.find_card('j_blah_forest',true)) then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card({set='Joker',key='j_blah_forest'})
                            card:juice_up()
                            return true
                        end
                    }))
                    BLAH.yuriTrigger = false
                end
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                blocking = false,
                func=function()
                    BLAH.yuriTrigger = false
                    return true
                end
            }))
        end
    end
}
SMODS.Enhancement{--Tree
    key = 'tree',
    atlas = 'blahEnhancements',
    pos = {x=0,y=1},
    replace_base_card = true,
    no_suit = true,
    no_rank = true,
    no_collection = true,
    loc_vars = function(self,info_queue,card)
        if next(SMODS.find_mod('Multiplayer')) then
            return{key='m_blah_tree_alt'}
        end
    end,
    calculate = function (self, card, context)
        if context.press_play then
            delay(1)
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    play_sound('blah_garbageNoise')
                    return true
                end
            }))
            delay(6*G.SETTINGS.GAMESPEED)
        end
        if context.main_scoring then
            if not next(SMODS.find_mod('Multiplayer')) then
                BLAH.kill_game()
            end
        end
    end
}
SMODS.Enhancement{--Lost
    key = 'lost',
    atlas = 'blahEnhancements',
    pos = {x=2,y=0},
    config={extra={retriggers=0,scalar=1}},
    loc_vars=function(self,info_queue,card)
        return{vars={card.ability.extra.retriggers,card.ability.extra.scalar}}
    end,
    calculate = function(self,card,context)
        if context.repetition then
            return{repetitions = card.ability.extra.retriggers}
        end
        if context.blah_lostTrigger and context.card == card then
            card.ability.extra.retriggers = card.ability.extra.retriggers + card.ability.extra.scalar
        end
    end
}