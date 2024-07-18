# show player's level
## depending on tool


# none
## (hides actionbar)
execute unless entity @s[tag=gateway.player_in_crouch_range] unless score @s temp_store.player_tool_bool matches 1.. run title @s actionbar ["",{"selector":"@e[type=minecraft:area_effect_cloud,tag=tulip.heart,limit=1]"},{"score":{"name":"@s","objective":"player.health"},"color":"#EA6060"},{"text":" \u0020 ⑨ ","color":"#EEDA7A"},{"score":{"name":"@s","objective":"temp_store.coins.display"},"color":"#EEDA7A"},{"text":" \u0020 ⑱ ","color":"#C4917D"},{"score":{"name":"@s","objective":"player.food"},"color":"#C4917D"},{"text":" \u0020 ⑤ ","color":"#bac2de"},{"score":{"name":"@s","objective":"player.defense"},"color":"#bac2de"}]
execute if entity @s[tag=gateway.player_in_crouch_range] if score heart temp_store.heart_beat matches 1..10 run title @s actionbar ["",{"text":"Ⓖ "},{"text":"crouch to transport"}]
execute if entity @s[tag=gateway.player_in_crouch_range] unless score heart temp_store.heart_beat matches 1..10 run title @s actionbar ["",{"text":"Ⓗ "},{"text":"crouch to transport"}]

# display current level
execute unless entity @s[tag=gateway.player_in_crouch_range] if score @s temp_store.player_tool_eligible matches 1..2 run function tulip_skill:system/level/show_tool