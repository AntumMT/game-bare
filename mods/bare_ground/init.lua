
if not core.settings:get_bool("bare_game_enable_ground", false) then
  do return end
end


core.register_node("bare_ground:dirt", {
  description = "Dirt",
  tiles = {"bare_ground_dirt.png"},
  groups = {crumbly=3},
})

core.register_node("bare_ground:stone", {
  description = "Stone",
  tiles = {"bare_ground_stone.png"},
  groups = {cracky=3},
})

core.register_node("bare_ground:water", {
  description = "Water",
  tiles = {"bare_ground_water.png"},
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
  liquid_alternative_flowing = "bare_ground:water_flow",
  liquid_alternative_source = "bare_ground:water",
})

core.register_node("bare_ground:water_flow", {
  description = "Flowing Water",
  tiles = {"bare_ground_water.png"},
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
  liquid_alternative_flowing = "bare_ground:water_flow",
  liquid_alternative_source = "bare_ground:water",
})


core.register_alias("mapgen_dirt", "bare_ground:dirt")
core.register_alias("mapgen_stone", "bare_ground:stone")
core.register_alias("mapgen_water_source", "bare_ground:water")
