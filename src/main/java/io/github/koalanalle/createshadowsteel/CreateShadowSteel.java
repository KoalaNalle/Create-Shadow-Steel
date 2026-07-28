package io.github.koalanalle.createshadowsteel;

import com.simibubi.create.AllBlocks;
import com.simibubi.create.AllCreativeModeTabs;
import com.simibubi.create.AllItems;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.fml.ModContainer;
import net.neoforged.fml.common.Mod;
import net.neoforged.neoforge.event.BuildCreativeModeTabContentsEvent;

@Mod(CreateShadowSteel.MOD_ID)
public final class CreateShadowSteel {
    public static final String MOD_ID = "create_shadow_steel";

    public CreateShadowSteel(IEventBus modEventBus, ModContainer modContainer) {
        modEventBus.addListener(CreateShadowSteel::addCreativeTabItems);
    }

    private static void addCreativeTabItems(BuildCreativeModeTabContentsEvent event) {
        if (!event.getTabKey().equals(AllCreativeModeTabs.BASE_CREATIVE_TAB.getKey())) {
            return;
        }

        event.accept(AllItems.SHADOW_STEEL.get());
        event.accept(AllBlocks.SHADOW_STEEL_CASING.get());
    }
}
