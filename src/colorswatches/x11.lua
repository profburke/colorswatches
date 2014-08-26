--- Provides a collection of X11 color names and their RGB values.
-- For more details, see the documentation for `colors`.
--
-- @module colorswatches.x11
--
-- @usage
-- x11_colors = require 'colorswatches.x11'
--
--
-- -- print out the names and RGB values
-- for name, color in pairs(x11_colors) do
--       print(name, color:rgb())
-- end
--
--
-- -- or get the components individually
-- crimson = x11_colors.crimson
-- print(crimson.name, crimson.r, crimson.g, crimson.b)
--
--
-- -- or make use of color's __tostring method
-- print(crimson)
--


local colors = require 'colorswatches'
colors.x11 = {}
local x11_colors = colors.x11

local colors_mt = getmetatable(colors)
setmetatable(x11_colors, colors_mt)


local color = function(n, r, g, b)
   local c = colors.new(n, r, g, b)
   x11_colors[c.name] = c
end



color('white', 255, 255, 255)
color('black', 0, 0, 0)

color('red', 255, 0, 0)
color('green', 0, 255, 0)
color('blue', 0, 0, 255)

color('yellow', 255, 255, 0)
color('cyan', 0, 255, 255)
color('magenta', 255, 0, 255)

color('whitesmoke', 245, 245, 245) 
color('gainsboro', 220, 220, 220)
color('lightgrey', 211, 211, 211)
color('silver', 192, 192, 192)
color('lightslategray', 119, 136, 153)
color('steelblue', 70, 130, 180)
color('royalblue', 65, 105, 225)
color('cornflowerblue', 100, 149, 237)
color('lightsteelblue', 176, 196, 222)
color('mediumslateblue', 123, 104, 238)
color('slateblue', 106, 90, 205)
color('dodgerblue', 30, 144, 255)
color('deepskyblue', 0, 191, 255)
color('lightskyblue', 135, 206, 250)
color('skyblue', 135, 206, 235)
color('lightblue', 173, 216, 230)
color('powderblue', 176, 224, 230)
color('azure', 240, 255, 255)
color('lightcyan', 224, 255, 255)
color('paleturquoise', 175, 238, 238)
color('darkturquoise', 0, 206, 209)
color('cadetblue', 95, 158, 160)
color('mediumturquoise', 72, 209, 204)
color('aqua', 0, 255, 255)
color('turquoise', 64, 224, 208)
color('lightseagreen', 32, 178, 170)
color('darkcyan', 0, 139, 139)
color('aquamarine', 127, 255, 212)
color('mediumaquamarine', 102, 205, 170)
color('darkseagreen', 143, 188, 143)
color('mediumseagreen', 60, 179, 113)
color('seagreen', 46, 139, 87)
color('limegreen', 50, 205, 50)
color('lime', 0, 255, 0)
color('chartreuse', 127, 255, 0)
color('lawngreen', 124, 252, 0)
color('greenyellow', 173, 255, 47)
color('palegreen', 152, 251, 152)
color('lightgreen', 144, 238, 144)
color('springgreen', 0, 255, 127)
color('mediumspringgreen', 0, 250, 154)
color('olivedrab', 107, 142, 35)
color('darkkhaki', 189, 183, 107)
color('darkgoldenrod', 184, 134, 11)
color('goldenrod', 218, 165, 32)
color('gold', 255, 215, 0)
color('khaki', 240, 230, 140)
color('palegoldenrod', 238, 232, 170)
color('blanchedalmond', 255, 235, 205)
color('moccasin', 255, 228, 181)
color('wheat', 245, 222, 179)
color('navajowhite', 255, 222, 173)
color('burlywood', 222, 184, 135)
color('tan', 210, 180, 140)
color('rosybrown', 188, 143, 143)
color('sienna', 160, 82, 45)
color('saddlebrown', 139, 69, 19)
color('chocolate', 210, 105, 30)
color('peru', 205, 133, 63)
color('sandybrown', 244, 164, 96)
color('brown', 165, 42, 42)
color('indianred', 205, 92, 92)
color('lightcoral', 240, 128, 128)
color('salmon', 250, 128, 114)
color('darksalmon', 233, 150, 122)
color('lightsalmon', 255, 160, 122)
color('coral', 255, 127, 80)
color('tomato', 255, 99, 71)
color('darkorange', 255, 140, 0)
color('orange', 255, 165, 0)
color('orangered', 255, 69, 0)
color('crimson', 220, 20, 60)
color('deeppink', 255, 20, 147)
color('fuchsia', 255, 0, 255)
color('hotpink', 255, 105, 180)
color('lightpink', 255, 182, 193)
color('pink', 255, 192, 203)
color('palevioletred', 219, 112, 147)
color('mediumvioletred', 199, 21, 133)
color('mediumpurple', 147, 112, 219)
color('darkorchid', 153, 50, 204)
color('mediumorchid', 186, 85, 211)
color('orchid', 218, 112, 214)
color('violet', 238, 130, 238)
color('plum', 221, 160, 221)
color('thistle', 216, 191, 216)
color('lavender', 230, 230, 250)
color('ghostwhite', 248, 248, 255)
color('aliceblue', 240, 248, 255)
color('mintcream', 245, 255, 250)
color('honeydew', 240, 255, 240)
color('lightgoldenrodyellow', 250, 250, 210)
color('lemonchiffon', 255, 250, 205)
color('cornsilk', 255, 248, 220)
color('lightyellow', 255, 255, 224)
color('ivory', 255, 255, 240)
color('floralwhite', 255, 250, 240)
color('linen', 250, 240, 230)
color('oldlace', 253, 245, 230)
color('antiquewhite', 250, 235, 215)
color('bisque', 255, 228, 196)
color('peachpuff', 255, 218, 185)
color('papayawhip', 255, 239, 213)
color('seashell', 255, 245, 238)
color('lavenderblush', 255, 240, 245)
color('mistyrose', 255, 228, 225)



return x11_colors
