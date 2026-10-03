
execute anchored eyes positioned ^ ^ ^1 as @e[type=item_frame,distance=..1,sort=nearest,limit=1] run tag @s add selected_itemframe

# Reset
execute if score @s itemframeinator_reset matches 1 as @e[type=item_frame,tag=selected_itemframe] run data merge entity @s {Fixed:0b,Invisible:0b}

# Invisible Toggle
execute if score @s itemframeinator_invisible matches 1 as @e[type=item_frame,tag=selected_itemframe] run function itemframeinator:toggle {property:Invisible}

# Fixed Toggle
execute if score @s itemframeinator_fixed matches 1 as @e[type=item_frame,tag=selected_itemframe] run function itemframeinator:toggle {property:Fixed}

# Set Rotation
execute store result storage itemframeinator:rotation value int 1 run scoreboard players get @s itemframeinator_rotation
data modify storage itemframeinator:rotation property set value ItemRotation
execute if score @s itemframeinator_rotation >= @s itemframeinator_reset_rotation as @e[type=item_frame,tag=selected_itemframe] run function itemframeinator:set with storage itemframeinator:rotation

# Reset Rotation
execute if score @s itemframeinator_reset_rotation matches 1 as @e[type=item_frame,tag=selected_itemframe] run function itemframeinator:set {property:ItemRotation,value:0}

tag @e[type=item_frame,tag=selected_itemframe] remove selected_itemframe
