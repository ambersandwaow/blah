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
