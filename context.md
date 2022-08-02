
## JS-Canvas and Cairo inspired API

Are you familia with [JS canvas](https://developer.mozilla.org/en-US/images/Web/API/Canvas_API)? Or maybe [Cairo](https://www.cairographics.org/documentation/)? Do you have some quick code to port? This API is for you. Simply create a context object and apply different operations to it.

First create context with the canvas size you want:

```nim
let ctx = newContext(newImage(160, 160))
```

Then you can fill the entire canvas with a solid color:

```nim
ctx.beginPath()
ctx.fillStyle = "#bdc3c7"
ctx.fillRect(0, 0, ctx.image.width.float32, ctx.image.height.float32)
```

Then you can draw a shape:

```nim
ctx.beginPath()
ctx.fillStyle = "#2980b9"
ctx.moveTo(20, 20)
ctx.lineTo(140, 20)
ctx.lineTo(80, 140)
ctx.closePath()
ctx.fill()
```

We can also stroke the shape (that is still in the buffer):

```nim
ctx.strokeStyle = "#FFFFFF"
ctx.lineWidth = 8
ctx.stroke()
```


After that you can simply save it to a file:

```nim
ctx.image.writeFile("images/context.png")
```

![example output](images/context.png)

> Note: Context api is there for compatibility and there is a more advanced api that can do even more operations.

The rest of the tutorial will not use the `Context API` but use the normal pixie API.

Here is how you would draw the same thing in normal pixie:

```nim
let image1 = newImage(160, 160)
image1.fill("#bdc3c7")
image1.fillPath("M 20 20 L 140 20 L 80 140 z", "#2980b9")
image1.strokePath("M 20 20 L 140 20 L 80 140 z", "#FFFFFF", strokeWidth = 8)
image1.writeFile("images/notContext.png")
```

And see its the same thing:

![example output](images/notContext.png)

Its up to you what you to choose: an API you might already know or some thing more concise.
