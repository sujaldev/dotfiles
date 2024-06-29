# Dotfiles

My dotfiles.

# KMonad

This section documents my thoughts regarding how I have set up my kmonad configuration. This config is currently meant
for use with KDE plasma only. Some general thoughts:

1. **Stick to QWERTY:** we live in a society.
2. **Avoid `cmd-buttons`:**
    1. The DBus interface seems prone to change, the plasma config is likely better for long-term usage.
    2. Directly using commands to launch applications seems slower (didn't test much besides konsole).
    3. The environment kmonad is running in carries over to the command (sure there might be ways to avoid it, but why
       bother unless necessary).
    4. ~~This also makes it a bit safer to trust my config for anyone else who might like to use my config.~~ I am still
       going to use `cmd-buttons` for changing the lights on my keyboard to indicate different layers.

## Base Layer

For simple things like swapping caps and escape. Shortcuts on this layer are equivalent to those set in the plasma
config. Design considerations for this layer are:

1. **Global Shortcuts must use `meta`:** Reduces conflict with application level shortcuts (I haven't noticed any
   application making use of the `meta` key by default).
2. It is preferable to have shortcuts on this layer make sense without the help of the further layers also, in case I
   have to work on another system I am not allowed to configure.

## Quick Access Layer (hold `esc`)

This layer is for the most used actions. Design considerations for this layer are:

1. **Frequency of Action:** How often is an action performed?
2. **Home Row Proximity:** How close are all the keys in a shortcut combination to the home row?
3. **Relative Proximity:** Are the keys located near each other? (good for one-handed operations)

## Vim Layer (tap `lshift` to enter and `i` to exit)

I watched this video called [Mastering the Vim Language](https://youtu.be/wlR5gYd6um0), and thought it would be
interesting to apply "vim as a language" here. So these are the supported verbs + nouns:

- Launch Application (l)
    - Firefox (f)
    - Chrome (c)
    - Konsole (k)
    - Dolphin (e)
    - Spectacle (s)
    - Settings (i)
    - Others via krunner (/)
- Move Application
    - Tile (t)
        - left/down/up/right (h/j/k/l)
        - up-right/down-right/down-left/up-left (Use the above keys, hold vertical key then press horizontal key)
    - Move to workspace (m)
        - Absolute: 1/2/3/4 (a/s/d/f)
        - Relative: left/right (h/l)
- Close Application
    - Gracefully (q or :q)
    - Force (qf)
- Switch (s)
    - Application (a/A)
    - Desktop (d/D)
    - To overview (o)
- Miscellaneous
    - left/down/up/right (h/j/k/l)
    - Save (:w)

For layer indication, perhaps I could somehow use my keyboard's RGB functionality.