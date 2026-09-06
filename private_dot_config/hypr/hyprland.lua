-- -------- --
-- CONTENTS --
-- -------- --

-- Environment
-- Colors
-- Look and feel
-- Window rules
-- Inputs
-- Defaults
-- Keybindings
-- Autostart
-- Permissions (currently empty)
-- Monitors (handled by hyprmoncfgd)



-- ----------- --
-- ENVIRONMENT --
-- ----------- --


-- NVIDIA specific settings recommended as workarounds but not needed
-- hl.env("AQ_DRM_DEVICES", "/dev/dri/by-path/pci-0000:06:00.0-card")
-- hl.env("AQ_DRM_DEVICES", "/dev/dri/by-path/pci-0000:06:00.0-card:/dev/dri/by-path/pci-0000:01:00.0-card")
-- hl.env("LIBVA_DRIVER_NAME", "nvidia")
-- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
-- hl.env("NVD_BACKEND", "direct")

local home = os.getenv("HOME")

-- hl.env("PATH", "$PATH:$HOME/.local/bin")

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("GDK_SCALE", "1")

hl.env("CLUTTER_BACKEND", "wayland")

hl.env("OZONE_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")

hl.env("SDL_VIDEODRIVER", "wayland")

hl.env("QS_NO_RELOAD_POPUP", "1")

hl.env("MOZ_ENABLE_WAYLAND", "1")

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.config({
    -- Fix NVidia bug where the cursor and its icon aren't in the same place by turning off in-hardware cursor support
    cursor = {
        no_hardware_cursors = true,
    },
    -- Set XWayland scaling settings
    xwayland = {
        force_zero_scaling = true,
    },
})



-- ------ --
-- COLORS --
-- ------ --


-- Following the Catppuccin Mocha color scheme

local rosewater = "rgb(f5e0dc)"
local rosewaterAlpha = "f5e0dc"
local flamingo = "rgb(f2cdcd)"
local flamingoAlpha = "f2cdcd"
local pink = "rgb(f5c2e7)"
local pinkAlpha = "f5c2e7"
local mauve = "rgb(cba6f7)"
local mauveAlpha = "cba6f7"
local red = "rgb(f38ba8)"
local redAlpha = "f38ba8"
local maroon = "rgb(eba0ac)"
local maroonAlpha = "eba0ac"
local peach = "rgb(fab387)"
local peachAlpha = "fab387"
local yellow = "rgb(f9e2af)"
local yellowAlpha = "f9e2af"
local green = "rgb(a6e3a1)"
local greenAlpha = "a6e3a1"
local teal = "rgb(94e2d5)"
local tealAlpha = "94e2d5"
local sky = "rgb(89dceb)"
local skyAlpha = "89dceb"
local sapphire = "rgb(74c7ec)"
local sapphireAlpha = "74c7ec"
local blue = "rgb(89b4fa)"
local blueAlpha = "89b4fa"
local lavender = "rgb(b4befe)"
local lavenderAlpha = "b4befe"
local text = "rgb(cdd6f4)"
local textAlpha = "cdd6f4"
local subtext1 = "rgb(bac2de)"
local subtext1Alpha = "bac2de"
local subtext0 = "rgb(a6adc8)"
local subtext0Alpha = "a6adc8"
local overlay2 = "rgb(9399b2)"
local overlay2Alpha = "9399b2"
local overlay1 = "rgb(7f849c)"
local overlay1Alpha = "7f849c"
local overlay0 = "rgb(6c7086)"
local overlay0Alpha = "6c7086"
local surface2 = "rgb(585b70)"
local surface2Alpha = "585b70"
local surface1 = "rgb(45475a)"
local surface1Alpha = "45475a"
local surface0 = "rgb(313244)"
local surface0Alpha = "313244"
local base = "rgb(1e1e2e)"
local baseAlpha = "1e1e2e"
local mantle = "rgb(181825)"
local mantleAlpha = "181825"
local crust = "rgb(11111b)"
local crustAlpha = "11111b"



-- ------------- --
-- LOOK AND FEEL --
-- ------------- --


-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Default springs
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- Window decorations
hl.config({
    general = {
        border_size = 3,
        col = {
            active_border = { colors = {mauve, flamingo}, angle = 90 },
            inactive_border = subtext0,
        },
        resize_on_border = true,
        gaps_in = 2,
        gaps_out = 0, 0, 0, 0,
        layout = "dwindle",
        allow_tearing = false,
    },
    decoration = {
        rounding = 12,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
    },
    animations = {
        enabled = true,
    },
    misc = {
        force_default_wallpaper = false,
    },
})



-- ------------ --
-- WINDOW RULES --
-- ------------ --


-- New tile layout settings
hl.config({
    layout = {
        single_window_aspect_ratio = { 0, 0 },
        single_window_aspect_ratio_tolerance = 0.1,
    },
    dwindle = {
        force_split = 2,
        preserve_split = true,
    },
})

-- Ignore maximize requests from all apps. You'll probably like this.
hl.window_rule({
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name = "color-special-workplace-window-borders",
    match = {
        workspace = "special:magic",
    },
    border_color = red,
})

-- Make the feh display of the key bindings fullscreen
hl.window_rule({
    name = "make-feh-fullscreen",
    match = {
        class = "feh",
    },
    border_size = 0,
    fullscreen = true,
})

hl.window_rule({
    name = "make-civ6-fullscreen",
    match = {
        title = "Sid Meier's Civilization VI (DX12)",
    },
    border_size = 0,
    fullscreen = false,
    float = true,
})

-- Make Freetube's PIP popup window float and pin it to all workspaces
hl.window_rule({
    name = "float-and-pin-freetube",
    match = {
        title = "Picture in picture",
    },
    float = true,
    pin = true,
    size = "600 400",
    move = "(((monitor_w)-(600))-10) (((monitor_h)-(400))-10)",
})

-- Make Youtube's PIP popup window float and pin it to all workspaces
hl.window_rule({
    name = "float-and-pin-youtube",
    match = {
        title = "Picture-in-Picture",
    },
    float = true,
    pin = true,
    size = "600 400",
    move = "(((monitor_w)-(600))-10) (((monitor_h)-(400))-10)",
})

-- Format Ente Auth as a pinned popup.
hl.window_rule({
    name = "resize-ente-auth",
    match = {
        title = "Ente Auth",
    },
    float = true,
    pin = true,
    size = "400 1000",
    move = "(((monitor_w)-(400))-10) 44",
})

-- Format Proton VPN as a pinned popup.
hl.window_rule({
    name = "resize-proton-vpn",
    match = {
        title = "Proton VPN",
    },
    float = true,
    pin = true,
    move = "(((monitor_w)-(window_w))-80) 20",
})

-- Format Insync as a pinned popup.
hl.window_rule({
    name = "resize-insync",
    match = {
        title = "Insync",
    },
    float = true,
    pin = true,
    size = "900 600",
    move = "(((monitor_w)-(900))-10) 44",
})



-- ----- --
-- INPUT --
-- ----- --


-- Three-finger-swipe horizontally to change workspaces
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- Allow for continuous workspace swipe rather than single swipes
-- Prevent new workspace creation to the right while swiping
hl.config({
    gestures = {
        workspace_swipe_forever = true,
        workspace_swipe_create_new = false,
    },
})

-- Three-finger-swipe upward to toggle fullscreen of the active window
hl.gesture({
    fingers = 3,
    direction = "up",
    action = "fullscreen",
})

-- Three-finger-swipe down to toggle floating the active window
hl.gesture({
    fingers = 3,
    direction = "down",
    action = "float",
})

-- Four-finger-swipe up to toggle the special workplace
hl.gesture({
    fingers = 4,
    direction = "up",
    action = "special",
    workspace_name = "magic",
})

-- Four-finger-swipe down to send window to special workplace or back
local win_to_special_workspace = function()
    local normal_workspace = hl.get_active_workspace()
    local special_workspace = hl.get_active_special_workspace()

    if special_workspace == nil then
        hl.dispatch(hl.dsp.window.move({ workspace = "special:magic", follow = false }))
    elseif special_workspace.name == "special:magic" then
        hl.dispatch(hl.dsp.window.move({ workspace = normal_workspace }))
    end
end

hl.gesture({
    fingers = 4,
    direction = "down",
    action = win_to_special_workspace,
})

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

hl.config({
    input = {
        kb_layout = "de",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
        },
    },
})



-- -------- --
-- DEFAULTS --
-- -------- --


local terminal    = "kitty"
local fileManager = "/usr/bin/dolphin"
local menu        = "wofi --show drun --allow-images --insensitive"
local mainMod     = "SUPER"

-- Note on how to use wofi for selection for interaction with terminal outputs and inputs:
-- This creates an ls output, trims it to only the folder and file names, pipes it to wofi
-- and returns it to the terminal. With an additional pipe in the end it would be handed
-- on to a command line utility.

-- ls -AFoqvh --time-style long-iso --group-directories-first | tr -s ' ' | cut -d ' ' -f 7- | wofi -S dmenu -d -k /dev/null --pre-display-cmd "echo '%s'"

-- The question remaining would be whether to add quotation  marks around the filenames.
-- Mind that the first entry should be removed, if this was actually going to be used for
-- something. A huge source of error would be the trim command, since it would strip
-- multiple spaces from filenames as well. For a real world case, no trim command and
-- instead a use of the cut command with -c would be better, such as the following.

-- ls -AFoqvh --time-style long-iso --group-directories-first | cut -c 42- | wofi -S dmenu -d -k /dev/null --pre-display-cmd "echo '%s'"

-- Something similar could be done with a clipboard manager such as clipvault.
-- See https://github.com/rolv-apneseth/clipvault
-- The relevant command would probably look like this (not tested!):

-- clipvault list | wofi -S dmenu -d -k /dev/null --pre-display-cmd "echo '%s' | cut -f 2" | clipvault get | wl-copy

-- The "-d -k /dev/null" is supposed to not make wofi sort the entries.



-- ----------- --
-- KEYBINDINGS --
-- ----------- --


hl.bind(mainMod .. " + space", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.kill())
hl.bind(mainMod .. " + SHIFT + f", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("cursor-clip"))

-- hl.bind(mainMod .. " + code:59", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + code:60", hl.dsp.window.float({ action = "toggle" }))
-- hl.bind(mainMod .. " + code:60", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + code:61", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + code:35", hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(mainMod .. " + SHIFT + code:35", hl.dsp.window.move({ workspace = "special:magic", follow = false }))
hl.bind(mainMod .. " + SHIFT + code:35", win_to_special_workspace)

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("kitty --hold hyprmoncfg"))
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))

hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("[workspace 8] " .. terminal))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("kitty --hold htop"))

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("[workspace 1] librewolf"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("[workspace 2] proton-mail"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("proton-pass"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("enteauth"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("protonvpn-app"))

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("[workspace 4] libreoffice -writer"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("[workspace 4] ~/.config/hypr/scripts/zettlr-gitwatch.sh"))
hl.bind(mainMod .. " + U", hl.dsp.exec_cmd("[workspace 4] zotero"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("recoll"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("kate"))

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("[workspace 5] ente-desktop"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("[workspace 5] digikam"))
-- hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("[workspace 5] darktable")) -- This is also the keybind for Kate, plus I start it from within digikam
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd("[workspace 5] hugin"))

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("[workspace 6] /opt/google/chrome/google-chrome --profile-directory=Profile 6 --app-id=opocehcckdgkafiimcmacpmcepdlamom"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("[workspace 1] freetube"))

hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("[workspace 3] element-desktop & signal-desktop --password-store=kwallet6 & Telegram & /opt/google/chrome/google-chrome --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("[workspace 3] bluesky"))

hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("opera"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("google-chrome-stable"))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("[workspace 9] prime-run steam"))

-- Regional screenshot
hl.bind("Print", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify \"Screenshot of region taken\" -t 5000"))

-- Fullscreen screenshot
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify \"Fullscreen screenshot taken\" -t 5000"))

-- Regional screen recording
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd("if pgrep -x \"wf-recorder\" > /dev/null; then pkill -INT -x wf-recorder; dunstify \"Screen recording ended.\" -t 5000; else wf-recorder -g \"$(slurp)\" -f ~/Videos/screen_recording${RANDOM}.mp4 | dunstify \"Regional screen recording started ...\" \"End the recording by pressing Win-Print again.\" -u critical -t 5000; fi"))

-- Fullscreen screen recording
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd("if pgrep -x \"wf-recorder\" > /dev/null; then pkill -INT -x wf-recorder; dunstify \"Screen recording ended.\" -t 5000; else wf-recorder -f ~/Videos/screen_recording${RANDOM}.mp4 | dunstify \"Fullscreen screen recording started ...\" \"End the recording by pressing Win-Print again.\" -u critical -t 5000; fi"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -d amdgpu_bl1 set +5%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -d amdgpu_bl1 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next & swayosd-client --playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause & swayosd-client --playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause & swayosd-client --playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous & swayosd-client --playerctl previous"), { locked = true })



-- --------- --
-- AUTOSTART --
-- --------- --


hl.on("hyprland.start", function()

    -- Log startup
    hl.exec_cmd("~/.config/hypr/scripts/hypr-startup-log.sh")

    -- Start Polkit and update dbus
    hl.exec_cmd("systemctl --user import-environment XDG_CURRENT_DESKTOP XDG_SESSION_TYPE")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    hl.exec_cmd("/usr/lib/xdg-desktop-portal-hyprland")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")

    hl.exec_cmd("/usr/lib/pam_kwallet_init")

    -- Fix xdg
--    hl.exec_cmd("wait 1; ~/.config/hypr/scripts/xdg-fix.sh &")

    -- Fix the desktop portal issues
--    hl.exec_cmd("/usr/lib/xdg-desktop-portal --replace")

    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("hyprctl setcursor catppuccin-mocha-dark-cursors 28")
--    hl.exec_cmd("/usr/bin/keepassxc")
    hl.exec_cmd("cursor-clip --daemon")

    -- Attempt waybar fixes
    hl.exec_cmd("/usr/bin/waybar &")
    -- hl.exec_cmd("~/.config/hypr/scripts/waybar-launch.sh &")
    -- hl.exec_cmd("wait 1; ~/.config/hypr/scripts/waybar-launch.sh &")
    -- hl.exec_cmd("wait 5; ~/.config/hypr/scripts/waybar-launch.sh &")
    -- hl.exec_cmd("wait 10; ~/.config/hypr/scripts/waybar-fix.sh &")

    hl.exec_cmd("dunst")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("udiskie --appindicator")
    hl.exec_cmd("nm-applet &")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("awww img --resize stretch ~/.config/backgrounds/raised-fist-3.png")

    -- Attempt hypermondcfgd start and fix
    hl.exec_cmd("~/.config/hypr/scripts/hypermoncfgd-fix.sh &")

    hl.exec_cmd("wait 10; QT_QPA_PLATFORM=xcb insync start", { workspace = "1 silent" })

    -- Attempt insync start fix
    -- hl.exec_cmd("~/.config/hypr/scripts/insync-fix.sh", { workspace = "1 silent" })
    hl.exec_cmd("feh -x -F ~/.config/backgrounds/hyprland-keybindings.jpg", { workspace = "10 silent" })
    hl.exec_cmd("librewolf", { workspace = "1 silent" })
    hl.exec_cmd("proton-mail", { workspace = "2 silent" })
    hl.exec_cmd("proton-pass", { workspace = "9 silent" })
    hl.exec_cmd("wait 1; protonvpn-app", { workspace = "9 silent" })
    hl.exec_cmd("enteauth", { workspace = "9 silent" })
end)




-- ----------- --
-- PERMISSIONS --
-- ----------- --



-- -------- --
-- MONITORS --
-- -------- --


-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

-- Added by hyprmoncfg: its generated monitor rules load last, so nothing before this can override the applied layout.
dofile(os.getenv("HOME") .. "/.config/hypr/hyprmoncfg-monitors.lua")
