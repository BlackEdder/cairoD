/**
 * This module contains information on what optional features are
 * available with the used cairo library.
 */
module cairo.c.config;

version(D_Ddoc)
{
    ///PNG functions are available
    enum bool CAIRO_HAS_PNG_FUNCTIONS = true;
    ///Postscript surface support
    enum bool CAIRO_HAS_PS_SURFACE = true;
    ///PDF surface support
    enum bool CAIRO_HAS_PDF_SURFACE = true;
    ///SVG surface support
    enum bool CAIRO_HAS_SVG_SURFACE = true;

    //These require external libraries / bindings

    ///Win32 surface support
    enum bool CAIRO_HAS_WIN32_SURFACE = false;
    ///Win32 font support
    enum bool CAIRO_HAS_WIN32_FONT = false;
    ///Freetype font support
    enum bool CAIRO_HAS_FT_FONT = false;
    ///XCB surface support
    enum bool CAIRO_HAS_XCB_SURFACE = false;
    ///DirectFB surface support
    enum bool CAIRO_HAS_DIRECTFB_SURFACE = false;
    ///XLIB surface support
    enum bool CAIRO_HAS_XLIB_SURFACE = false;
}
else
{
    static if(__traits(compiles, CAIROD_IS_CONFIGURED) && CAIROD_IS_CONFIGURED)
    {
        // Use variables from configure.d
    }
    else
    {
        enum bool CAIRO_HAS_PNG_FUNCTIONS = true;
        enum bool CAIRO_HAS_PS_SURFACE = true;
        enum bool CAIRO_HAS_PDF_SURFACE = true;
        enum bool CAIRO_HAS_SVG_SURFACE = true;

        enum bool CAIRO_HAS_WIN32_SURFACE = false;
        enum bool CAIRO_HAS_WIN32_FONT = false;
        enum bool CAIRO_HAS_FT_FONT = false;
        enum bool CAIRO_HAS_XCB_SURFACE = false;
        enum bool CAIRO_HAS_DIRECTFB_SURFACE = false;
        enum bool CAIRO_HAS_XLIB_SURFACE = false;
    }
}

/*
 * configure.d appends the actual enums at the end of this file
 */
