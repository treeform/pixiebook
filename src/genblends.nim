import pixie


let
  background = readImage("images/background.png")
  grays = readImage("images/grays.png")
  hues = readImage("images/hues.png")
  masks = readImage("images/masks.png")
  checkers = readImage("images/checkers.png")

const blends = @[
  NormalBlend,
  DarkenBlend,
  MultiplyBlend,
  ColorBurnBlend,
  LightenBlend,
  ScreenBlend,
  ColorDodgeBlend,
  OverlayBlend,
  SoftLightBlend,
  HardLightBlend,
  DifferenceBlend,
  ExclusionBlend,
  HueBlend,
  SaturationBlend,
  ColorBlend,
  LuminosityBlend
]

for blend in blends:
  let
    image = newImage(background.width * 2, background.height)
    t = translate(vec2(background.width.float32, 0))

  image.draw(background)
  image.draw(background, t)

  image.draw(grays, blendMode = blend)
  image.draw(hues, t, blendMode = blend)

  image.writeFile("images/blend" & $blend & ".png")

const maskBlends = @[
  MaskBlend,
  OverwriteBlend,
  SubtractMaskBlend,
  ExcludeMaskBlend
]

for blend in maskBlends:
  let
    image = newImage(background.width, background.height)
    sub = newImage(background.width, background.height)

  sub.draw(background)
  sub.draw(masks, blendMode = blend)

  image.draw(checkers)
  image.draw(sub)

  image.writeFile("images/blend" & $blend & ".png")
