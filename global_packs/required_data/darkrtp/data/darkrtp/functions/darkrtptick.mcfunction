scoreboard players enable @a darkrtp
execute as @a[scores={darkrtp=1..}] at @s if entity @s[nbt={ActiveEffects:[{Id:28}]}] run tellraw @s {"text": "随机传送无法在缓降效果存在时激活……", "color": "red", "bold":"false"}
execute as @a[scores={darkrtp=1..}] at @s if entity @s[nbt={Dimension:"spellbladenext:glassocean"}] run tellraw @s {"text": "此维度中不允许随机传送……", "color": "red", "bold":"false"}

execute as @a[scores={darkrtp=1..}] at @s unless entity @s[nbt={ActiveEffects:[{Id:28}]}] at @s unless entity @s[nbt={Dimension:"spellbladenext:glassocean"}] run spreadplayers 0 0 0 9000 under 127 false @s
execute as @a[scores={darkrtp=1..}] at @s unless entity @s[nbt={ActiveEffects:[{Id:28}]}] at @s unless entity @s[nbt={Dimension:"spellbladenext:glassocean"}] run tellraw @s {"text": "暗黑法师将你传送到了一个随机的地方……", "color": "light_purple", "bold":"true"}
execute as @a[scores={darkrtp=1..}] at @s unless entity @s[nbt={ActiveEffects:[{Id:28}]}] at @s unless entity @s[nbt={Dimension:"spellbladenext:glassocean"}] run effect give @s minecraft:resistance
execute as @a[scores={darkrtp=1..}] at @s unless entity @s[nbt={ActiveEffects:[{Id:28}]}] at @s unless entity @s[nbt={Dimension:"spellbladenext:glassocean"}] run effect give @s minecraft:slow_falling
execute as @a[scores={darkrtp=1..}] run scoreboard players set @s darkrtp 0