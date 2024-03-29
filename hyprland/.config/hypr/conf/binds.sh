# Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
bind = $mainMod, Q, exec, $terminal
bind = $mainMod, C, killactive,
bind = $mainMod, E, exec, $fileManager
bind = $mainMod, T, togglefloating,
bind = $mainMod, Space, exec, $menu
bind = $mainMod SHIFT, Space, exec, rofi -modi emoji -show emoji
bind = $mainMod, P, exec, 1password
bind = $mainMod SHIFT, P, pseudo, # dwindle
bind = $mainMod, J, togglesplit,  # dwindle
bind = $mainMod, O, exec, /usr/bin/octopi
bind = $mainMod, B, exec, firefox
bind = $mainMod SHIFT, B, exec, google-chrome-stable
bind = $mainMod, W, exec, sh $refreshThemePath && sh $restartWaybarPath && sh $refreshMakoPath
bind = $mainMod SHIFT, W, exec, sh $restartWaybarPath
bind = $mainMod, G, exec, steam
bind = $mainMod, D, exec, flatpak run dev.vencord.Vesktop
bind = $mainMod, F, fullscreen, 1
bind = $mainMod SHIFT, F, fullscreen, 0
bind = $mainMod, M, exec, flatpak run com.mastermindzh.tidal-hifi
bind = $mainMod, H, exec, flatpak run com.heroicgameslauncher.hgl
bind = $mainMod, A, exec, pavucontrol
bind = $mainMod SHIFT, A, exec, sh ~/.config/hypr/scripts/restart-audio.sh

# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Example special workspace (scratchpad)
bind = $mainMod, S, togglespecialworkspace, magic
bind = $mainMod SHIFT, S, movetoworkspace, special:magic

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
