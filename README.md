# AxionFx Prebuilt for VoltageOS / AOSP

Prebuilt standalone package of AxionFx audio processor and effects engine.

## Contents
- **AxionFx.apk**: System privileged app (Audio FX Control Panel)
- **privapp-permissions-axionfx.xml**: System privileged permissions
- **lib64/soundfx/libaxionfxaidl.so**: AIDL Audio Effect library (statically linked with Steam Audio DSP & PFFFT)
- **lib64/soundfx/libaxionfx_legacy.so**: Legacy Audio Effect fallback

## Branches
- `lineage-23.2` (Default): Prebuilt binaries ready for instant compilation with zero dependencies.
- `source`: Upstream source code synced automatically daily from `AxionAOSP/android_packages_apps_AxionFx`.

## Usage in Device Tree

1. Clone to your ROM tree:
```bash
git clone https://github.com/Nighty-X-Rodin/packages_apps_AxionFx.git packages/apps/AxionFx
```

2. Add to your device makefile (`device.mk`):
```makefile
$(call inherit-product-if-exists, packages/apps/AxionFx/config.mk)
```

3. Ensure `audio_effects_config.xml` includes AxionFX:
```xml
    <libraries>
        ...
        <library name="axionfx" path="libaxionfxaidl.so"/>
    </libraries>

    <effects>
        ...
        <effect name="axionfx" library="axionfx" uuid="f35cb927-a887-4f3d-847f-770634486d53" type="5867be72-4060-4c55-a378-c1cdef3e1353"/>
    </effects>
```
