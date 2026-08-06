SMODS.Joker {
    key = 'yummy',
    atlas = 'area',
    discovered = true,
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            dollars = 5
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue,card)
        return{
            vars = {
                card.ability.extra.dollars
            }
        }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return{
                dollars = card.ability.extra.dollars
            }
        end
    end
}

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
    config = {extra = {
        d6Remain = 5,
        speedRemain = 3
    }},
    loc_vars = function(self,info_queue,card)
        return{vars = {
            card.ability.extra.d6Remain,
            card.ability.extra.speedRemain,
            localize { type = 'name_text', set = 'Tag', key = 'tag_d_six'},
            localize { type = 'name_text', set = 'Tag', key = 'tag_skip'}
        }}
    end,
    calculate = function(self,card,context)
        if context.setting_blind and G.GAME.blind_on_deck == "Small" or context.setting_blind and G.GAME.blind_on_deck == "Big" then
            G.E_MANAGER:add_event(Event({
                func = function()
                    add_tag({ key = 'tag_d_six' })
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end
            }))
        elseif context.setting_blind and G.GAME.blind_on_deck == "Boss" then
             G.E_MANAGER:add_event(Event({
                func = function()
                    add_tag({ key = 'tag_skip' })
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end
            }))
        end
    end
}
