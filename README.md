
# Colorswatches

Colorswatches was created circa 2005 when I was using [Plua](http://en.wikipedia.org/wiki/Plua) to develop software for
 [Palm OS](http://en.wikipedia.org/wiki/Palm_OS) devices. I resurrected it recently (summer 2014) because I needed something similar while developing the [blink library](http://github.com/profburke/FILL-THIS-IN) for Lua.

If I really wanted to beat a dead horse, there are a number of other color collections I could implement such as
the ones at [Rapid Tables](http://www.rapidtables.com/web/color/RGB_Color.htm), or the list of [Crayola colors](http://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors).


## Usage

    colors = require 'colorswatches'
    c = colors.red -- or colors['red']
    print(c.name, c.r, c.g, c.b)
    print(c) -- make use of Color's __tostring
    print(c:rgb()) -- rgb() returns multiple values

    myred = colors.new('AwesomeRed', 240, 12, 14)

This project uses semantic versioning. See <a href="http://semver.org">semver.org</a> for more information.


## Requirements and Installation

The library was developed and tested using [Lua](http://lua.org) 5.2.3. However it should run on other versions of Lua with little or no modification.


If you have downloaded the github repository, you can install the library by copying the files in the `src` subdirectory to
your Lua library (`/usr/local/share/lua/5.2` or similar). Alternatively, you can install it via [luarocks](http://luarocks.org/)

    luarocks install colorswatches


## Documentation and Contact Information

More documentation (than this dirt simple library requires) can be found in the `doc` subdirectory.

The best way to contact me regarding this library is to post an issue at the [github repository](https://github.com/profburke/colorswatches/issues).


## License

Colorswatches is free software distributed under the terms of the MIT license. It may be used for any purpose, including commercial purposes, at absolutely no cost without having to ask us. The only requirement is that if you do use Colorswatches, then you should give us credit by including the appropriate copyright notice somewhere in your product or its documentation. For details, see `LICENSE`.





