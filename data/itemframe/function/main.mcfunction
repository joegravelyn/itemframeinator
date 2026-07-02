
execute anchored eyes positioned ^ ^ ^1 as @e[type=item_frame,distance=..1,sort=nearest,limit=1] run tag @s add selected_itemframe

# Reset
execute if score @s itemframe_reset matches 1 as @e[type=item_frame,tag=selected_itemframe] run data merge entity @s {Fixed:0b,Invisible:0b}

# Invisible Toggle
execute if score @s itemframe_invisible matches 1 as @e[type=item_frame,tag=selected_itemframe] run function itemframe:toggle {property:Invisible}

# Fixed Toggle
execute if score @s itemframe_fixed matches 1 as @e[type=item_frame,tag=selected_itemframe] run function itemframe:toggle {property:Fixed}

tag @e[type=item_frame,tag=selected_itemframe] remove selected_itemframe
