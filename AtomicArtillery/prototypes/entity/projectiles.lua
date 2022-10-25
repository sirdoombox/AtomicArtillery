local atomic_explosion = table.deepcopy(data.raw.projectile["atomic-rocket"].action)

--same size as the shockwave to follow, needed to get auto-targeting to space shots correctly. Switched to fire because the thermal pulse is also a thing on nukes.
--Finally, by having this here, you get the radar update with everything dying like you expect with a nuke.
local instant_damage = {
    type = "nested-result",
    action = {
        radius = 35,
        type = "area",
        action_delivery = {
            type = "instant",
            target_effects = {
                {
                    type = "damage",
                    damage = { amount = 3000, type = "fire" },
                },
            },
        },
    },
}


table.insert(atomic_explosion.action_delivery.target_effects, 1, instant_damage)


data:extend({
    {
        type = "artillery-projectile",
        name = "atomic-artillery-projectile",
        flags = {"not-on-map"},
        acceleration = 0,
        direction_only = true,
        reveal_map = true,
        map_color = {r=1, g=1, b=0},
        picture = {
            filename = "__AtomicArtillery__/graphics/entity/artillery-projectile/hr-atomic-shell.png",
            width = 64,
            height = 64,
            scale = 0.5,
        },
        shadow = {
            filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
            width = 64,
            height = 64,
            scale = 0.5,
        },
        chart_picture = {
            filename = "__AtomicArtillery__/graphics/entity/artillery-projectile/atomic-artillery-shoot-map-visualization.png",
            flags = { "icon" },
            frame_count = 1,
            width = 64,
            height = 64,
            priority = "high",
            scale = 0.25,
        },
        action = atomic_explosion,
        animation = {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        }
    },
})
