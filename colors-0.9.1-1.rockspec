package = 'colors'
version = '0.9.1-1'
source = {
   url = 'git://github.com/profburke/colors'
}
description = {
   summary = 'A simple library providing a collection of color names and their RGB values.',
   detailed = [[
   Colors provides a collection of color names and their RGB values. Colors include the
   standards (red, green, blue, yellow, ...) as well as the CSS and X11 collections.
   ]],
   homepage = 'http://github.com/profburke/colors',
   license = 'MIT',
}
dependencies = {
   'lua ~> 5.2',
}
build = {
   type = 'builtin',
   modules = {
      colors = 'src/colors.lua',
      ['colors.css'] = 'src/colors/css.lua',
      ['colors.x11'] = 'src/colors/x11.lua',
   },
   copy_directories = { 'doc' },
}
