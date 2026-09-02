local config = SMODS.current_mod.config

SMODS.Joker{--True Love's First Kiss
    key = 'love',
    atlas = 'blahJokers',
    pos = {x=4,y=1},
    soul_atlas = 'blahJokers',
    soul_pos = {x=5,y=1},
    cost = 20,
    rarity = 'blah_waow',
    unlocked = true,
    in_pool=function(self,args) if config ~= nil and config.balanced then return false else return true end end, --ugly as fuck
    config={extra={scalar=0.05,current=1}},
    loc_vars=function(self,info_queue,card)if config ~= nil then
            if config.extraGay then
                return{key='j_blah_love_alt',vars={card.ability.extra.scalar,card.ability.extra.current}}
            else
                return{key='j_blah_love',vars={card.ability.extra.scalar,card.ability.extra.current}}
            end
        end
    end,
    calculate = function(self,card,context)
        if context.pre_joker and not context.blueprint then
            if BLAH.yuriTrigger then
                card.ability.extra.current = card.ability.extra.current + card.ability.extra.scalar
                return{message='upgayed'}
            end
        end
        if context.joker_main then
            return{emult=card.ability.extra.current}
        end
    end
}
local saver
SMODS.Joker{ --The Trans Experience
    key = 'transness',
    atlas = 'blahJokers',
    pos = {x=6,y=1},
    soul_atlas = 'blahJokers',
    soul_pos = {x=7,y=1},
    cost = 20,
    rarity = 'blah_waow',
    discovered = true,
    blueprint_compat = false,
    config={extra={willWin = false, stinkyyy = 0, tally = 0, retrigCount = 0, timer = 20}},
    loc_vars = function(self,info_queue,card)
        if card.ability.extra.stinkyyy == 1 then
            local a = (BLAH.transCards[1] or {rank='Ace',suit='Spades'})
            local b = (BLAH.transCards[2] or {rank='Ace',suit='Hearts'})
            return{key='j_blah_transness1',vars={
                localize(a.rank, 'ranks'), localize(a.suit, 'suits_plural'),
                localize(b.rank, 'ranks'), localize(b.suit, 'suits_plural'),
                colours = { G.C.SUITS[a.suit],G.C.SUITS[b.suit] },
            }}
        elseif card.ability.extra.stinkyyy == 2 then
            info_queue[#info_queue+1] = {set = "Other", key = "blah_transTip", vars = {G.GAME.round_resets.ante,card.ability.extra.retrigCount}}
            return{key='j_blah_transness2',vars={
                card.ability.extra.tally, card.ability.extra.retrigCount
            }}
        elseif card.ability.extra.stinkyyy == 3 then
            return{key='j_blah_transness3',vars={
                card.ability.extra.timer
            }}
        else
            info_queue[#info_queue+1] = {set = "Other", key = "blah_transTip2"}
            local a = (BLAH.transCards[1] or {rank='Ace',suit='Spades'})
            local b = (BLAH.transCards[2] or {rank='Ace',suit='Hearts'})
            return{vars={
                localize(a.rank, 'ranks'), localize(a.suit, 'suits_plural'),
                localize(b.rank, 'ranks'), localize(b.suit, 'suits_plural'),
                colours = { G.C.SUITS[a.suit],G.C.SUITS[b.suit] },
                card.ability.extra.tally,card.ability.extra.retrigCount,
                card.ability.extra.timer
            }}
        end
    end,
    add_to_deck = function(self,card,context)
        card.ability.extra.stinkyyy = pseudorandom('gamerr',1,2)
        card.ability.extra.willWin = true
    end,
    in_pool=function(self,args) return false --[[if (config ~= nil and config.balanced) or next(SMODS.find_mod('Multiplayer'))then
        return false else return true end ]]end,
    calculate = function(self,card,context)
        if G.GAME.current_round.hands_left <= 0 or G.GAME.chips >= G.GAME.blind.chips then
            BLAH.endRound = true
        end
        if context.end_of_round and context.main_eval then
            if card.ability.extra.willWin then
                if context.game_over then
                    return{saved=''}
                end
            else
                G.STATE = G.STATES.GAME_OVER
                if not G.GAME.won and not G.GAME.seeded and not G.GAME.challenge then
                    G.PROFILES[G.SETTINGS.profile].high_scores.current_streak.amt = 0
                end
                G:save_settings()
                G.FILE_HANDLER.force = true
                G.STATE_COMPLETE = false
            end
            card.ability.extra.willWin = false
            card.ability.extra.stinkyyy = pseudorandom('gamerr',1,2)
        end
        if card.ability.extra.stinkyyy == 0 then
            card.ability.extra.willWin = true --for testing
        elseif card.ability.extra.stinkyyy == 9 then
            card.ability.extra.willWin = false
        elseif card.ability.extra.stinkyyy == 1 then
            if context.individual and context.cardarea == G.play then
                for _,bleh in ipairs(BLAH.transCards) do
                    if context.other_card.base.value == bleh.rank and context.other_card.base.suit == bleh.suit then
                        card.ability.extra.willWin = true
                        return{message='win!'}
                    end
                end
            end
        elseif card.ability.extra.stinkyyy == 2 then
            card.ability.extra.retrigCount = 8+3*G.GAME.round_resets.ante
            if context.individual and (context.cardarea == G.play or
            (context.cardarea == G.hand and SMODS.has_enhancement(context.other_card,'m_steel') and not context.end_of_round)) then
                card.ability.extra.tally = card.ability.extra.tally+1
                if card.ability.extra.tally >= card.ability.extra.retrigCount then
                    card.ability.extra.willWin = true
                    card.ability.extra.tally = 0
                    return{message='win!'}
                end
                return{message='+1'}
            end
        elseif card.ability.extra.stinkyyy == 3 then
            if context.first_hand_drawn then
                saver = G.TIMERS.REAL
            elseif G.TIMERS.REAL >= ((saver or 0)+card.ability.extra.timer) then
                card.ability.extra.willWin = false
                BLAH.endRound = true
                end_round()
            else
                card.ability.extra.willWin = true
            end
        end
    end
}

local old = end_round
function end_round()
    if BLAH.endRound or not next(SMODS.find_card('j_blah_transness',false)) or (#G.hand.cards < 1 and #G.deck.cards < 1) then
        local achoo = old()
        BLAH.endRound = false
        return achoo
    else return end
end


BLAH.transCards={}
function BLAH.resetTransCards()
    BLAH.transCards[1] = { rank = 'Ace', suit = 'Spades' }
    BLAH.transCards[2] = { rank = 'Ace', suit = 'Hearts' }
    local valid_idol_cards = {}
    for _, playing_card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(playing_card) and not SMODS.has_no_rank(playing_card) then
            valid_idol_cards[#valid_idol_cards + 1] = playing_card
        end
    end
    local idol_card = pseudorandom_element(valid_idol_cards, 'yayyy')
    if idol_card then
        BLAH.transCards[1].rank = idol_card.base.value
        BLAH.transCards[1].suit = idol_card.base.suit
        BLAH.transCards[1].id = idol_card.base.id
    end
    idol_card = pseudorandom_element(valid_idol_cards, 'wahoo')
    if idol_card then
        BLAH.transCards[2].rank = idol_card.base.value
        BLAH.transCards[2].suit = idol_card.base.suit
        BLAH.transCards[2].id = idol_card.base.id
    end
end