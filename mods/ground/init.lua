
if not core.settings:get_bool("bare_game_enable_ground", false) then
  do return end
end


core.register_node("ground:dirt", {
  description = "Dirt",
  tiles = {"ground_dirt.png"},
  groups = {crumbly=3},
})

core.register_node("ground:stone", {
  description = "Stone",
  tiles = {"ground_stone.png"},
  groups = {cracky=3},
})

core.register_node("ground:water", {
  description = "Water",
  tiles = {"ground_water.png"},
  groups = {water=3, liquid=3},
  paramtype = "light",
  drawtype = "liquid",
  use_texture_alpha = "blend",
  walkable = false,
  pointable = false,
  diggable = false,
  buildable_to = true,
  is_ground_content = false,
  drop = "",
  liquidtype = "source",
  liquid_viscosity = 1,
  liquid_alternative_flowing = "ground:water_flow",
  liquid_alternative_source = "ground:water",
})

core.register_node("ground:water_flow", {
  description = "Flowing Water",
  tiles = {"ground_water.png"},
  groups = {water=3, liquid=3, not_in_creative_inventory=1},
  paramtype = "light",
  drawtype = "flowingliquid",
  use_texture_alpha = "blend",
  walkable = false,
  pointable = false,
  diggable = false,
  buildable_to = true,
  is_ground_content = false,
  drop = "",
  liquidtype = "flowing",
  liquid_viscosity = 1,
  liquid_alternative_flowing = "ground:water_flow",
  liquid_alternative_source = "ground:water",
})


core.register_alias("mapgen_dirt", "ground:dirt")
core.register_alias("mapgen_stone", "ground:stone")
core.register_alias("mapgen_water_source", "ground:water")
