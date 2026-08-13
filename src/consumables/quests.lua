SMODS.ConsumableType {
    key = 'blah_quest',
    default = 'c_blah_yuri',
    collection_rows = { 4, 5 },
    primary_colour = HEX('004e4e'),
    secondary_colour = HEX('00aeae'),
    shop_rate = 4
}

BLAH.questReward = 15 -- amount gained for completing quests
-- to change this in the info_queue you have to go to c_blah_quests since variables are just displayed as 'nil' in info_queues



local tally = 0
SMODS.Consumable{
    key = 'yuri',
    set = 'blah_quest',
    atlas = 'blahConsumables',
    pos = {x=0,y=0},
    cost = 4,
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_quests', set = 'blah_tooltips'}
        info_queue[#info_queue+1] = {key = 'c_blah_gaiaTip', set = 'blah_tooltips'}
        info_queue[#info_queue+1] = {key = 'c_blah_ambrayTip', set = 'blah_tooltips'}
        return{vars ={
            localize{type = 'name_text', set = 'Enhanced', key = 'm_blah_gaia'},
            localize{type = 'name_text', set = 'Enhanced', key = 'm_blah_ambray'},
        }}
    end,
    select_card = 'consumeables',
    add_to_deck = function(self,card)
        local selectedCard1 = pseudorandom_element(G.deck.cards, pseudoseed('c_blah_yuri'))
        local selectedCard2 = pseudorandom_element(G.deck.cards, pseudoseed('c_blah_yuri2'))
        if selectedCard1 == selectedCard2 then
            selectedCard2 = pseudorandom_element(G.deck.cards, pseudoseed('c_blah_yuri3'))
        end
        selectedCard1:set_ability('m_blah_gaia')
        selectedCard2:set_ability('m_blah_ambray')
    end,
    --this is outdated but should still work
    calculate = function(self,card,context)
        if context.after then
            if BLAH.yuriTrigger then -- comes from m_blah_gaia
                return{
                    message = 'wahoo!!',
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:juice_up(1,3)
                            play_sound('blah_yippie')
                            return true
                        end
                    })),
                    dollars = BLAH.questReward
                },
                SMODS.destroy_cards(card,nil,nil,true)
            end
            BLAH.yuriTrigger = false
        end
    end,
    can_use = function()
        return true
    end,
    keep_on_use = function()
        return true
    end,
    use = function(self,card,area,copier)
        local quack = math.random(1,8)
        if quack == 1 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_myKing')
                    return true
                end
            }))
        end
        if quack == 2 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_asgoreTruck')
                    return true
                end
            }))
        end
        if quack == 3 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_eggDelta')
                    return true
                end
            }))
        end
        if quack == 4 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_glue')
                    return true
                end
            }))
        end
        if quack == 5 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_imFalling')
                    return true
                end
            }))
        end
        if quack == 6 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_splat')
                    return true
                end
            }))
        end
        if quack == 7 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_sustingus')
                    return true
                end
            }))
        end
        if quack == 8 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_tenna')
                    return true
                end
            }))
        end
    end
}
SMODS.Consumable{
    key = 'ubi',
    set = 'blah_quest',
    atlas = 'blahConsumables',
    pos = {x=1,y=0},
    cost = 4,
    config={extra={limit = 0,extraDollars=5}},
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_quests', set = 'blah_tooltips'}
        return{vars={card.ability.extra.limit,card.ability.extra.extraDollars}}
    end,
    select_card = 'consumeables',
    calculate = function(self,card,context)
        if context.money_altered then
            if ((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) <= card.ability.extra.limit then
                return{
                    message = 'wahoo!!',
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:juice_up(1,3)
                            play_sound('blah_yippie')
                            return true
                        end
                    })),
                    dollars = (BLAH.questReward+card.ability.extra.extraDollars)
                },
                SMODS.destroy_cards(card,nil,nil,true)
            end
        end
    end,
  can_use = function()
        return true
    end,
    keep_on_use = function()
        return true
    end,
    use = function(self,card,area,copier)
        local quack = math.random(1,8)
        if quack == 1 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_myKing')
                    return true
                end
            }))
        end
        if quack == 2 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_asgoreTruck')
                    return true
                end
            }))
        end
        if quack == 3 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_eggDelta')
                    return true
                end
            }))
        end
        if quack == 4 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_glue')
                    return true
                end
            }))
        end
        if quack == 5 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_imFalling')
                    return true
                end
            }))
        end
        if quack == 6 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_splat')
                    return true
                end
            }))
        end
        if quack == 7 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_sustingus')
                    return true
                end
            }))
        end
        if quack == 8 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_tenna')
                    return true
                end
            }))
        end
    end
}
SMODS.Consumable{
    key = 'minimal',
    set = 'blah_quest',
    atlas = 'blahConsumables',
    pos = {x=0,y=1},
    cost = 4,
    draw = function(self, card, layer)
        if card.config.center.discovered or card.bypass_discovery_center then
            card.children.center:draw_shader('booster', nil, card.ARGS.send_to_shader)
        end
    end,
    config={extra={cardsInDeck = 45, tarot = 'c_hanged_man'}},
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_quests', set = 'blah_tooltips'}
        info_queue[#info_queue + 1] = { key = card.ability.extra.tarot, set = 'Tarot'}
        return{vars={
            card.ability.extra.cardsInDeck,
            localize{type = 'name_text', set = 'Tarot', key = card.ability.extra.tarot}
        }}
    end,
    select_card = 'consumeables',
    add_to_deck = function(self,card)
        SMODS.add_card({set='Tarot',key=card.ability.extra.tarot})
    end,
    calculate = function(self,card,context)
        if context.remove_playing_cards then
            if #G.playing_cards <= card.ability.extra.cardsInDeck+#context.removed then
                return{
                    message = 'yippie!',
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:juice_up(1,3)
                            play_sound('blah_yippie')
                            return true
                        end
                    })),
                    dollars = BLAH.questReward,
                },
                SMODS.destroy_cards(card)
            end
        end
--[[        if context.end_of_round then
            SMODS.destroy_cards(BLAH.markedForDeath,true,true)
        end
this was for testing so i didnt have to make a patch for it
--]]    end,
    keep_on_use = function()
        return true
    end,
    can_use = function()
        return true
    end,
    use = function(self,card,area,copier)
        local quack = math.random(1,8)
        if quack == 1 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_myKing')
                    return true
                end
            }))
        end
        if quack == 2 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_asgoreTruck')
                    return true
                end
            }))
        end
        if quack == 3 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_eggDelta')
                    return true
                end
            }))
        end
        if quack == 4 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_glue')
                    return true
                end
            }))
        end
        if quack == 5 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_imFalling')
                    return true
                end
            }))
        end
        if quack == 6 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_splat')
                    return true
                end
            }))
        end
        if quack == 7 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_sustingus')
                    return true
                end
            }))
        end
        if quack == 8 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_tenna')
                    return true
                end
            }))
        end
    end
}
SMODS.Consumable{
    key = 'study',
    set = 'blah_quest',
    atlas = 'blahConsumables',
    pos = {x=1,y=1},
    cost = 4,
    config={extra={tarot = 'c_strength'}},
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_quests', set = 'blah_tooltips'}
        info_queue[#info_queue + 1] = { key = card.ability.extra.tarot, set = 'Tarot'}
        return{vars={
            localize{type = 'name_text', set = 'Tarot', key = card.ability.extra.tarot}
        }}
    end,
    select_card = 'consumeables',
    add_to_deck = function(self,card)
        SMODS.add_card({set='Tarot',key=card.ability.extra.tarot})
    end,
    calculate = function(self,card,context)
        if context.after then
            if SMODS.is_poker_hand_visible('Flush Five') then
                return{
                    message = 'yippie!',
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:juice_up(1,3)
                            play_sound('blah_yippie')
                            return true
                        end
                    })),
                    dollars = BLAH.questReward
                },
                SMODS.destroy_cards(card)
            end
        end
    end,  can_use = function()
        return true
    end,
    keep_on_use = function()
        return true
    end,
    use = function(self,card,area,copier)
        local quack = math.random(1,8)
        if quack == 1 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_myKing')
                    return true
                end
            }))
        end
        if quack == 2 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_asgoreTruck')
                    return true
                end
            }))
        end
        if quack == 3 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_eggDelta')
                    return true
                end
            }))
        end
        if quack == 4 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_glue')
                    return true
                end
            }))
        end
        if quack == 5 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_imFalling')
                    return true
                end
            }))
        end
        if quack == 6 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_splat')
                    return true
                end
            }))
        end
        if quack == 7 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_sustingus')
                    return true
                end
            }))
        end
        if quack == 8 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_tenna')
                    return true
                end
            }))
        end
    end
}
SMODS.Consumable{
    key = 'trans',
    set = 'blah_quest',
    atlas = 'blahConsumables',
    pos = {x=2,y=0},
    cost = 4,
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_quests', set = 'blah_tooltips'}
    end,
    select_card = 'consumeables',
    calculate = function(self,card,context)
        if context.change_rank then
            if tostring(context.old_rank) == ('12' or '11') then
                return{
                    message = 'yippie!!',
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:juice_up(1,3)
                            play_sound('blah_yippie')
                            return true
                        end
                    })),
                    dollars = BLAH.questReward
                },
            SMODS.destroy_cards(card)
            end
        end
    end,
    can_use = function()
        return true
    end,
    keep_on_use = function()
        return true
    end,
    use = function(self,card,area,copier)
        local quack = math.random(1,8)
        if quack == 1 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_myKing')
                    return true
                end
            }))
        end
        if quack == 2 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_asgoreTruck')
                    return true
                end
            }))
        end
        if quack == 3 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_eggDelta')
                    return true
                end
            }))
        end
        if quack == 4 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_glue')
                    return true
                end
            }))
        end
        if quack == 5 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_imFalling')
                    return true
                end
            }))
        end
        if quack == 6 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_splat')
                    return true
                end
            }))
        end
        if quack == 7 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_sustingus')
                    return true
                end
            }))
        end
        if quack == 8 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('blah_tenna')
                    return true
                end
            }))
        end
    end
}
