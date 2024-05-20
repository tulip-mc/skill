# show player's level
## depending on tool


# calculate level goals
function tulip_skill:system/level/calc/mine
function tulip_skill:system/level/calc/fish
function tulip_skill:system/level/calc/farm
function tulip_skill:system/level/calc/wood
function tulip_skill:system/level/calc/combat


# calculate booster time left
execute if score @s tulip_skill.mine.booster matches 2.. run function tulip_skill:system/level/booster/mine/time
execute if score @s tulip_skill.fish.booster matches 2.. run function tulip_skill:system/level/booster/fish/time
execute if score @s tulip_skill.farm.booster matches 2.. run function tulip_skill:system/level/booster/farm/time
execute if score @s tulip_skill.wood.booster matches 2.. run function tulip_skill:system/level/booster/wood/time
execute if score @s tulip_skill.combat.booster matches 2.. run function tulip_skill:system/level/booster/combat/time


# none
## (hides actionbar)
execute unless data entity @s SelectedItem run title @s actionbar ""

# display current level
## mining
execute unless score @s tulip_skill.mine.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run title @s actionbar ["",{"text":"Mining ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.mine"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.mine.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:iron_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_pickaxe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run title @s actionbar ["",{"text":"Mining ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.mine"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.goal"}},{"text":"] \u0020 \u0020","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.mine.booster"},"color":"#B8E45A"},{"text":" for ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.mine.booster_time_s"},"color":"#B8E45A"},{"text":"s","color":"#B8E45A"}]
## fishing
execute unless score @s tulip_skill.fish.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:fishing_rod"}}] run title @s actionbar ["",{"text":"Fishing ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.fish"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.fish.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:fishing_rod"}}] run title @s actionbar ["",{"text":"Fishing ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.fish"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.goal"}},{"text":"] \u0020 \u0020","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.fish.booster"},"color":"#B8E45A"},{"text":" for ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.fish.booster_time_s"},"color":"#B8E45A"},{"text":"s","color":"#B8E45A"}]
## farming
execute unless score @s tulip_skill.farm.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:stone_hoe"}},nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:iron_hoe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_hoe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_hoe"}}] run title @s actionbar ["",{"text":"Farming ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.farm"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.farm.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:stone_hoe"}},nbt=!{SelectedItem:{id:"minecraft:golden_hoe"}},nbt=!{SelectedItem:{id:"minecraft:iron_hoe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_hoe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_hoe"}}] run title @s actionbar ["",{"text":"Farming ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.farm"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.goal"}},{"text":"] \u0020 \u0020","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.farm.booster"},"color":"#B8E45A"},{"text":" for ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.farm.booster_time_s"},"color":"#B8E45A"},{"text":"s","color":"#B8E45A"}]
## foraging
execute unless score @s tulip_skill.wood.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}},nbt=!{SelectedItem:{id:"minecraft:stone_axe"}},nbt=!{SelectedItem:{id:"minecraft:golden_axe"}},nbt=!{SelectedItem:{id:"minecraft:iron_axe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_axe"}}] run title @s actionbar ["",{"text":"Foraging ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.wood"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.wood.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}},nbt=!{SelectedItem:{id:"minecraft:stone_axe"}},nbt=!{SelectedItem:{id:"minecraft:golden_axe"}},nbt=!{SelectedItem:{id:"minecraft:iron_axe"}},nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}},nbt=!{SelectedItem:{id:"minecraft:netherite_axe"}}] run title @s actionbar ["",{"text":"Foraging ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.wood"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.goal"}},{"text":"] \u0020 \u0020","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.wood.booster"},"color":"#B8E45A"},{"text":" for ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.wood.booster_time_s"},"color":"#B8E45A"},{"text":"s","color":"#B8E45A"}]
## combat
execute unless score @s tulip_skill.combat.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}},nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}}] run title @s actionbar ["",{"text":"Combat ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.combat"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.combat.booster matches 2.. if score @s temp_store.player_tool_eligible matches 1..2 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}},nbt=!{SelectedItem:{id:"minecraft:netherite_sword"}}] run title @s actionbar ["",{"text":"Combat ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.combat"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.goal"}},{"text":"] \u0020 \u0020","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.combat.booster"},"color":"#B8E45A"},{"text":" for ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.combat.booster_time_s"},"color":"#B8E45A"},{"text":"s","color":"#B8E45A"}]