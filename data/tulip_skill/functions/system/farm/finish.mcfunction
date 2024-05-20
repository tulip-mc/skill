# tulip generic farm finish


# reset blocks
execute if entity @s[tag=farm.wheat] run setblock ~ ~ ~ wheat[age=7]

# create particle & sfx
particle minecraft:falling_spore_blossom ~ ~ ~ 0 0 0 0.12 2
playsound block.grass.fall block @a

# reset scores
scoreboard players set @s farm.state 1
scoreboard players reset @s farm.timer
tag @s remove farm.timer