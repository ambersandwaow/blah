SMODS.Consumable{--Page of Wands
    key = 'PoW',
    set = 'Tarot',
    atlas = 'blahConsumables',
    pos = {x=0,y=2},
    discovered = true,
    config = {max_highlighted=1,mod_conv='m_blah_lost',extra={money=5}},
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = {key='c_blah_lostTip',set='blah_tooltips'}
        return { vars = {
            card.ability.max_highlighted,
            localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv },
            card.ability.extra.money
        } }
    end,
    use = function(self,card,area,copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.hand.highlighted[i]:set_ability(card.ability.mod_conv)
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.5)
        ease_dollars(-card.ability.extra.money)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
    end,
}
SMODS.Consumable{--Knight of Wands
    key = 'KoW',
    set = 'Tarot',
    atlas = 'blahConsumables',
    pos = {x=1,y=2},
    discovered = true,
    config = {max_highlighted=1,mod_conv='m_blah_lost',extra={money=5}},
    loc_vars = function(self,info_queue,card)
        if not next(SMODS.find_mod('Spectrallib')) then
        info_queue[#info_queue + 1] = { key = 'c_blah_spectrallibTip', set = 'blah_tooltips'}
        end
        return { vars = {
            card.ability.max_highlighted,
        } }
    end,
    use = function(self,card,area,copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.hand.highlighted[i]:set_ability(pseudorandom_element(BLAH.funny()))
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.5)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
    end,
    can_use = function(self, card)
        local count
        for _,i in ipairs(G.hand.highlighted) do
            if i == card then
                count = card.ability.max_highlighted + 1
            end
        end
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= (count or card.ability.max_highlighted)
    end,
}
SMODS.Consumable{--Queen of Wands
    key = 'QoW',
    set = 'Tarot',
    atlas = 'blahConsumables',
    pos = {x=2,y=2},
    discovered = true,
    config = {max_highlighted=1,mod_conv='m_blah_gaia',mod_conv2='m_blah_ambray'},
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = {key='c_blah_gaiaTip',set='blah_tooltips'}
        info_queue[#info_queue + 1] = {key='c_blah_ambrayTip',set='blah_tooltips'}
        return { vars = {
            card.ability.max_highlighted,
            localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv },
            localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv2 }
        } }
    end,
    use = function(self,card,area,copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        local gaming
        local waaa=pseudorandom('QoW',1,2)
        if waaa==1 then gaming = card.ability.mod_conv end
        if waaa==2 then gaming = card.ability.mod_conv2 end
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.hand.highlighted[i]:set_ability(gaming)
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.5)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
    end,
}
SMODS.Consumable{
    key = 'KioW',
    set = 'Tarot',
    atlas = 'blahConsumables',
    pos = {x=3,y=2},
    config = {extra={max=1}},
    loc_vars = function(self,info_queue,card)
        return{vars={card.ability.extra.max}}
    end,
    use = function(self,card,area,copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.2)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
                local bingus = pseudorandom_element(G.jokers.cards)
                local awoo = SMODS.add_card({set='Base'})
                awoo:set_ability(bingus.config.center.key)
                for k, v in pairs(bingus.ability) do
                    if type(v) == 'table' then
                        awoo.ability[k] = copy_table(v)
                    else
                        awoo.ability[k] = v
                    end
                end
                play_sound('tarot2', 1, 0.6)
                awoo:juice_up(0.3, 0.3)
                SMODS.destroy_cards(bingus)
                return true
            end
        }))
    end,
    can_use = function()
        if #G.jokers.cards>0 then return true end return false
    end
}