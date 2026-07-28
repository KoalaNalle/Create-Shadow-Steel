# Applying the 1.1.0 update

This overlay was generated against the public `main` branch at mod version `1.0.4`.

Copy the contents of this directory into the root of your local `Create-Shadow-Steel` repository and allow the existing files to be replaced.

Then build:

```powershell
.\gradlew.bat build
```

The overlay changes only:

- `README.md`
- `gradle.properties`
- `CreateShadowSteel.java`
- `src/main/templates/META-INF/neoforge.mods.toml`
- the two new Refined Radiance recipe JSON files
