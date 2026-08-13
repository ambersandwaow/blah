SMODS.Joker{
    key = 'eatRich',
    atlas = 'musk',
    discovered = true,
    blueprint_compat = false,
    pos = {x=0, y=0},
    config = {
        extra = {
            rewardDollars = 15,
            maxDollars = 100
        }
    },
    rarity = 2,
    cost = 7,
    loc_vars = function(self,info_queue,card)
        return{vars = {
            card.ability.extra.rewardDollars,
            card.ability.extra.maxDollars
        }}
    end,
    calculate = function(self,card,context)
        if context.money_altered and G.GAME.dollars + context.amount >= 100 then
            G.STATE = G.STATES.GAME_OVER; G.STATE_COMPLETE = false
        end
    end,
    calc_dollar_bonus = function(self,card)
        return card.ability.extra.rewardDollars
    end
}

SMODS.Joker{
    key = 'diesel',
    atlas = 'diesel',
    discovered = true,
    pos = {x=0, y=0},
    rarity = 2,
    cost = 5,
    eternal_compat = false,
    config = {extra = {
        d6Remain = 5,
        speedRemain = 3
    }},
    loc_vars = function(self,info_queue,card)
            info_queue[#info_queue + 1] = G.P_TAGS.tag_d_six--{key = 'tag_d_six', set = 'Tag'}
            info_queue[#info_queue+1] = G.P_TAGS.tag_skip--{set = 'Tag', key = 'tag_skip'}
        return{vars = {
            card.ability.extra.d6Remain,
            card.ability.extra.speedRemain,
            localize { type = 'name_text', set = 'Tag', key = 'tag_d_six'},
            localize { type = 'name_text', set = 'Tag', key = 'tag_skip'}
        }}
    end,
    calculate = function(self,card,context)
        if context.setting_blind and G.GAME.blind_on_deck == "Small" or context.setting_blind and G.GAME.blind_on_deck == "Big" then
            card.ability.extra.d6Remain = card.ability.extra.d6Remain - 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    add_tag({ key = 'tag_d_six' })
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end
            }))
            if card.ability.extra.d6Remain == 0 and not context.blueprint then
                SMODS.pinch_and_remove(card,nil,nil,true)
                return{message = 'outta gas'},
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('blah_noGas',1,1.5)
                        return true
                    end
                }))
            end
        elseif context.setting_blind and G.GAME.blind_on_deck == "Boss" then
            card.ability.extra.speedRemain = card.ability.extra.speedRemain - 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    add_tag({ key = 'tag_skip' })
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end
            }))
            if card.ability.extra.speedRemain == 0 and not context.blueprint then
                SMODS.pinch_and_remove(card,nil,nil,true)
                return{message = 'outta gas'},
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('blah_noGas',1,1.5)
                        return true
                    end
                }))
            end
        end
    end
}
SMODS.Joker{
    key = 'offPutting',
    atlas = 'offPutting',
    discovered = true,
    pos = {x=0,y=0},
    rarity = 3,
    cost = 8,
    config = {extra = {
        spectralNum = 1,
        spectralDenom = 3,
        perRound = 1
    }},
    loc_vars = function (self,info_queue,card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.spectralNum, card.ability.extra.spectralDenom)
        return{vars = {
            numerator,
            denominator
    }}
    end,
    calculate = function(self,card,context)
        if (context.remove_playing_cards or context.joker_type_destroyed) and G.GAME.consumeable_buffer + #G.consumeables.cards <
        G.consumeables.config.card_limit and SMODS.pseudorandom_probability(card, 'blah_offPutting',
        card.ability.extra.spectralNum, card.ability.extra.spectralDenom) then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'before',
                func = (function()
                    SMODS.add_card {
                        set = 'Spectral',
                        key_append = 'blah_offPutting'
                    }
                    return true
                    end)
                }))
            G.GAME.consumeable_buffer = 0
        end
        if context.selling_card and context.card.ability.set == "Spectral" and not context.blueprint then
            G.GAME.blind.chips = math.floor(G.GAME.blind.chips / 2)
        end
    end
}
SMODS.Joker{
    key = 'larva',
    atlas = 'evolve',
    pos = {x=0,y=0},
    rarity = 1,
    cost = 1,
    discovered = true,
    eternal_compat = false,
    config = {extra = {
        evolveRounds = 3,
        currentRounds = 3,
        chips = 4
    }},
    loc_vars = function(self,info_queue,card)
        return{vars={
            card.ability.extra.evolveRounds,
            card.ability.extra.currentRounds,
            card.ability.extra.chips
        }}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return{vars={card.ability.extra.chips}}
        end
        if context.end_of_round and context.main_eval then
            if card.ability.extra.currentRounds == 0 and not context.blueprint then
                SMODS.pinch_and_remove(card,nil,nil,true)
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        play_sound('generic1',0.9+math.random()*0.1,0.8)
                        return true
                    end)
                }))
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = (function()
                        SMODS.add_card({key = 'j_blah_pupa'})
                        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                        return true
                    end),
                }))
            else
                card.ability.extra.currentRounds = card.ability.extra.currentRounds - 1
            end
        end
    end
}
SMODS.Joker{
    key = 'pupa',
    atlas = 'evolve',
    pos = {x=1,y=0},
    rarity = 2,
    cost = 5,
    unlocked = true,
    eternal_compat = false,
    in_pool = function(self,args)
        return false
    end,
    config = {extra = {
        evolveRounds = 3,
        currentRounds = 3,
        mult = 4
    }},
    loc_vars = function(self,info_queue,card)
        return{vars={
            card.ability.extra.evolveRounds,
            card.ability.extra.currentRounds,
            card.ability.extra.mult
        }}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return{vars={card.ability.extra.mult}}
        end
        if context.card_added then
            if context.card == 'j_blah_pupa' then
                return{message = 'Evolved!'}
            end
        end
        if context.end_of_round and context.main_eval then
            if card.ability.extra.currentRounds == 0 and not context.blueprint then
                SMODS.pinch_and_remove(card,nil,nil,true)
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        play_sound('generic1',0.9+math.random()*0.1,0.8)
                        return true
                    end)
                }))
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = (function()
                        SMODS.add_card({key = 'j_blah_imago'})
                        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                        return true
                    end),
                }))
            else
                card.ability.extra.currentRounds = card.ability.extra.currentRounds - 1
            end
        end
    end
}
SMODS.Joker{
    key = 'imago',
    atlas = 'evolve',
    pos = {x=2,y=0},
    rarity = 3,
    cost = 8,
    unlocked = true,
    in_pool = function(self,args)
        return false
    end,
    config={extra={
        Xmult = 3
    }},
    loc_vars=function(self,info_queue,card)
        return{vars={card.ability.extra.Xmult}}
    end,
    calculate = function(self,card,context)
        if context.card_added then
            if context.card == 'j_blah_imago' then
                return{message = 'Evolved!'}
            end
        end
        if context.joker_main then
            return{vars={card.ability.extra.Xmult}}
        end
    end
}
SMODS.Joker{
    key = 'poi',
    atlas = 'poi',
    pos = {x=0,y=0},
    rarity = 2,
    cost = 5,
    discovered = true,
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = G.P_SEALS.blah_white
    end,
    calculate = function(self,card,context)
        if context.first_hand_drawn then
            local selectedCard = pseudorandom_element(G.deck.cards, pseudoseed('j_blah_poi'))
            if selectedCard ~= nil then -- idk why this exists but im too scared to remove it :sob:
                selectedCard:set_seal('blah_white')
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.deck:juice_up()
                        return true
                    end
                }))
            end
        end
    end
}