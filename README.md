# MonoList

<div style="display: flex;" align="center">

</div>

### A schdeduling app that allows users to create and manage tasks. Users can create tasks, set due dates, and mark tasks as complete. Users can also view their tasks in a calendar view.

## Description

MonoList is a scheduling app built for IOS 15+ that allows users to create and manage tasks. Users can create tasks, set due dates, and mark tasks as complete. Users can also view their tasks in a calendar view. MonoList was built using Swift and SwiftUI. The app makes uses Firebase/Firestore for user authentication and collection-based data storage in a non-relational database. The app also makes use of SFSymbols for its collection of icons and images. This is a prototype and so the app is not yet available on the App Store.

<p align="center">
  <img src="./Resources/simulator.gif" style="height: 500px; width: auto;">
  
</p>

---

| Table of Contents               |
| ------------------------------- |
| [Architecture](#Architecture)   |
| [Functionality](#Functionality) |
| [Tools Used](#Technology)       |
| [License](#License)             |
| [Contributors](#Contributors)   |
| [Links](#Links)                 |

---

## Architecture

MonoList is built using the MVVM (Model View ViewModel) architecture.
The app is split into three main sections with several components: Views, ViewModels, and Models. The Views are responsible for displaying the UI and handling user input whilst the ViewModels are responsible for handling the business logic and intergration with Firebase and with the Models. The Models are responsible for storing the data and communicating with the ViewModels.

'''plaintext

+------------------------+ +--------------------------+
| Views | | ViewModel |
| | | |
| +------------------+ | | +---------------------+ |
| | UI/Layout | | | | Business Logic | |
| | | | | | | |
| | IBOutlets | | <-----> | | Data Management | |
| | User Interactions| | | | | |
| +------------------+ | | +---------------------+ |
+------------------------+ +--------------------------+
| ^
| |
v |
+------------------------+ +--------------------------+
| Model | | Services |
| | | |
| +------------------+ | | +---------------------+ |
| | Data | | | | Network Calls | |
| | | | | | Database Access | |
| | Data Processing | | | | API Integration | |
| +------------------+ | | +---------------------+ |
+------------------------+ +--------------------------+

'''

## Functionality

```swift

```

text goes here

```swift

```

text goes here

```swift


```

Text

## Technology

-   Swift/SwiftUI
-   Firebase/Firestore
-   Xcode IDE
-   SFSymbols

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Future Developments

-

## Contributions

This was a solo project :)

## Links

#### Github Repo

https://github.com/A11AN0/MonoList

#### Thanks for reading!-Allan :)
