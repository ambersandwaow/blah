SMODS.Gradient{
    key = 'waowgradient',
    colours = {
        HEX('aa5522'),
        HEX('dd7777'),
        HEX('885555')
    },
    cycle = 6,
    interpoation='trig'
}
SMODS.Gradient{
    key = 'funnyGrad',
    colours = {
        HEX('ff0000'),
        HEX('00ff00'),
        HEX('0000ff')
    },
    cycle = 6,
    interpolation = 'trig'
}
SMODS.Gradient{
    key = 'transGrad',
    colours = {
        HEX('f7a8b8'),
        HEX('ffffff'),
        HEX('55cdfc')
    },
    cycle = 6,
    interpoation='trig'
}
SMODS.Gradient{
    key = 'transGradInv',
    colours = {
        HEX('ffffff'),
        HEX('55cdfc'),
        HEX('f7a8b8')
    },
    cycle = 6,
    interpoation='linear'
}
SMODS.Gradient{
    key = 'nbGrad',
    colours = {
        HEX('FCF434'),
        HEX('ffffff'),
        HEX('9C59D1'),
        HEX('2c2c2c')
    },
    cycle = 8,
    interpoation='trig'
}
SMODS.Gradient{
    key = 'nbGradInv',
    colours = {
        HEX('9C59D1'),
        HEX('2c2c2c'),
        HEX('FCF434'),
        HEX('ffffff'),
    },
    cycle = 8,
    interpoation='linear'
}

--you have to put this after the gadients or it wont load properly on the badge
SMODS.Rarity{
    key = 'waow',
    badge_colour = SMODS.Gradients['blah_waowgradient'],
    default_weight = 0,
    disable_if_empty = true,
    pools = {['Joker'] = true}
}


SMODS.Atlas{
    key = 'blahJokers',
    path = 'blahJokers.png',
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
if not SMODS.current_mod.config.musicR then
    SMODS.Sound{
        key = 'blah_music_1',
        path = 'mainMusic.mp3',
        replace = 'music1',
        pitch = 1
    }
    SMODS.Sound{
        key = 'blah_music_2',
        path = 'packMusic.mp3',
        replace = 'music2',
        pitch = 1
    }
    SMODS.Sound{
        key = 'blah_music_4',
        path = 'shopMusic.mp3',
        replace = 'music4',
        pitch = 1
    }
    SMODS.Sound{
        key = 'blah_music_5',
        path = 'bossMusic.mp3',
        replace = 'music5',
        pitch = 1
    }
end
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
SMODS.Sound{
    key = 'blah_garbageNoise',
    path = 'garbageNoise.wav'
}

SMODS.Font{
    key='wee',
    path='waa.ttf'
}