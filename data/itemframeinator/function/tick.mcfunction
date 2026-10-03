# Controls everything to do with datapack_name

scoreboard players enable @a itemframeinator_reset
scoreboard players enable @a itemframeinator_invisible
scoreboard players enable @a itemframeinator_fixed
scoreboard players enable @a itemframeinator_rotation
scoreboard players enable @a itemframeinator_reset_rotation

execute as @a[scores={itemframeinator_reset=1..}] at @a[scores={itemframeinator_reset=1..}] run function itemframeinator:main
execute as @a[scores={itemframeinator_invisible=1..}] at @a[scores={itemframeinator_invisible=1..}] run function itemframeinator:main
execute as @a[scores={itemframeinator_fixed=1..}] at @a[scores={itemframeinator_fixed=1..}] run function itemframeinator:main
execute as @a[scores={itemframeinator_rotation=0..7}] at @a[scores={itemframeinator_rotation=0..7}] run function itemframeinator:main
execute as @a[scores={itemframeinator_reset_rotation=1..}] at @a[scores={itemframeinator_reset_rotation=1..}] run function itemframeinator:main

# Makes empty item frames visible
execute as @e[type=item_frame,nbt={Invisible:1b}] unless items entity @s contents * run function itemframeinator:visible

# Reset trigger
scoreboard players set @a itemframeinator_reset 0
scoreboard players set @a itemframeinator_invisible 0
scoreboard players set @a itemframeinator_fixed 0
scoreboard players set @a itemframeinator_rotation -1
scoreboard players set @a itemframeinator_reset_rotation 0