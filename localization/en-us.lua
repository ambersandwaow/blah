return {
    descriptions = {
        Joker = {
            j_blah_eatRich = {
                name = 'Eat the Rich',
                text = {
                    'Gives {C:money}$#1#{} at end',
                    'of round. {C:red}Kills you{} if',
                    'you have over {C:money}$#2#{}'
                }
            },
            j_blah_diesel = {
                name = 'Diesel',
                text = {
                    {
                        'When entering {C:attention}Small{} or{C:attention} Big',
                        '{C:attention}blinds{}, create a {C:attention}#3#',
                        '{C:inactive}#1# remaining'
                    },
                    {
                        'When entering {C:attemtion}Boss blind{}',
                        'create a {C:attention}#4#',
                        '{C:inactive}#2# remaining  '
                    }
                }
            },
            j_blah_offPutting = {
                name = 'Off-Putting Joker',
                text = {
                    {
                        '{C:green}#1# in #2#{} chance to generate',
                        'a {C:spectral}Spectral{} card when',
                        '{C:red,E:3}destroying{} a card',
                        '{C:inactive}Must have room{}'
                    },
                    {
                        'When you sell a',
                        '{C:spectral}Spectral{} card',
                        'the {C:attention}blind requirement{}',
                        'is halved'
                    }
                }
            },
            j_blah_larva={
                name = 'Larva',
                text = {
                    '{C:chips}+#3#{} chips',
                    '{C:attention}Evolves{} after {C:attention}#1#{} rounds',
                    '{C:inactive}#2# remaining'
                }
            },
            j_blah_pupa={
                name = 'Pupa',
                text = {
                    '{C:mult}+#3#{} mult',
                    '{C:attention}Evolves{} after {C:attention}#1#{} rounds',
                    '{C:inactive}#2# remaining',
                    '{C:inactive}Evolves from Larva'
                }
            },
            j_blah_imago={
                name = 'Imago',
                text = {
                    '{X:mult,C:white}X#1#{} mult',
                    '{C:inactive}Evolves from Pupa'
                }
            },
            j_blah_poi={
                name = 'P.O.I',
                text = {
                    'At start of round adds a',
                    '{C:attention}White Seal{} to {C:attention}1{} random card in deck'
                }
            },
            j_blah_forest={
                name = 'Cuddle in the Woods',
                text = {
                    {
                        'Before {C:attention}Gaia{} and {C:attention}Ambray{}',
                        'are scored, they gain an additional',
                        '{C:attention}#1#{} permanent retrigger',
                        'then they are debuffed this round',
                    }
                }
            },
            j_blah_forest_alt={
                name = 'Cuddle in the Woods',
                text = {
                    {
                        'Before {C:attention}Gaia{} and {C:attention}Ambray{}',
                        'are scored, they gain an additional',
                        '{C:attention}#1#{} permanent retrigger',
                        'then they are debuffed this round',
                    },
                    {
                        '{C:inactive,s:0.6}laying there in the woods together with nothing else to distract,',
                        '{C:inactive,s:0.6}they felt at home with eachother, like this was something',
                        '{C:inactive,s:0.6}that shouldve happened long ago'
                    }
                }
            },
            j_blah_washed = {
                name = 'Out for a Shower',
                text = {
                    {
                        'At start of ronud',
                        'multiply all values of a',
                        'random other joker by {C:attention}#1#',
                        'then {C:red}debuff{} it'
                    }
                }
            },
            j_blah_missing = {
                name = 'Went Missing',
                text = {
                    'Played cards gain {C:white,X:mult}X#1#{} mult',
                    '{C:green}#2# in #3#{} chance to be destroyed'
                }
            },
            j_blah_begun = {
                name = 'Only Just Begun',
                text = {
                    {
                        'If {C:attention}first hand{} of round is a',
                        'single card, enhance that card',
                        'into a {C:attention}Lost{} card'
                    }
                }
            },
            j_blah_absurd = {
                name = 'Absurd Joker',--{f:blah_wee}(⸝⸝>ᴗ<⸝⸝){}
                text = {
                    'At the start of every round',
                    'add {C:attention}1{} random',
                    'card to your hand'
                }
            },
            j_blah_io = {
                name = 'IO',
                text = {
                    'For every {C:money}$#1#{} spent',
                    'upgrade flush level',
                    '{C:money}$#2#{C:inactive} remaining'
                }
            },
            j_blah_love = {
                name = 'True Love\'s First Kiss',
                text = {
                    'Gains {C:white,X:dark_edition}^#1#{} mult when',
                    'gayyyyy',
                    '{C:inactive}Currently {C:white,X:dark_edition}^#2#{C:inactive} mult'
                }
            },
            j_blah_love_alt = {
                name = 'True Love\'s First Kiss',
                text = {
                    {
                        'Gains {C:white,X:dark_edition}^#1#{} mult when',
                        'gayyyyy',
                        '{C:inactive}Currently {C:white,X:dark_edition}^#2#{C:inactive} mult'
                    },
                    {
                        '{C:inactive,s:0.6}yeah how could i ever make this more gay'
                    }
                }
            },
            j_blah_unique = {
                name = 'Unique Joker',
                text = {
                    'Gains {C:chips}+#4#{} for each unique{C:attention} consumable{} bought this run',
                    'gains {C:mult}+#5#{} for each unique {C:attention}joker{} bought this run',
                    'gains {C:white,X:mult}X#6#{} for each unique {C:attention}voucher{} bought this run',
                    '{C:inactive}Currently {C:chips}+#1#{C:inactive} chips, {C:mult}+#2#{C:inactive} mult, and {C:white,X:mult}X#3#{C:inactive} mult'
                }
            },
            j_blah_whatever = {
                name = 'Whatever It Takes',
                text = {
                    'Go up to {C:red}-$#2#{} in debt',
                    'for every {C:money}$#1#{} under {C:money}$0{} you',
                    'have, gain {C:attention}+1{} hand size',
                    '{C:inactive}currently {C:attention}+#3#{C:inactive} hand size'
                }
            },
            j_blah_transness = {
                name = 'The Trans Experience',
                text = {
                    {
                        'At end of round this joker',
                        'changes it\'s task, if you',
                        'don\'t complete that task',
                        'it {C:red}kills{} you',
                        'otherwise you cannot die to blinds',
                    },
                    {'possible abilities are:'},
                    {
                        'You must play {C:attention}1{} of {C:attention}2',
                        'randomly selected cards in your deck',
                        'this rounds cards are',
                        '{V:1}#1# of #2#{} and {V:2}#3# of #4#'
                    },
                    {
                        'You must trigger a minimum of {C:attention}#6#',
                        'cards this round'
                    },
                    {
                        'You have a total of {C:attention}#7#{}',
                        'seconds in this blind'
                    }
                }
            },
            j_blah_transness1 = {
                name = 'The Trans Experience',
                text = {
                    {
                        'At end of round this joker',
                        'changes it\'s task, if you',
                        'don\'t complete that task',
                        'it {C:red}kills{} you',
                        'otherwise you cannot die to blinds'
                    },
                    {
                        'Current ability:',
                        'You must play {C:attention}1{} of {C:attention}2',
                        'randomly selected cards in your deck',
                        'this rounds cards are',
                        '{V:1}#1# of #2#{} and {V:2}#3# of #4#'
                    }
                }
            },
            j_blah_transness2 = {
                name = 'The Trans Experience',
                text = {
                    {
                        'At end of round this joker',
                        'changes it\'s task, if you',
                        'don\'t complete that task',
                        'it {C:red}kills{} you',
                        'otherwise you cannot die to blinds'
                    },
                    {
                        'Current ability:',
                        'You must trigger a minimum of {C:attention}#2#',
                        'cards this round',
                        '{C:inactive}current amount is {C:attention}#1#'
                    }
                }
            },
            j_blah_transness3 = {
                name = 'The Trans Experience',
                text = {
                    {
                        'At end of round this joker',
                        'changes it\'s task, if you',
                        'don\'t complete that task',
                        'it {C:red}kills{} you',
                        'otherwise you cannot die to blinds'
                    },
                    {
                        'Current ability:',
                        'You have a total of {C:attention}#1#{}',
                        'seconds in this blind'
                    }
                }
            }
        },
        Back = {
            b_blah_chud = {
                name = 'Fuck My Stupid Chud Deck',
                text = {
                    'Start with {C:attention}#1#{} and {C:attention} #2#{}',
                    'blah additions appear {C:attention}5x{} as often'
                }
            }
        },
        Tarot = {
            c_blah_PoW = {
                name = 'Page of Wands',
                text ={
                    'Enhance {C:attention}#1#{} selected card',
                    'into a {C:attention}#2#{}',
                    'you lose {C:money}$#3#'
                }
            },
            c_blah_KoW = {
                name = 'Knight of Wands',
                text = {
                    'Enhance {C:attention}#1#{} selected card',
                    'into something {C:white,X:blah_transGrad}silly'
                }
            },
            c_blah_QoW = {
                name = 'Queen of Wands',
                text = {
                    'Enhance {C:attention}#1#{} selected card',
                    'into either a {C:attention}#2#{} card',
                    'or a {C:attention}#3#{} card'
                }
            }
        },
        blah_quest = {
            c_blah_yuri = {
                name = 'Yuri',
                text = {
                    {
                        'When this {C:blah_quest}Quest{} is obtained',
                        'enhances 1 card in deck to a',
                        '{C:attention}Gaia{} card, and 1 to an {C:attention}Ambray{} card',
                    },
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        '{C:attention}Gaia{} and {C:attention}Ambray{} trigger together'
                    }
                }
            },
            c_blah_yuri_alt = {
                name = 'Yuri',
                text = {
                    {
                        'When this {C:blah_quest}Quest{} is obtained',
                        'enhances 1 card in deck to a',
                        '{C:attention}Gaia{} card, and 1 to an {C:attention}Ambray{} card',
                    },
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        '{C:attention}Gaia{} and {C:attention}Ambray{} trigger together'
                    },
                    {
                        '{C:inactive,s:0.6}first there was nothing',
                        '{C:inactive,s:0.6}and then god created yuri'
                    }
                }
            },
            c_blah_ubi = {
                name = 'Universal Basic Income',
                text = {
                    {
                        'This {C:blah_quest}Quest{} is completed when',
                        'you have {C:money}$#1#{} or less'
                    },
                    {
                        'This {C:blah_quest}Quest{} gives an extra',
                        '{C:money}$#2#{} when it is complete'
                    }
                }
            },
            c_blah_minimal = {
                name = 'Minimalism',
                text = {
                    {
                        'When this {C:blah_quest}Quest{} is obtained',
                        'it creates {C:attention}#2#{}',
                    },
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        'you have less than {C:attention}#1#{} cards in deck'
                    }
                }
            },
            c_blah_minimal_alt = {
                name = 'Minimalism',
                text = {
                    {
                        'When this {C:blah_quest}Quest{} is obtained',
                        'it creates {C:attention}#2#{}',
                    },
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        'you have less than {C:attention}#1#{} cards in deck'
                    },
                    {
                        '{C:inactive,s:0.6}its kinda strange how romanticized minimalism is',
                        '{C:inactive,s:0.6}i wonder how related to classism that is'
                    }
                }
            },
            c_blah_study = {
                name = 'Study',
                text = {
                    {
                        'When this {C:blah_quest}Quest{} is obtained',
                        'it creates {C:attention}#1#{}',
                    },
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        'you play a {C:attention}Flush Five'
                    }
                }
            },
            c_blah_trans = {
                name = 'The Transgender Agenda',
                text = {
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        'A{C:attention} Jack{} or {C:attention}Queen{} increases its rank'
                    }
                }
            },
            c_blah_trans_alt = {
                name = 'The Transgender Agenda',
                text = {
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        'A{C:attention} Jack{} or {C:attention}Queen{} increases its rank'
                    },
                    {
                        '{C:inactive,s:0.6}like Prometheus, trans people stole gender from the cis'
                    }
                }
            },
            c_blah_gambling = {
                name = 'Lets Go Gambling!!!!',
                text = {
                    'This {C:blah_quest}Quest{} is complete when',
                    'A{C:attention} #1#{} hits'
                }
            }
        },
        blah_tooltips = {
            c_blah_quests = {
                name = 'Quest',
                text = {
                    'When a {C:blah_quest}Quest{} is complete',
                    'it is {C:red}destroyed{} and you get {C:money}$15'
                }
            },
            c_blah_gaiaTip = {
                name = 'Gaia',
                text = {
                    'If played with an {C:attention}Ambray{}',
                    'card, some {C:white,X:blah_waowgradient}gay stuff{} happens'
                }
            },
            c_blah_ambrayTip = {
                name = 'Ambray',
                text = {
                    'If played with a {C:attention}Gaia{}',
                    'card, some {C:white,X:blah_waowgradient}gay stuff{} happens'
                }
            },
            c_blah_whiteSealTip = {
                name = 'holy shit',
                text = {
                    'i did it chat it took so long but i did it'
                }
            },
            c_blah_ubiTip = {
                name = 'kinda messy sorry',
                text = {
                    'you might have to wait a bit longer',
                    'than expected for this to complete'
                }
            },
            c_blah_lostTip = {
                name = 'Lost Card',
                text = {
                    'When you try to {C:attention}copy',
                    'or {C:attention}destroy{} this card',
                    'that action fails and this card',
                    'gains an additional {C:attention}+1{} retrigger'
                }

            },
            c_blah_lostTip2 = {
                name = 'might be messed up srory',
                text = {
                    'the way balatro destroys',
                    'cards is really convoluted',
                    'so this might not work',
                    'as eexpected'
                }
            },
            c_blah_uniqueTip = {
                name = 'bwoken :(',
                text = {
                    'only works with vanilla and a',
                    'couple other consumable types'
                }
            },
            c_blah_whateverTip = {
                name = 'almost killed me irl !!',
                text = {
                    'nah not really',
                    'but it did mess up my save file',
                    'and didnt even do the thing',
                    'another instance of me being lazy :('
                }
            },
            c_blah_spectrallibTip = {
                name = 'better with spectrallib',
                text = {
                    'recommend turning on spectrallib',
                    'it lets you actually select the things',
                    'instead of just looking at them'
                }
            }
        },
        Enhanced = {
            m_blah_gaia = {
                name = 'Gaia <3',
                text = {
                    {
                        'If played with an {C:attention}Ambray{}',
                        'card, some {C:white,X:blah_waowgradient}gay stuff{} happens'
                    }
                }
            },
            m_blah_gaia_alt = {
                name = 'Gaia <3',
                text = {
                    {
                        'If played with an {C:attention}Ambray{}',
                        'card, some {C:white,X:blah_waowgradient}gay stuff{} happens'
                    },
                    {
                        '{C:inactive,s:0.8}what a beautiful creature'
                    }
                }
            },
            m_blah_ambray = {
                name = 'Ambray',
                text = {
                    {
                        'If played with a {C:attention}Gaia{}',
                        'card, some {C:white,X:blah_waowgradient}gay stuff{} happens'
                    }
                }
            },
            m_blah_ambray_alt = {
                name = 'Ambray',
                text = {
                    {
                        'If played with a {C:attention}Gaia{}',
                        'card, some {C:white,X:blah_waowgradient}gay stuff{} happens'
                    },
                    {
                        '{C:inactive,s:0.8}oh how infatuated she is'
                    }
                }
            },
            m_blah_tree = {
                name = '',
                text = {
                    'there is a tree here'
                }
            },
            m_blah_tree_alt = {
                name = '',
                text = {
                    'there is a tree here',
                    'wont work as expected due',
                    'to multiplayer being active'
                }
            },
            m_blah_lost={
                name = 'Lost Card',
                text = {
                    'When you try to {C:attention}copy',
                    'or {C:attention}destroy{} this card',
                    'that action fails and this card',
                    'gains an additional {C:attention}+#2#{} retrigger',
                    '{C:inactive}currently {C:attention}+#1#{C:inactive} retriggers'
                }
            }
        },
        Other = {
            blah_white_seal = {
                name = 'White Seal',
                text = {
                    'Gives {C:white,X:mult}X#1#{} on score',
                    'gets {C:attention}removed{} on play or discard',
                    '{C:red}destroys{} itself at end of round'
                }
            },
            p_blah_smallQuestPack = {
                name = 'Baby Quest pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:blah_quest} Quest{} cards"
                }
            },
            p_blah_mediumQuestPack = {
                name = 'Medium Quest pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:blah_quest} Quest{} cards"
                }
            },
            p_blah_bigQuestPack = {
                name = 'Gigantic Quest pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:blah_quest} Quest{} cards"
                }
            },
            blah_transTip = {
                name = 'formula for the retrigger count',
                text = {
                    'the way its calculated is a constant (3)',
                    'multiplied by the current ante (#1#)',
                    'with a minimum added (8)',
                    'so 3x#1#+8=#2#'
                }
            },
            blah_transTip2 = {
                name = 'too lazy to fix rn',
                text = {
                    'this was really really hard to make',
                    'and im lazy so i gave up',
                    'if you want you can uncomment',
                    'the in_pool thing and see'
                }
            }
        }
    },
    misc = {
        dictionary = {
            b_blah_quest_cards = 'Quest Cards',
            b_blah_tooltips_cards = 'tooltips cards',
            k_blah_quest = 'Quest',
            k_blah_tooltips = 'tooltips',
            k_blah_questPack = '{C:blah_quest}Quest{} Pack',
            k_blah_waow = ':waow:'
        },
        labels = {
            blah_white_seal = 'White Seal',
            blah_quest = 'Quest',
            blah_tooltips = 'Tooltips',
            k_blah_waow = ':waow:'
        }
    }
}