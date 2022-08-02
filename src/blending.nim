# # Blending and Masking
# 
# Pixie supports variety of blending modes and some of them can be used for masking as well.
# 
# Starting with background image by Hulki Okan Tabak @hulkiokantabak of Bosphorus Coast, Istanbul, Turkey:
# 
# ![blend image](images/background.png)
# 
# Here is what blends are capable of:
# 
# ### NormalBlend
# 
# The default blend for everything. Just blends the colors normally.
# 
# ![blend image](images/blendNormalBlend.png)
# 
# ### DarkenBlend
# 
# ![blend image](images/blendDarkenBlend.png)
# 
# ### MultiplyBlend
# 
# ![blend image](images/blendMultiplyBlend.png)
# 
# ### ColorBurnBlend
# 
# ![blend image](images/blendColorBurnBlend.png)
# 
# ### LightenBlend
# 
# ![blend image](images/blendLightenBlend.png)
# 
# ### ScreenBlend
# 
# ![blend image](images/blendScreenBlend.png)
# 
# ### ColorDodgeBlend
# 
# ![blend image](images/blendColorDodgeBlend.png)
# 
# ### OverlayBlend
# 
# ![blend image](images/blendOverlayBlend.png)
# 
# ### SoftLightBlend
# 
# ![blend image](images/blendSoftLightBlend.png)
# 
# ### HardLightBlend
# 
# ![blend image](images/blendHardLightBlend.png)
# 
# ### DifferenceBlend
# 
# ![blend image](images/blendDifferenceBlend.png)
# 
# ### ExclusionBlend
# 
# ![blend image](images/blendExclusionBlend.png)
# 
# ### HueBlend
# 
# ![blend image](images/blendHueBlend.png)
# 
# ### SaturationBlend
# 
# ![blend image](images/blendSaturationBlend.png)
# 
# ### ColorBlend
# 
# ![blend image](images/blendColorBlend.png)
# 
# ### LuminosityBlend
# 
# ![blend image](images/blendLuminosityBlend.png)
# 
# ## Masking
# 
# Masking is just a special blend mode.
# 
# ### Use MaskBlend to simulate a intersection of masks.
# 
# MaskBlend is the default blend for masking operations.
# 
# ![blend image](images/bool_intersect.png)
# 
# ### Use NormalBlend to simulate a union of masks.
# 
# ![blend image](images/bool_union.png)
# 
# ### Use SubtractMaskBlend to simulate a subtraction of masks.
# 
# ![blend image](images/bool_subtract.png)
# 
# ### Use ExcludeMaskBlend to simulate a exclusion of masks.
# 
# ![blend image](images/bool_exclude.png)
# 
# <!-- ### MaskBlend
# 
# Default masking blend that is used to mask out or cut out areas.
# 
# ![blend image](images/blendMaskBlend.png)
# 
# ### SubtractMaskBlend
# 
# Subtract is just the opposite of mask blend.
# 
# ![blend image](images/blendSubtractMaskBlend.png)
# 
# ### ExcludeMaskBlend
# 
# ![blend image](images/blendExcludeMaskBlend.png) -->
# 
# ## OverwriteBlend
# 
# Overwrite blend is special in that it copies the data from one image into another as fast as possible.
# 
# This blend is only safe to use on to an image you know is empty. Usually an image that was just created.
# Otherwise odd artifacts will happen.
# 
# You can replace NormalBlend with OverwriteBlend if you know that the image you are drawing to is empty.
# Using OverwriteBlend here is faster as it does not care what
# pixies background has:
# 
import pixie
let
  background = newImage(100, 100)
  profile = readImage("images/circleProfile.png")
background.draw(profile, blendMode = OverwriteBlend)
background.writeFile("images/overwriteBlend.png")
# 
# ![blend image](images/overwriteBlend.png)
# 
