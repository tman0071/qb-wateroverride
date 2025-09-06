# qb_wateroverride (Template)

This companion resource helps apply water level overrides for tsunami flooding by restarting itself with a phase:
- `normal` – default water
- `flood`  – mid-level flood
- `max`    – maximum flood

## IMPORTANT
FiveM water override support depends on your game build and artifacts. To enable water overrides:
1) Replace the `data_file` line(s) in `fxmanifest.lua` with the correct type for your build.
   Common values are `WATER_FILE` or `WATER_XML_FILE`. Only ONE should be active.
2) Point the active `data_file` to the XML matching your chosen phase. You may need to maintain three manifests or swap lines on restart.
3) Provide valid XML files (`water_normal.xml`, `water_flood.xml`, `water_max.xml`) generated for your map/artifact.
   The included files are placeholders for structure only.

## Usage
- In `server.cfg` set a default phase:
  ```
  setr qbwater:phase normal
  ensure qb_wateroverride
  ```
- When tsunami approaches, the weather script can request a phase change:
  ```lua
  TriggerEvent('qb_wateroverride:server:setPhase', 'flood') -- or 'max', 'normal'
  ```
- The resource restarts itself to apply the new water XML.

## Note
Runtime swapping without restart is not guaranteed across builds. This approach is widely compatible.
