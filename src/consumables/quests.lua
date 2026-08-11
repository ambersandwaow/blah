SMODS.ConsumableType {
    key = 'blah_quest',
    default = 'c_blah_yuri',
    collection_rows = { 4, 5 },
    primary_colour = HEX('004e4e'),
    secondary_colour = HEX('00aeae'),
    shop_rate = 4
}
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
            localize{type = 'name_text', set = 'Enhanced', key = 'm_blah_ambray'}
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
        if context.joker_main and not context.blueprint then
            for i in ipairs(G.play.cards) do
                if G.play.cards[i] ~= nil then
                    if SMODS.has_enhancement(G.play.cards[i], ('m_blah_ambray' or 'm_blah_gaia')) then
                        tally = tally+1
                        if tally >= 2 then
                            return{
                                message = 'wahoo!!',
                                dollars = 15,
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        card:juice_up(1,3)
                                        play_sound('blah_yippie')
                                        return true
                                    end
                                }))
                            },
                            SMODS.destroy_cards(card,nil,nil,true)
                        end
                    end
                end
            end
        end
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
    end,
    keep_on_use = function(self)
        return true
    end,
    can_use = function(self)
        return true
    end
}
SMODS.Consumable{
    key = 'ubi',
    set = 'blah_quest',
    atlas = 'blahConsumables',
    pos = {x=1,y=0},
    cost = 4,
    blueprint_compat=false,
    config={extra={limit = 0}},
    loc_vars = function(self,info_queue,card)
        info_queue[#info_queue + 1] = { key = 'c_blah_quests', set = 'blah_tooltips'}
        return{vars={card.ability.extra.limit}}
    end,
    select_card = 'consumeables',
    calculate = function(self,card,context)
        if ((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) <= card.ability.extra.limit then
            return{
                message = 'wahoo!!',
                dollars = 15,
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card:juice_up(1,3)
                        play_sound('blah_yippie')
                        return true
                    end
                }))
            },
            SMODS.destroy_cards(card,nil,nil,true)
        end
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
    end,
    keep_on_use = function(self)
        return true
    end,
    can_use = function(self)
        return true
    end
}