# Execute your favorite apps at launch
exec-once = /usr/lib/polkit-kde-authentication-agent-1
exec-once = mako
exec-once = easyeffects --gapplication-service
exec-once = swww init && sh $refreshThemePath && sh $restartWaybarPath && sh $refreshMakoPath
exec-once = 1password --silent
exec-once = wl-paste --type text --watch cliphist store #Stores only text data
exec-once = wl-paste --type image --watch cliphist store #Stores only image data
