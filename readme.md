
# Pixie

![intro](images/intro1.png)

Pixie is a general purpose and full-featured 2d graphics library, supporting both vector and raster operations.

With Pixie you can crop images, draw shapes, apply masks, layer gradients, typeset text, load textures for OpenGL and much more.

There are API bindings for Pixie available in other languages with more coming soon: [Python](https://github.com/treeform/pixie-python)

In addition to Pixie's own API, Pixie also includes a Canvas API those familiar with the `<canvas>` element in Javascript.

Pixie is similar to [Cairo](https://www.cairographics.org/) and [Skia](https://skia.org) and is written entirely in [Nim](https://nim-lang.org/).

Pixie is fast thanks to optimized algorithms and extensive SIMD using both `SSE2` and`AVX2` on x64 CPUs and `NEON` on Arm CPUs and Apple Silicon.

You can use Pixie to load a variety of common raster image formats such as `.png`, `.jpeg`, `.gif`, `.bmp`, as well as some unique formats like `.qoi`, `.ppm`. Pixie also supports a subset of `.svg`.

In addition to loading image formats, Pixie can also load fonts in `.ttf`, `.otf` formats, as well and less common `.svg` font format.

## Table of contents

* [Chapter 1: Tutorial](tutorial.md)
* [Chapter 2: Context](context.md)
* [Chapter 3: Images](images.md)
* [Chapter 4: Paths](paths.md)
* [Chapter 5: Text](text.md)
* [Chapter 6: Blending](blending.md)

## Helpful links

* [Pixie on Github](https://github.com/treeform/pixie)
* [API Reference](https://nimdocs.com/treeform/pixie/pixie.html)
* [Nimble Directory](https://nimble.directory/pkg/pixie)
* [PyPI page for pixie-python](https://pypi.org/project/pixie-python)

## Videos

* [Pixie - A full-featured 2D graphics library for Nim](https://www.youtube.com/watch?v=8acDfUIwLnk)
