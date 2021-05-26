
# Paths

At the core of vector graphics there is rasterization.

> [Rasterisation](https://en.wikipedia.org/wiki/Rasterisation) (or rasterization) is the task of taking an image described in a **vector graphics format** (shapes) and converting it into a **raster image** (a series of pixels).

What it does is takes outlines described by liens and curves and fills the grid with appropriate filled and not filled cells.

![path](imgs/path1.png)

Here we have an outline of the image.

![path](imgs/scan1.png)

To rasterize we perform a ray scan for each row of pixels. Here we chose to scan from left to right, top to bottom, but really you can scan in any direction as long as your consistent

![path](imgs/scan2.png)

When our scan ray hits a line, we start filling that row.

![path](imgs/scan3.png)

Once we hit another line we stop.

![path](imgs/scan4.png)

We do that for every row until we have a complete image.

![path](imgs/scan5.png)

To have the images be smooth we can Anti-Alias. To produce smooth shapes we can cast a ray multiple times per pixel.

![path](imgs/winding1.png)

One other important thing to know is the winding rules. When a scan ray hits a edge we need to record if the edge is going up or down. This is called winding order.

![path](imgs/winding2.png)

If the ray is going up we +1 to winding count.

![path](imgs/winding3.png)

If the its going down we -1.

![path](imgs/winding4.png)

This way we can scan the whole image. And have complex interactive shapes.

There are tow rules the non-zero rule and the even-odd rule. With non-zero you always fill if the winding count != 0.

![path](imgs/winding5.png)

With even-odd you fill if winding count is an odd number.

![path](imgs/winding6.png)

Paths are usually defined is non-zero or even-odd. Only the simplest paths look the same with both rules, the more complex paths with holes will use one or the other rules.

Here is an example of the same path that was meant to be drawn with non-zero but looks incorrect when drawn with even-odd.

Non-zero is primary used for text and I feel is more common.
