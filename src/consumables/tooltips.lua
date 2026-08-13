--this only works bc of tooltips.toml, kind of annoying bc now i have to make a new consumable for everything i want to have a tooltip

SMODS.ConsumableType {
    key = 'blah_tooltips',
    default = 'c_blah_quests',
    collection_rows = { 4, 5 },
    primary_colour = HEX('004e4e'),
    secondary_colour = HEX('00aeae'),
    shop_rate = 0,
    no_collection = true,
}

function BLAH.make_tooltip(name,vars)
    return{
        SMODS.Consumable{
        key = name,
        set = 'blah_tooltips',
        no_collection = true,
        loc_vars = function (self, info_queue, card)
            return{vars={(vars or nil)}}
        end
        }
    }
end


BLAH.make_tooltip('quests',BLAH.questReward)
BLAH.make_tooltip('gaiaTip')
BLAH.make_tooltip('ambrayTip')
BLAH.make_tooltip('whiteSealTip')
