// Configs
S.cfga({
 "defaultToCurrentScreen" : true,
 "secondsBetweenRepeat" : 0.1,
 "checkDefaultsOnLoad" : true,
 "focusCheckWidthMax" : 3000,
 "orderScreensLeftToRight" : true
});

// Monitors
var monLaptop = "1440x900";

// Operations
var lapFull = S.op("move", {
 "screen" : monLaptop,
 "x" : "screenOriginX",
 "y" : "screenOriginY",
 "width" : "screenSizeX",
 "height" : "screenSizeY"
});
var lapLeft = lapFull.dup({ "width" : "screenSizeX/2" });
var lapRight = lapLeft.dup({ "x" : "screenOriginX+screenSizeX/2" });

// common layout hashes
var lapHash = {
 "operations" : [lapFull, lapLeft, lapRight],
 "ignore-fail" : true,
 "repeat" : true
};
var genBrowserHash = function(regex) {
 return {
   "operations" : [function(windowObject) {
     var title = windowObject.title();
     if (title !== undefined && title.match(regex)) {
       windowObject.doOperation(lapRight);
     } else {
       windowObject.doOperation(lapLeft);
     }
   }],
   "ignore-fail" : true,
   "repeat" : true
 };
}

// 1 monitor layout
var oneMonitorLayout = S.lay("oneMonitor", {
 "MacVim" : lapHash,
 "iTerm" : lapHash,
 "Google Chrome" : genBrowserHash(/^Developer\sTools\s-\s.+$/),
 "Xcode" : lapHash,
 "GitX" : lapHash,
 "Spotify" : lapHash
});

// Defaults
S.def(1, oneMonitorLayout);

// Layout Operations
var oneMonitor = S.op("layout", { "name" : oneMonitorLayout });
var universalLayout = function() {
 // Should probably make sure the resolutions match but w/e
 S.log("SCREEN COUNT: "+S.screenCount());
 if (S.screenCount() === 3) {
 } else if (S.screenCount() === 2) {
 } else if (S.screenCount() === 1) {
   oneMonitor.run();
 }
};

// Batch bind everything. Less typing.
S.bnda({
 // Layout Bindings
 "space:ctrl" : universalLayout,

 // Basic Location Bindings
 "0:alt" : lapLeft,
 "-:alt" : lapRight,
 "=:alt" : lapFull,

 // Resize Bindings
 // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
 //"right:ctrl" : S.op("resize", { "width" : "+10%", "height" : "+0" }),
 //"left:ctrl" : S.op("resize", { "width" : "-10%", "height" : "+0" }),
 //"up:ctrl" : S.op("resize", { "width" : "+0", "height" : "-10%" }),
 //"down:ctrl" : S.op("resize", { "width" : "+0", "height" : "+10%" }),
 //"right:alt" : S.op("resize", { "width" : "-10%", "height" : "+0", "anchor" : "bottom-right" }),
 //"left:alt" : S.op("resize", { "width" : "+10%", "height" : "+0", "anchor" : "bottom-right" }),
 //"up:alt" : S.op("resize", { "width" : "+0", "height" : "+10%", "anchor" : "bottom-right" }),
 //"down:alt" : S.op("resize", { "width" : "+0", "height" : "-10%", "anchor" : "bottom-right" }),

 // Push Bindings
 // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
 "right:ctrl;shift" : S.op("push", { "direction" : "right", "style" : "bar-resize:screenSizeX/2" }),
 "left:ctrl;shift" : S.op("push", { "direction" : "left", "style" : "bar-resize:screenSizeX/2" }),
 "up:ctrl;shift" : S.op("push", { "direction" : "up", "style" : "bar-resize:screenSizeY/2" }),
 "down:ctrl;shift" : S.op("push", { "direction" : "down", "style" : "bar-resize:screenSizeY/2" }),

 // Nudge Bindings
 // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
 //"right:ctrl;alt" : S.op("nudge", { "x" : "+10%", "y" : "+0" }),
 //"left:ctrl;alt" : S.op("nudge", { "x" : "-10%", "y" : "+0" }),
 //"up:ctrl;alt" : S.op("nudge", { "x" : "+0", "y" : "-10%" }),
 //"down:ctrl;alt" : S.op("nudge", { "x" : "+0", "y" : "+10%" }),

 // Throw Bindings
 // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
 //"pad1:ctrl;alt" : S.op("throw", { "screen" : "2", "width" : "screenSizeX", "height" : "screenSizeY" }),
 //"pad2:ctrl;alt" : S.op("throw", { "screen" : "1", "width" : "screenSizeX", "height" : "screenSizeY" }),
 //"pad3:ctrl;alt" : S.op("throw", { "screen" : "0", "width" : "screenSizeX", "height" : "screenSizeY" }),
 //"right:ctrl;alt;cmd" : S.op("throw", { "screen" : "right", "width" : "screenSizeX", "height" : "screenSizeY" }),
 //"left:ctrl;alt;cmd" : S.op("throw", { "screen" : "left", "width" : "screenSizeX", "height" : "screenSizeY" }),
 //"up:ctrl;alt;cmd" : S.op("throw", { "screen" : "up", "width" : "screenSizeX", "height" : "screenSizeY" }),
 //"down:ctrl;alt;cmd" : S.op("throw", { "screen" : "down", "width" : "screenSizeX", "height" : "screenSizeY" }),

 // Focus Bindings
 // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
 //"l:cmd" : S.op("focus", { "direction" : "right" }),
 //"h:cmd" : S.op("focus", { "direction" : "left" }),
 //"k:cmd" : S.op("focus", { "direction" : "up" }),
 //"j:cmd" : S.op("focus", { "direction" : "down" }),
 //"k:cmd;alt" : S.op("focus", { "direction" : "behind" }),
 //"j:cmd;alt" : S.op("focus", { "direction" : "behind" }),
 //"right:cmd" : S.op("focus", { "direction" : "right" }),
 //"left:cmd" : S.op("focus", { "direction" : "left" }),
 //"up:cmd" : S.op("focus", { "direction" : "up" }),
 //"down:cmd" : S.op("focus", { "direction" : "down" }),
 //"up:cmd;alt" : S.op("focus", { "direction" : "behind" }),
 //"down:cmd;alt" : S.op("focus", { "direction" : "behind" }),

 // Window Hints
 //"esc:cmd" : S.op("hint"),

 // Switch currently doesn't work well so I'm commenting it out until I fix it.
 //"tab:cmd" : S.op("switch"),

 // Grid
 "esc:ctrl" : S.op("grid")
});

// Test Cases
S.src(".slate.test", true);
S.src(".slate.test.js", true);

// Log that we're done configuring
S.log("[SLATE] -------------- Finished Loading Config --------------");
