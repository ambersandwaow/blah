local config = SMODS.current_mod.config

SMODS.current_mod.config_tab = function()
    return {
        n = G.UIT.ROOT,
        config = { r = 0.1, minw = 8, minh = 6, align = "tm", padding = 0.2, colour = G.C.BLACK },
        nodes = {
            {
                n = G.UIT.R,
                config = { padding = 0 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "cm" },
                        nodes = {
                            {n=G.UIT.R, config={align = 'tm', padding = 0.2},nodes = {
                                {n=G.UIT.T, config={
                                    text = 'requires restart', scale = 0.43, colour = G.C.UI.TEXT_LIGHT, shadow = true
                                }}
                            }},
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = "extra gay (adds a few more text boxes)",
                                        ref_table = config,
                                        ref_value = 'extraGay'
                                    }),
                                    create_toggle({
                                        label = "a little more balanced",
                                        ref_table = config,
                                        ref_value = 'balanced'
                                    }),
                                    create_toggle({
                                        label = "remove custom music",
                                        ref_table = config,
                                        ref_value = 'musicR'
                                    }),
                                    create_toggle({
                                        label = "remove everything except music",
                                        ref_table = config,
                                        ref_value = 'musicK'
                                    }),
                                }
                            }
                        }
                    }
                }
            }
        }
    }
end