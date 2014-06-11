/*
 * Timing functions for SKTEffects. Based on Robert Penner's easing equations
 * http://robertpenner.com/easing/ and https://github.com/warrenm/AHEasing
 *
 * Copyright (c) 2013-2014 Razeware LLC
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

func SKTTimingFunctionLinear(t: Float) -> Float {
  return t
}

func SKTTimingFunctionQuadraticEaseIn(t: Float) -> Float {
  return t * t
}

func SKTTimingFunctionQuadraticEaseOut(t: Float) -> Float {
  return t * (2.0 - t)
}

func SKTTimingFunctionQuadraticEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    return 2.0 * t * t
  } else {
    let f = t - 1.0
    return 1.0 - 2.0 * f * f
  }
}

func SKTTimingFunctionCubicEaseIn(t: Float) -> Float {
  return t * t * t
}

func SKTTimingFunctionCubicEaseOut(t: Float) -> Float {
  let f = t - 1.0
  return 1.0 + f * f * f
}

func SKTTimingFunctionCubicEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    return 4.0 * t * t * t
  } else {
    let f = t - 1.0
    return 1.0 + 4.0 * f * f * f
  }
}

func SKTTimingFunctionQuarticEaseIn(t: Float) -> Float {
  return t * t * t * t
}

func SKTTimingFunctionQuarticEaseOut(t: Float) -> Float {
  let f = t - 1.0
  return 1.0 - f * f * f * f
}

func SKTTimingFunctionQuarticEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    return 8.0 * t * t * t * t
  } else {
    let f = t - 1.0
    return 1.0 - 8.0 * f * f * f * f
  }
}

func SKTTimingFunctionQuinticEaseIn(t: Float) -> Float {
  return t * t * t * t * t
}

func SKTTimingFunctionQuinticEaseOut(t: Float) -> Float {
  let f = t - 1.0
  return 1.0 + f * f * f * f * f
}

func SKTTimingFunctionQuinticEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    return 16.0 * t * t * t * t * t
  } else {
    let f = t - 1.0
    return 1.0 + 16.0 * f * f * f * f * f
  }
}

func SKTTimingFunctionSineEaseIn(t: Float) -> Float {
  return sinf((t - 1.0) * π/2) + 1.0
}

func SKTTimingFunctionSineEaseOut(t: Float) -> Float {
  return sinf(t * π/2)
}

func SKTTimingFunctionSineEaseInOut(t: Float) -> Float {
  return 0.5 * (1.0 - cosf(t * π))
}

func SKTTimingFunctionCircularEaseIn(t: Float) -> Float {
  return 1.0 - sqrtf(1.0 - t * t)
}

func SKTTimingFunctionCircularEaseOut(t: Float) -> Float {
  return sqrtf((2.0 - t) * t)
}

func SKTTimingFunctionCircularEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    return 0.5 * (1.0 - sqrtf(1.0 - 4.0 * t * t))
  } else {
    return 0.5 * sqrtf(-4.0 * t * t + 8.0 * t - 3.0) + 0.5
  }
}

func SKTTimingFunctionExponentialEaseIn(t: Float) -> Float {
  return (t == 0.0) ? t : powf(2.0, 10.0 * (t - 1.0))
}

func SKTTimingFunctionExponentialEaseOut(t: Float) -> Float {
  return (t == 1.0) ? t : 1.0 - powf(2.0, -10.0 * t)
}

func SKTTimingFunctionExponentialEaseInOut(t: Float) -> Float {
  if t == 0.0 || t == 1.0 {
    return t
  } else if t < 0.5 {
    return 0.5 * powf(2.0, 20.0 * t - 10.0)
  } else {
    return 1.0 - 0.5 * powf(2.0, -20.0 * t + 10.0)
  }
}

func SKTTimingFunctionElasticEaseIn(t: Float) -> Float {
  return sinf(13.0 * π/2 * t) * powf(2.0, 10.0 * (t - 1.0))
}

func SKTTimingFunctionElasticEaseOut(t: Float) -> Float {
  return sinf(-13.0 * π/2 * (t + 1.0)) * powf(2.0, -10.0 * t) + 1.0
}

func SKTTimingFunctionElasticEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    return 0.5 * sinf(13.0 * π * t) * powf(2.0, 20.0 * t - 10.0)
  } else {
    return 0.5 * sinf(-13.0 * π * t) * powf(2.0, -20.0 * t + 10.0) + 1.0
  }
}

func SKTTimingFunctionBackEaseIn(t: Float) -> Float {
  let s: Float = 1.70158
  return ((s + 1.0) * t - s) * t * t
}

func SKTTimingFunctionBackEaseOut(t: Float) -> Float {
  let s: Float = 1.70158
  let f = 1.0 - t
  return 1.0 - ((s + 1.0) * f - s) * f * f
}

func SKTTimingFunctionBackEaseInOut(t: Float) -> Float {
  let s: Float = 1.70158
  if t < 0.5 {
    let f = 2.0 * t
    return 0.5 * ((s + 1.0) * f - s) * f * f
  } else {
    let f = 2.0 * (1.0 - t)
    return 1.0 - 0.5 * ((s + 1.0) * f - s) * f * f
  }
}

func SKTTimingFunctionExtremeBackEaseIn(t: Float) -> Float {
  return (t * t - sinf(t * π)) * t
}

func SKTTimingFunctionExtremeBackEaseOut(t: Float) -> Float {
  let f = 1.0 - t
  return 1.0 - (f * f - sinf(f * π)) * f
}

func SKTTimingFunctionExtremeBackEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    let f = 2.0 * t
    return 0.5 * (f * f - sinf(f * π)) * f
  } else {
    let f = 2.0 * (1.0 - t)
    return 1.0 - 0.5 * (f * f - sinf(f * π)) * f
  }
}

func SKTTimingFunctionBounceEaseIn(t: Float) -> Float {
  return 1.0 - SKTTimingFunctionBounceEaseOut(1.0 - t)
}

func SKTTimingFunctionBounceEaseOut(t: Float) -> Float {
  if t < 1.0 / 2.75 {
    return 7.5625 * t * t
  } else if t < 2.0 / 2.75 {
    let f = t - 1.5 / 2.75
    return 7.5625 * f * f + 0.75
  } else if t < 2.5 / 2.75 {
    let f = t - 2.25 / 2.75
    return 7.5625 * f * f + 0.9375
  } else {
    let f = t - 2.625 / 2.75
    return 7.5625 * f * f + 0.984375
  }
}

func SKTTimingFunctionBounceEaseInOut(t: Float) -> Float {
  if t < 0.5 {
    return 0.5 * SKTTimingFunctionBounceEaseIn(t * 2.0)
  } else {
    return 0.5 * SKTTimingFunctionBounceEaseOut(t * 2.0 - 1.0) + 0.5
  }
}

func SKTTimingFunctionSmoothstep(t: Float) -> Float {
  return t * t * (3 - 2 * t)
}

func SKTCreateShakeFunction(oscillations: Int) -> (Float) -> Float {
  return {t in -powf(2.0, -10.0 * t) * sinf(t * π * Float(oscillations) * 2.0) + 1.0}
}
