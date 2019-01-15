---
title: "Bilateral Filter"
date: 2019-01-14T09:24:28-05:00
description: ""
categories: ["Image Processing"]
featuredImage: "img/bilateral_example.png"
featuredImageDescription: ""
dropCap: false
displayInMenu: false
displayInList: true
draft: true
---
What is bilateral filtering, and why do I care?

Honestly, it was cross-stitching that got me interested. I got it in my head that if I thought about the problem a little bit, I could create a dope app for producing high-quality cross-stitch patterns from images. Tanya had showed me a few apps that did as much, like [Stitch Fiddle](https://www.stitchfiddle.com/en), but I was like, "pfft, nah...this ain't nothing."

Ideas were swirling in my head, and the first step was simply formulating the problem: what, specifically, are we doing when we produce a cross-stitch pattern from an image? There are only ~400 thread colors available to the cross-stitch enthusiast, and we need to represent the image using those colors.

I quickly learned that what I was wanted to do was called "image quantization." The idea is to select a palette of colors fewer in number than the those colors needed to flawlessly render the image. Then, you construct a map from your current pixels to their new colors in the palette. Typically, "quantized" image, which is represented using only colors from the palette, and the map are both chosen so as to minimize the difference between the quantized image and the original image. I guess, technically, you could choose any selection criterion for the palette and map--maybe you just want a groovy looking

<iframe src="https://drive.google.com/file/d/1hgp5gWK0R2wC5A1fc2rxIaxqmI-RqYpw/preview" width="100%" height="480"></iframe>

***
### Literature: <a name="literature"></a>
1. [Efficient, Edge-aware, Combined Color Quantization and Dithering](https://ieeexplore.ieee.org/document/7368936)  
2. [Bilateral Filtering for Gray and Color Images](https://ieeexplore.ieee.org/document/710815)  
3. [A Fast Approximation of the Bilateral Filter Using a Signal Processing Approach](https://people.csail.mit.edu/sparis/publi/2006/tr/Paris_06_Fast_Bilateral_Filter_MIT_TR_low-res.pdf)  
4. [Separable Bilateral Filtering for Fast Video Preprocessing](https://ieeexplore.ieee.org/document/1521458)  
