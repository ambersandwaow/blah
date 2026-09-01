function BLAH.kill_game()
    if ((G or {}).SOUND_MANAGER or {}).channel then
        G.SOUND_MANAGER.channel:push({
            type = "kill",
        })
    end
    if ((G or {}).SAVE_MANAGER or {}).channel then
        G.SAVE_MANAGER.channel:push({
            type = "kill",
        })
    end
    if ((G or {}).HTTP_MANAGER or {}).channel then
        G.HTTP_MANAGER.channel:push({
            type = "kill",
        })
    end

    assert(require"lovely".reload_patches())
    love.event.quit()
end

function BLAH.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

local wee = {}
local funnyJokers = {'j_gros_michel','j_blah_pupa','j_joker','j_credit_card','j_mr_bones'}
local funnyConsumables = {'c_pluto','c_blah_KoW','c_ouija','c_blah_gambling'}
local funnyDecks = {'b_erratic','b_painted','b_anaglyph'}
local funnyVouchers = {'v_glow_up','v_illusion'}
function BLAH.funny(args)
    if args == nil then
        args = {}
        args.jokers = true
        args.consumables = true
        args.decks = true
        args.vouchers = true
    end
    if args.jokers then
        for _,i in ipairs(funnyJokers) do
            wee[#wee+1] = i
        end
    end
    if args.consumables then
        for _,i in ipairs(funnyConsumables) do
            wee[#wee+1] = i
        end
    end
    if args.vouchers then
        for _,i in ipairs(funnyVouchers) do
            wee[#wee+1] = i
        end
    end
    if args.decks then
        for _,i in ipairs(funnyDecks) do
            wee[#wee+1] = i
        end
    end
    return wee
end