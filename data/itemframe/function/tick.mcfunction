# Controls everything to do with datapack_name

scoreboard players enable @a itemframe_reset
scoreboard players enable @a itemframe_invisible
scoreboard players enable @a itemframe_fixed

execute as @a[scores={itemframe_reset=1..}] at @a[scores={itemframe_reset=1..}] run function itemframe:main
execute as @a[scores={itemframe_invisible=1..}] at @a[scores={itemframe_invisible=1..}] run function itemframe:main
execute as @a[scores={itemframe_fixed=1..}] at @a[scores={itemframe_fixed=1..}] run function itemframe:main

# Makes empty item frames visible
execute as @e[type=item_frame,nbt={Invisible:1b}] unless items entity @s contents * run function itemframe:visible

# Reset trigger
scoreboard players set @a itemframe_reset 0
scoreboard players set @a itemframe_invisible 0
scoreboard players set @a itemframe_fixed 0