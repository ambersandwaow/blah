--[[yeah this was gonna be interesting but it was too much work

function BLAH.makeQuip(key,num,center,sound,delay,juice)
    if key == 0 then key ='gaia' elseif key == 1 then key = 'ambray' end
    if center == nil then center = 'gaia' end
    return{
        SMODS.JimboQuip{
            key = key..num,
            type = 'gay',
            extra = {
                center = 'm_blah_'..center,
                sound = 'tenna'..sound,
                delay = (delay or 0.13),
                juice = {juice}
            }
        }
    }
end
BLAH.makeQuip(0,1,nil,nil,nil,'0.2,0.4')
BLAH.makeQuip(1,1,'ambray',1,'0.2,0.4')
BLAH.makeQuip(0,2,nil,nil,nil,'0.2,0.4')
--]]