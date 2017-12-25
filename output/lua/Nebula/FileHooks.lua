
ModLoader.SetupFileHook( "lua/Globals.lua", "lua/Nebula/Globals.lua", "post" )
ModLoader.SetupFileHook( "lua/ExoVariantMixin.lua", "lua/Nebula/ExoVariantMixin.lua", "post" )
ModLoader.SetupFileHook( "lua/MarineVariantMixin.lua", "lua/Nebula/MarineVariantMixin.lua", "post" )
ModLoader.SetupFileHook( "lua/AxeVariantMixin.lua", "lua/Nebula/AxeVariantMixin.lua", "post" )
ModLoader.SetupFileHook( "lua/PistolVariantMixin.lua", "lua/Nebula/PistolVariantMixin.lua", "post" )
ModLoader.SetupFileHook( "lua/RifleVariantMixin.lua", "lua/Nebula/RifleVariantMixin.lua", "post" )
--ModLoader.SetupFileHook( "lua/Exo.lua", "lua/Nebula/Exo.lua", "post" )

ModLoader.SetupFileHook( "lua/menu/MenuPoses.lua", "lua/Nebula/MenuPoses.lua", "replace" )