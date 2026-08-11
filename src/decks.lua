SMODS.Back{
    key = 'chud',
    atlas = 'blahDecks',
    name = 'Fuck My Stupid Chud Life',
    pos = {x=0,y=0},
    discovered = true,
    order = 99,
    config={
        consumables = {'c_blah_yuri'},
        jokers = {'j_blah_poi','j_blah_larva'}
    },
    loc_vars = function(self,info_queue,card)
        return{vars = {
            localize {type='name_text',key='j_blah_larva',set='Joker'},
            localize {type='name_text',key='c_blah_yuri',set='blah_quest'},
            localize {type='name_text',key='j_blah_poi',set='Joker'}

        }}
    end
}