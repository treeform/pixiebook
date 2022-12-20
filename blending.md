# Blending and Masking

Blending and masking are two techniques that are commonly used in digital graphics to create special effects or to manipulate the appearance of images.

Blending refers to the process of combining two or more images or layers in order to create a single, composite image. This can be done in a variety of ways, such as by overlaying one image on top of another, or by blending the colors of the two images together. Pixie supports a variety of blending modes, which are different algorithms that can be used to combine two images in different ways. Some common blending modes include "normal," "multiply," "screen," and "overlay."

Masking is a technique that is similar to blending, but it involves using an image or layer to selectively hide or reveal parts of another image or layer. This can be done by using the pixels in the masking image as an alpha channel, which defines the transparency of the image being masked. Pixie supports a variety of blending modes that can be used for masking, such as "mask" and "subtract" or "exclude."

Overall, blending and masking are powerful techniques that can be used to create a wide range of effects in digital graphics. They can be used to create composite images, add special effects to images, or to selectively hide or reveal parts of an image.

Starting with background image by Hulki Okan Tabak @hulkiokantabak of Bosphorus Coast, Istanbul, Turkey:

![blend image](images/background.png)

Here is what blends are capable of:

### NormalBlend

The default blend for everything. Just blends the colors normally.

![blend image](images/blendNormalBlend.png)

### DarkenBlend

![blend image](images/blendDarkenBlend.png)

### MultiplyBlend

![blend image](images/blendMultiplyBlend.png)

### ColorBurnBlend

![blend image](images/blendColorBurnBlend.png)

### LightenBlend

![blend image](images/blendLightenBlend.png)

### ScreenBlend

![blend image](images/blendScreenBlend.png)

### ColorDodgeBlend

![blend image](images/blendColorDodgeBlend.png)

### OverlayBlend

![blend image](images/blendOverlayBlend.png)

### SoftLightBlend

![blend image](images/blendSoftLightBlend.png)

### HardLightBlend

![blend image](images/blendHardLightBlend.png)

### DifferenceBlend

![blend image](images/blendDifferenceBlend.png)

### ExclusionBlend

![blend image](images/blendExclusionBlend.png)

### HueBlend

![blend image](images/blendHueBlend.png)

### SaturationBlend

![blend image](images/blendSaturationBlend.png)

### ColorBlend

![blend image](images/blendColorBlend.png)

### LuminosityBlend

![blend image](images/blendLuminosityBlend.png)

## Masking

Masking is just a special blend mode.

### Use MaskBlend to simulate a intersection of masks.

MaskBlend is the default blend for masking operations.

![blend image](images/bool_intersect.png)

### Use NormalBlend to simulate a union of masks.

![blend image](images/bool_union.png)

### Use SubtractMaskBlend to simulate a subtraction of masks.

![blend image](images/bool_subtract.png)

### Use ExcludeMaskBlend to simulate a exclusion of masks.

![blend image](images/bool_exclude.png)

<!-- ### MaskBlend

Default masking blend that is used to mask out or cut out areas.

![blend image](images/blendMaskBlend.png)

### SubtractMaskBlend

Subtract is just the opposite of mask blend.

![blend image](images/blendSubtractMaskBlend.png)

### ExcludeMaskBlend

![blend image](images/blendExcludeMaskBlend.png) -->

## OverwriteBlend

`OverwriteBlend` is special in that it copies the data from one image into another as fast as possible.

This blend is only safe to use on to an image you know is empty. Usually an image that was just created.
Otherwise odd artifacts might or might not will happen based on optimization modes.

You can replace `NormalBlend` with `OverwriteBlend` if you know that the image you are drawing to is empty to speed up the process.
Its very common to draw things into just created empty images.

In this example, using `OverwriteBlend` here is faster as we know that `background` image was just created and is blank:

```nim
import pixie
let
  background = newImage(100, 100)
  profile = readImage("images/circleProfile.png")
background.draw(profile, blendMode = OverwriteBlend)
background.writeFile("images/overwriteBlend.png")
```

![blend image](images/overwriteBlend.png)
