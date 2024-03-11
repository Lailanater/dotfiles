# Execute your favorite apps at launch
exec-once = /usr/lib/polkit-kde-authentication-agent-1
exec-once = wl-paste --type text --watch cliphist store  #Stores only text data
exec-once = wl-paste --type image --watch cliphist store #Stores only image data
exec-once = nm-applet
exec-once = easyeffects --gapplication-service
exec-once = mako
exec-once = swww init && sh $refreshThemePath && sh $restartWaybarPath && sh $refreshMakoPath
exec-once = 1password --silent
exec-once = corectrl --minimize-systray
