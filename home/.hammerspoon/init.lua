--
-- leoj3n's Hammerspoon config
--

-- Seed the RNG
-- math.randomseed(os.time())

-- Ensure the IPC command line client is available
-- hs.ipc.cliInstall()

function reloadConfig(files)
  doReload = false
  for _,file in pairs(files) do
    if file:sub(-4) == ".lua" then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
  end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.homesick/repos/dotfiles/home/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

--
-- Spotify
--

local g_screen = hs.screen.mainScreen():frame()
local g_top = hs.geometry.rect(g_screen.w / 2 + 18, g_screen.h - 35, g_screen.w / 4, 18)
local g_bottom = hs.geometry.rect(g_screen.w / 2 + 18, g_screen.h - 19, g_screen.w / 4, 18)

local g_red = hs.drawing.color.hammerspoon.osx_red
local g_green = hs.drawing.color.hammerspoon.osx_green
local g_yellow = hs.drawing.color.hammerspoon.osx_yellow

local g_artistText = nil
local g_titleText = nil
local g_playBtn = nil
local g_nextBtn = nil

local g_spotifyTimer = nil

function spotifyRender()
  if g_artistText then g_artistText:delete() end
  if g_titleText then g_titleText:delete() end
  if g_playBtn then g_playBtn:delete() end
  if g_nextBtn then g_nextBtn:delete() end

  g_artistText = hs.drawing.text(g_top, ' ')
  g_artistText:setTextSize(14)
  g_artistText:setTextFont('Pragmata Pro Mono Regular')
  g_artistText:sendToBack()
  g_artistText:show()

  g_titleText = hs.drawing.text(g_bottom, ' ')
  g_titleText:setTextSize(14)
  g_titleText:setTextFont('Pragmata Pro Mono Regular')
  g_titleText:sendToBack()
  g_titleText:show()

  g_playBtn = hs.drawing.circle(hs.geometry.rect(g_screen.w / 2, g_screen.h - 35, 18, 18))
  g_playBtn:setFillColor(g_red)
  g_playBtn:setFill(true)
  --g_playBtn:show()

  g_nextBtn = hs.drawing.circle(hs.geometry.rect(g_screen.w / 2, g_screen.h - 19, 18, 18))
  g_nextBtn:setFillColor(g_red)
  g_nextBtn:setFill(true)
  --g_nextBtn:show()

  g_playBtn:setClickCallback(function()
    hs.spotify.playpause()
  end, nil)

  g_nextBtn:setClickCallback(function()
    hs.spotify.next()
  end, nil)
end

function spotifyUpdate()
  local running = hs.spotify.isRunning()
  local playing = hs.spotify.isPlaying()

  if (running) then
    if (playing) then
      -- playing
      local title = hs.spotify.getCurrentTrack()
      local artist = hs.spotify.getCurrentArtist()

      if (artist == '') then
        -- playing an ad
        g_titleText:setText('[Blocking ad]')
        g_nextBtn:setFillColor(g_red)
      else
        -- playing a song
        g_titleText:setText(title)
        g_nextBtn:setFillColor(g_yellow)
        g_playBtn:setFillColor(g_green)
      end
      g_artistText:setText(artist)
    else
      -- running but not playing, pause everything
      g_playBtn:setFillColor(g_red)
      g_nextBtn:setFillColor(g_yellow)
    end
  else
    -- not running, turn everything off
    g_titleText:setText(' ')
    g_artistText:setText(' ')
    g_playBtn:setFillColor(g_red)
    g_nextBtn:setFillColor(g_red)
  end
end

-- spotifyRender()
-- g_spotifyTimer = hs.timer.new(hs.timer.minutes(5), spotifyUpdate)
-- g_spotifyTimer:start()
-- spotifyUpdate()

--
-- Sunrise
--

-- function sunriseCountdown()
  -- local screen = hs.screen.mainScreen():frame()

  -- local sunRect = hs.geometry.rect(screen.w, 0, 6, screen.h - 36)
  -- local sunBar = hs.drawing.rectangle(sunRect)
  -- sunBar:setFillColor(hs.drawing.color.hammerspoon.osx_yellow)
  -- sunBar:setFill(true)
  -- sunBar:sendToBack()
  -- sunBar:show()

  -- local sunrise = hs.location.sunrise(41.8369, 87.6847, -6)
  -- print(sunrise)

  -- local sunTimer = hs.timer.doEvery(1, function() 
    -- sunRect.y = (sunRect.y + 20)
    -- sunRect.y2 = (sunRect.y2 - 20)
    -- sunBar:setSize(sunRect)
  --  print(sunRect)
  -- end)
-- end

--
-- Hotkeys
--

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "Y", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "N", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "U", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

--
-- Developer debug
--

 -- local function crashifnotmain(reason)
 -- print("crashifnotmain called with reason", reason) -- may want to remove this, very verbose otherwise
 --  if not hs.crash.isMainThread() then
 --    print("not in main thread, crashing")
 --    hs.crash.crash()
 --  end
 -- end
 -- debug.sethook(crashifnotmain, 'c')

-- collectgarbage("setstepmul", 1000)
-- collectgarbage("setpause", 1)
