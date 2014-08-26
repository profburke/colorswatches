package = 'colorswatches'
version = '0.9.2-1'
source = {
   url = 'git://github.com/profburke/colorswatches',
   tag = 'v0.9.2'
}
description = {
   summary = 'A simple library providing a collection of color names and their RGB values.',
   detailed = [[
   Colorswatches provides a collection of color names and their RGB values. Colors include the
   standards (red, green, blue, yellow, ...) as well as the CSS and X11 collections.
   ]],
   homepage = 'http://github.com/profburke/colorswatches',
   license = 'MIT',
}
dependencies = {
   'lua ~> 5.2',
}
build = {
   type = 'builtin',
   modules = {
      colors = 'src/colorswatches.lua',
      ['colors.css'] = 'src/colorswatches/css.lua',
      ['colors.x11'] = 'src/colorswatches/x11.lua',
   },
   copy_directories = { 'doc' },
}
