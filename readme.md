
# Pixie

![intro](images/intro1.png)

Pixie is a general purpure and full-featured 2d graphics library.
It allows you to do use vector and raster operations.
With pixie you can crop images, draw shapes, apply mask, layer gradients, typeset text, load textures for openGL and much more.
It has an API available in multiple languages `Nim`, `Python` and soon `C`.
Pixie features its own API as well as a JS-Canvas/Cairo inspired like API for easy porting.

Pixie is similar to [Cairo](https://www.cairographics.org/) and [Skia](https://skia.org) written entirely in [Nim](https://nim-lang.org/).

Pixie is pretty fast beating Cairo in most cases thanks to optimized algorithms and SIMD support for `SSE2`, `AVX`, `AVX2` for amd64 and `NEON` for Arm and Apple Silicon chips.

It supports a variety of common raster image formats `.png`, `.jpeg`, `.gif`, `.bmp`, as well as some unique formats like `.qoi`, `.ppm`. It also supports a subset of `.svg` which is a vector format.
It can also load fonts in `.ttf`, `.otf` formats, as well and less common `.svg` font format.

## Table of contents

* [Chapter 1: Tutorial](tutorial.md)
* [Chapter 2: Context](context.md)
* [Chapter 3: Images](images.md)
* [Chapter 4: Paths](paths.md)
* [Chapter 5: Text](text.md)
* [Chapter 6: Blending](blending.md)

## Helpful links

* [Github](https://github.com/treeform/pixie)
* [API Reference](https://nimdocs.com/treeform/pixie/pixie.html)
* [Nimble Directory](https://nimble.directory/pkg/pixie)
* [Pypi](https://pypi.org/project/pixie-python)

## Videos

* [Pixie - A full-featured 2D graphics library for Nim](https://www.youtube.com/watch?v=8acDfUIwLnk)
