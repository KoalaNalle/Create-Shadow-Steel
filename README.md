# Create: Shadow Steel

A small NeoForge 1.21.1 addon that makes Create's existing Shadow Steel, Refined Radiance, and their casings obtainable again.

The addon does not copy or replace Create's item or block registrations. Create already registers:

- `create:shadow_steel`
- `create:shadow_steel_casing`
- `create:refined_radiance`
- `create:refined_radiance_casing`

This project adds recipes for the legacy materials and exposes all four entries in Create's main creative tab.

## Recipes

### Shadow Steel — Heated Compacting

Place the following in a Basin and process it with a Mechanical Press while the Basin is heated by a Blaze Burner:

- 2 Blackstone
- 2 Iron Ingots
- 4 Coal Pieces from Create: Dreams n' Desires

Output: 1 Shadow Steel.

### Refined Radiance — Heated Compacting

Place the following in a Basin and process it with a Mechanical Press while the Basin is heated by a Blaze Burner:

- 2 Glowstone blocks
- 2 Electrum Ingots from Create Crafts & Additions
- 3 Iron Nuggets

Output: 1 Refined Radiance.

### Shadow Casing — Item Application

Use Shadow Steel on any block in the `c:stripped_logs` tag. This uses Create's `create:item_application` recipe type, the same system used by Andesite Casing.

### Refined Radiance Casing — Item Application

Use Refined Radiance on any block in the `c:stripped_logs` tag.

Both casing recipes also work with a Deployer.

## Mod icon

The source resource is `src/main/resources/icon.png`. Gradle copies it to `build/resources/main/icon.png` during resource processing. The icon is declared with `logoFile="icon.png"` in `neoforge.mods.toml`.

## Requirements

- Minecraft 1.21.1
- NeoForge 21.1.200 or newer
- Create 6.0.9–6.0.x
- Create: Dreams n' Desires 2.0+
- Create Crafts & Additions 1.6.0+
- Java 21 for development

## Set up on Windows

```powershell
git clone https://github.com/KoalaNalle/Create-Shadow-Steel.git
cd Create-Shadow-Steel
powershell -ExecutionPolicy Bypass -File .\bootstrap-wrapper.ps1
.\gradlew.bat build
```

The built mod is written to `build/libs/`.

After the wrapper has been downloaded, commit `gradle/wrapper/gradle-wrapper.jar` so future clones can use `gradlew.bat` immediately.

## Development client

Put compatible Create: Dreams n' Desires and Create Crafts & Additions JARs in `run/mods/`, then run:

```powershell
.\gradlew.bat runClient
```

Create and its required development dependencies are supplied through Gradle. The two compatibility mods are runtime dependencies declared in `neoforge.mods.toml`; the recipes reference their stable item IDs:

- `dndesires:coal_piece`
- `createaddition:electrum_ingot`

## Project structure

```text
src/main/java/
  io/github/koalanalle/createshadowsteel/CreateShadowSteel.java
src/main/resources/icon.png
src/main/resources/data/create_shadow_steel/recipe/
  compacting/
    shadow_steel.json
    refined_radiance.json
  item_application/
    shadow_steel_casing_from_log.json
    refined_radiance_casing_from_log.json
src/main/templates/META-INF/neoforge.mods.toml
```

## Creative inventory and recipe viewers

The addon adds Shadow Steel, Shadow Casing, Refined Radiance, and Refined Radiance Casing back to Create's main creative tab. Create registers these objects but deliberately excludes them from its own tab generator; the addon appends them with NeoForge's `BuildCreativeModeTabContentsEvent`.

Shadow Steel and Refined Radiance keep Create's original uncommon rarity, so their item names remain yellow. This is normal rarity formatting, not a legacy or command-only warning.

## License

MIT
