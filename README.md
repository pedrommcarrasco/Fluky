![](https://github.com/pedrommcarrasco/Fluky/blob/master/Design/cover.png?raw=true)

> **Fluky** *(/ˈfluːki/)*, *adjective*
>
> "obtained or achieved more by chance than skill"

Make every loading screen different with Fluky, your random loading screen inspired by PlayStation.

[![CocoaPods](https://img.shields.io/cocoapods/v/Fluky.svg)](https://cocoapods.org/pods/Fluky)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![apm](https://img.shields.io/apm/l/vim-mode.svg)](https://github.com/pedrommcarrasco/Fluky/blob/master/LICENSE)

## Installation 📦

### Cocoapods

Fluky is available through [CocoaPods](https://cocoapods.org/pods/Fluky). To do so, add the following line to your PodFile:

```swift
pod 'Fluky'
```
And then run the following command in terminal:

```swift
pod install
```

### Carthage
Add this to your Cartfile:

```swift
github "pedrommcarrasco/Fluky"
```

And then run the following command in terminal:

```swift
carthage update
```

##  Styles 💅

| Single                                                       | Linear                                                       | Box                                                          |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![](https://github.com/pedrommcarrasco/Fluky/blob/master/Design/single.gif?raw=true) | ![](https://github.com/pedrommcarrasco/Fluky/blob/master/Design/linear.gif?raw=true) | ![](https://github.com/pedrommcarrasco/Fluky/blob/master/Design/box.gif?raw=true) |

* ☝️ *This background is not part of Fluky*

## Usage Example ⌨️

After installing Fluky, you should start by importing the framework:

```swift
import Fluky
```

Once imported, you can start using Fluky to create randomized icon based loading sceens. Bellow, you'll be able to see a working example. First, we start by creating a `FlukyView`:

```swift
let flukyView = Fluky.view(as: .single, with: images) // images -> array of icons you want to display
// size has a default parameter of 30.0
```

Once you apply your constraints, to start animating you just need to do:

```swift
flukyView.start()
```

In order to stop you just do:

```swift
flukyView.stop()
```

With the goal of being as customizable as possible, Fluky only creates a `FlukyView` responsible for managing the icons and its animations. With this in mind, it should be added to your view hierarchy where you can customize `backgroundColor`, add a `UILabel` & others.

## Sample Project  📲

There's a sample project in this repository called [Example](https://github.com/pedrommcarrasco/Fluky/tree/master/Example) with some examples.

## Support Fluky ❤️

Hello there 👋

I’m Pedro, a Portuguese iOS Engineer since February 2017. I’m an avid OSS enthusiast and contributor - help by sharing, learn by what’s shared.

I've built and open-sourced multiple frameworks and applications, including **[Brooklyn](https://github.com/pedrommcarrasco/Brooklyn)** and **[CocoaHub](https://cocoahub.app)**.

I'm also a conference and meetup organizer, being part of **[SwiftAveiro](https://swiftaveiro.xyz)** and **[CocoaHeads Porto](https://www.meetup.com/CocoaHeads-Porto/)**.

If you enjoy my work and would like to help me continue it, please consider:
* https://www.buymeacoffee.com/pedrommcarrasco
* https://www.paypal.me/pedrommcarrasco

## Contributing  🙌 

Feel free to contribute to this project by providing [ideas](https://github.com/pedrommcarrasco/Fluky/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc) or opening [pull requests](https://github.com/pedrommcarrasco/Fluky/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-desc).

## License ⛔

Fluky's available under the MIT license. See the [LICENSE](https://github.com/pedrommcarrasco/Fluky/blob/master/LICENSE) file for more information.
