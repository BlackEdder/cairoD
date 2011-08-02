/**
 * License:
 * $(BOOKTABLE ,
 *   $(TR $(TD cairoD wrapper/bindings)
 *     $(TD $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)))
 *   $(TR $(TD $(LINK2 http://cgit.freedesktop.org/cairo/tree/COPYING, _cairo))
 *     $(TD $(LINK2 http://cgit.freedesktop.org/cairo/tree/COPYING-LGPL-2.1, LGPL 2.1) /
 *     $(LINK2 http://cgit.freedesktop.org/cairo/plain/COPYING-MPL-1.1, MPL 1.1)))
 * )
 * Authors:
 * $(BOOKTABLE ,
 *   $(TR $(TD Johannes Pfau) $(TD cairoD))
 *   $(TR $(TD $(LINK2 http://cairographics.org, _cairo team)) $(TD _cairo))
 * )
 */
/*
 * Distributed under the Boost Software License, Version 1.0.
 *    (See accompanying file LICENSE_1_0.txt or copy at
 *          http://www.boost.org/LICENSE_1_0.txt)
 */
module cairo.directfb;

import std.string;
import std.conv;

import cairo.cairo;
import cairo.c.cairo;

version(CAIRO_HAS_DIRECTFB_SURFACE)
{
    import cairo.c.directfb;

    public class DirectFBSurface : Surface
    {
        public:
            this(cairo_surface_t* ptr)
            {
                super(ptr);
            }

            this(IDirectFB *dfb, IDirectFBSurface *surface)
            {
                  super(cairo_directfb_surface_create(dfb, surface));
            }
    }
}
