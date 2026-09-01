-- to do
-- make quests have their own cardarea, below consumeables(maybe make it so that if youre in multiplayer it is farther down to not interfere)
-- why doesnt it work :sob:
BLAH = {}

assert(SMODS.load_file("src/misc.lua"))()
assert(SMODS.load_file("src/evilUI.lua"))()

if not SMODS.current_mod.config.musicK then
    SMODS.current_mod.optional_features = {
        cardareas = {G.deck,G.discard}
    }

    assert(SMODS.load_file("src/consumables/quests.lua"))()
    assert(SMODS.load_file("src/consumables/tarots.lua"))()
    assert(SMODS.load_file("src/consumables/tooltips.lua"))()
    assert(SMODS.load_file("src/boosters.lua"))()
    assert(SMODS.load_file("src/decks.lua"))()
    assert(SMODS.load_file("src/enhancements.lua"))()
    assert(SMODS.load_file("src/functions.lua"))()
    assert(SMODS.load_file("src/jokers.lua"))()
    assert(SMODS.load_file("src/seals.lua"))()
    assert(SMODS.load_file('src/waow.lua'))()

    SMODS.current_mod.calculate = function(self,context)
        if context.buying_card and context.card.ability.set == 'Voucher' then
            BLAH.vouchersBought = (BLAH.vouchersBought or 0) + 1
        end
        local gamers = table
        if context.card_added then
            if not BLAH.contains(gamers,context.card.config.center.key) then
                if context.card.ability.set == 'Joker' then
                    BLAH.jokersBought = (BLAH.jokersBought or 0) + 1
                elseif context.card.ability.set == ('Tarot' or 'Planet' or 'Spectral' or 'blah_quest' or --jank as fuck ik
                'Code' or 'Alphabet' or 'Replicant' or 'Umbral') then
                    BLAH.consumablesBought = (BLAH.consumablesBought or 0) + 1
                end
            end
        end
        if context.first_hand_drawn and G.GAME.round == 1 then
            BLAH.consumablesBought = 0
            BLAH.jokersBought = 0
            BLAH.vouchersBought = 0
            BLAH.yuriTrigger = false
        end
    end


    function SMODS.current_mod.reset_game_globals(run_start)
        BLAH.resetTransCards()
    end
end