# Item Frame-Inator

Minecraft data pack to give control over item frame properties: Fixed, Invisibile, and ItemRotation.

From https://minecraft.wiki:
- <img height="16" src="https://minecraft.wiki/images/NbtSprite_boolean.png"> **Fixed**: `1`, or `0` (`true`/`false`) - If `true`: the item frame does not drop when it has no support block, it can not be moved by pistons, and it won't take damage (except from creative players). An item cannot be placed in or removed from a fixed item frame. The item in a fixed item frame (if any) can not be rotated.
- <img height="16" src="https://minecraft.wiki/images/NbtSprite_boolean.png"> **Invisible**: `1`, or `0` (`true`/`false`) - Whether the item frame (background) is invisible. An item or map inside an invisible item frame is still visible.
- <img height="16" src="https://minecraft.wiki/images/NbtSprite_byte.png"> **ItemRotation**: The current angle or rotation of the item, as a multiple of 45 degrees, going clockwise. `0` means the item is upright, `1` means the item is turned 45 degrees clockwise from the upright orientation.​[more information needed] This value can only ever be between `0` and `7`, just like its redstone output when measured with a comparator.

### Commands
- `/trigger itemframeinator_reset` - Resets `Invisible` and `Fixed` properties (i.e. makes the item frame visibile and unlocked)
- `/trigger itemframeinator_invisible` - Toggles `Invisible` property
- `/trigger itemframeinator_fixed` - Toggles `Fixed` property
- `/trigger itemframeinator_rotation set #` - Sets `ItemRotation` to a number between 0 and 7
- `/trigger itemframeinator_reset_rotation` - Resets `ItemRotation` to 0 (default orientation)

---
### Gallery
Invisible Item Frames

<img width="551" src="https://raw.githubusercontent.com/joegravelyn/itemframeinator/refs/heads/main/_assets/apple.png" />

<img width="551" src="https://raw.githubusercontent.com/joegravelyn/itemframeinator/refs/heads/main/_assets/chest.png" /><br>

Fixed Item Frames

<img width="551" src="https://raw.githubusercontent.com/joegravelyn/itemframeinator/refs/heads/main/_assets/floating.png" />

In Game Menu

<img width="551" alt="menu" src="https://raw.githubusercontent.com/joegravelyn/itemframeinator/refs/heads/main/_assets/menu.png" />