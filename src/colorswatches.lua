--- Provides a collection of basic color names and their RGB values.
-- Plus a function for creating new color objects.
--
-- Colorswatches provides a collection of RGB values keyed by color name.
-- Specialized collections of color names are provided as submodules.
--
-- @module colorswatches
-- @author Matthew M. Burke
-- @copyright 2005-2014
-- @license MIT (see LICENSE file)
--

local colors_mt = {}
local color_mt = {}
colors_mt.__index = colors_mt
color_mt.__index = color_mt


local colors = {}
setmetatable(colors, colors_mt)




--- Creates a new color object. This object
-- has fields *name*, *r*, *g*, and *b*.
-- @function new
-- @tparam string n name of the color
-- @tparam int r red value of the color (0-255)
-- @tparam int g green value of the color (0-255)
-- @tparam int b blue value of the color (0-255)
-- @treturn Color a table representing the color.
colors_mt.new = function(n, r, g, b)
   local color = { name = n, r = r, g = g, b = b }
   setmetatable(color, color_mt)
   return color
end




--- @type Color

--- Returns a string representation of the color including both its name and
-- its RGB values.
-- @function __tostring
-- @treturn string the string representation of the color.
color_mt.__tostring = function(s) 
   return string.format("color('%s', %d, %d, %d)", s.name, s.r, s.g, s.b)
end



--- Returns the RGB values of the color. They are returned as three separate values.
-- @function rgb
-- @treturn int red value (0-255)
-- @treturn int green (0-255)
-- @treturn int blue (0-255)
color_mt.rgb = function(s)
   return s.r, s.g, s.b
end




-- convenience method to define a color and store
-- it in the colors table
local color = function(n, r, g, b)
   local c = colors_mt.new(n, r, g, b)
   colors[c.name] = c
end




color('white', 255, 255, 255)
color('black', 0, 0, 0)
color('red', 255, 0, 0)
color('green', 0, 255, 0)
color('blue', 0, 0, 255)
color('yellow', 255, 255, 0)
color('cyan', 0, 255, 255)
color('magenta', 255, 0, 255)


return colors

