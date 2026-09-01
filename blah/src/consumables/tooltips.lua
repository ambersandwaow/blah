--this only works bc of tooltips.toml, kind of annoying bc now i have to make a new consumable for everything i want to have a tooltip
--the variables have to be hard coded in the localization file due to how info_queues are calculated (damn you thunk)

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
BLAH.make_tooltip('ubiTip')
BLAH.make_tooltip('lostTip')
BLAH.make_tooltip('lostTip2')
BLAH.make_tooltip('uniqueTip')
BLAH.make_tooltip('whateverTip')
BLAH.make_tooltip('spectrallibTip')
