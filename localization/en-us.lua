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
            }
        },
        Back = {
            b_blah_chud = {
                name = 'Fuck My Stupid Chud Deck',
                text = {
                    'Start with {C:attention}#1#{} and {C:attention} #2#{}',
                    '{C:blue}blah Jokers{} appear {C:attention}5x{} as often'
                }
            }
        },
        blah_quest = {
            c_blah_yuri = {
                label = 'im fawling',
                name = 'Yuri',
                text = {
                    {
                        'When this {C:blah_quest}Quest{} is obtained',
                        'enhances 1 card in deck to a',
                        '{C:attention}#1#{} card, and 1 to an {C:attention}#2#{} card',
                    },
                    {
                        'This {C:blah_quest}Quest{} is complete when',
                        'you have a {C:attention}Blueprint{} or {C:attention}Brainstorm'
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
                name = 'Transgenderrr',
                text = {
                    'This {C:blah_quest}Quest{} is complete when',
                    'A{C:attention} Jack{} or {C:attention}Queen{} increases its rank'
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
                    'card, creates a {C:dark_edition}negative{C:attention} Brainstorm{}'
                }
            },
            c_blah_ambrayTip = {
                name = 'Ambray',
                text = {
                    'If played with a {C:attention}Gaia{}',
                    'card, creates a {C:dark_edition}negative{C:attention} Blueprint{}'
                }
            },
            c_blah_whiteSealTip = {
                name = 'broken rn sorry',
                text = {
                    'the destroy the card at the',
                    'end of the round is really hard',
                    'to make (requires multiple patches)',
                    'so its not done rn sawry :('
                }
            }
        },
        Enhanced = {
            m_blah_gaia = {
                name = 'Gaia <3',
                text = {
                    'If played with an {C:attention}Ambray{}',
                    'card, creates a {C:dark_edition}negative{C:red} Brainstorm{}'
                }
            },
            m_blah_ambray = {
                name = 'Ambray',
                text = {
                    'If played with a {C:attention}Gaia{}',
                    'card, creates a {C:dark_edition}negative{C:red} Blueprint{}'
                }
            }
        },
        Other = {
            blah_white_seal = {
                name = 'White Seal',
                text = {
                    'Gives {C:white,X:mult}X#1#{} mult on score',
                    'Remove seal if played',
                    '{C:red}Destroys{} card at end of round'
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
            }
        }
    },
    misc = {
        dictionary = {
            b_blah_quest_cards = 'Quest Cards',
            k_blah_quest = 'Quest',
            b_blah_tooltips_cards = 'tooltips cards',
            k_blah_tooltips = 'tooltips',
            k_blah_questPack = '{C:blah_quest}Quest{} Pack'
        },
        labels = {
            blah_white_seal = 'White Seal',
            blah_quest = 'Quest',
            blah_tooltips = 'Tooltips',
            gaiaBadge = 'it/its',
            ambrayBadge = 'she/her',
            modBadge = 'blah'
        }
    }
}