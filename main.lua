SMODS.Atlas{
    key = 'musk',
    path = 'musk.png',
    px = 71,
    py = 90
}
SMODS.Atlas{
    key = 'diesel',
    path = 'diesel.png',
    px = 71,
    py = 90
}
SMODS.Atlas{
    key = 'offPutting',
    path = 'offPutting.png',
    px = 71,
    py = 90
}
SMODS.Atlas{
    key = 'evolve',
    path = 'evolve.png',
    px = 71,
    py = 90
}
SMODS.Atlas{
    key = 'poi',
    path = 'poi.png',
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = 'blahSeals',
    path = 'blahSeals.png',
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = 'blahConsumables',
    path = 'blahConsumables.png',
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = 'blahEnhancements',
    path = 'blahEnhancements.png',
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = 'blahBoosters',
    path = 'blahBoosters.png',
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = 'blahDecks',
    path = 'blahDecks.png',
    px = 71,
    py = 95
}
SMODS.Sound{
    key = 'blah_noGas',
    path = 'noGas.wav'
}
SMODS.Sound{
    key = 'blah_boom',
    path = 'boom.wav'
}
SMODS.Sound{
    key = 'blah_yippie',
    path = 'yippie.wav'
}
SMODS.Sound{
    key = 'blah_myKing',
    path = 'myKing.wav'
}
SMODS.Sound{
    key = 'blah_asgoreTruck',
    path = 'asgoreTruck.wav'
}
SMODS.Sound{
    key = 'blah_eggDelta',
    path = 'eggDelta.wav'
}
SMODS.Sound{
    key = 'blah_glue',
    path = 'glue.wav'
}
SMODS.Sound{
    key = 'blah_imFalling',
    path = 'imFalling.wav'
}
SMODS.Sound{
    key = 'blah_splat',
    path = 'splat.wav'
}
SMODS.Sound{
    key = 'blah_sustingus',
    path = 'sustingus.wav'
}
SMODS.Sound{
    key = 'blah_tenna',
    path = 'tenna.wav'
}
assert(SMODS.load_file("src/consumables/quests.lua"))()
assert(SMODS.load_file("src/consumables/tooltips.lua"))()
assert(SMODS.load_file("src/boosters.lua"))()
assert(SMODS.load_file("src/decks.lua"))()
assert(SMODS.load_file("src/enhancements.lua"))()
assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/seals.lua"))()


-- to do 
-- add a little message at the start like the tutorial with jimbo but a different joker