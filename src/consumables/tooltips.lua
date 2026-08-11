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
SMODS.Consumable{
    key = 'quests',
    set = 'blah_tooltips',
    no_collection = true
}
SMODS.Consumable{
    key = 'lazy',
    set = 'blah_tooltips',
    no_collection = true
}
SMODS.Consumable{
    key = 'gaiaTip',
    set = 'blah_tooltips',
    no_collection = true
}
SMODS.Consumable{
    key = 'ambrayTip',
    set = 'blah_tooltips',
    no_collection = true
}