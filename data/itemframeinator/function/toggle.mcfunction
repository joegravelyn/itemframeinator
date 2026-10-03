
# @s = item frame

$execute if items entity @s contents * store success entity @s $(property) byte 1 if entity @s[nbt={$(property):0b}]