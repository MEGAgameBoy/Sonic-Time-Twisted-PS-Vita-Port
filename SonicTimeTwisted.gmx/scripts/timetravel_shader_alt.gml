// MDashK: This is the time travel alternate for usage with the Vita.
// It is used in time travel transitions and in the 1st Past cutscene
// (where the original shader crashes the Vita GPU)
//
// Specifically, the Vita doesn't seem to like when you use shaders
// while changing certain scenes. So, we basically changed the specific
// Past Cutscene 1 sprite from all blank to have the effect already applied
// and did the same with the sprites used for the Time Travel transition.
// With this, we discard the need to use the shaders to make the effect,
// since the sprite has already the effect applied on it.
// The Vita will still present a black screen temporarily, for a few seconds,
// when changing things around, but at least you'll have the effect on 
// the time travel.

// argument0 - surface draw x
// argument1 - surface draw y

if (tts_ok)
{
        if (surface_exists(tt_surface)) draw_surface_ext(tt_surface, argument0, argument1, image_xscale, image_yscale, 0, c_white, 1);
    shader_reset();
}
