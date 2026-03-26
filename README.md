# 📱 Flutter LTE Network Mode Switcher

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter) ![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart) ![Platform](https://img.shields.io/badge/Platform-Android-3DDC84?logo=android) ![License](https://img.shields.io/badge/License-MIT-green)

A Flutter Android application that lets users **switch their device network mode** between WiFi, Mobile Data, and LTE preferred — without requiring root access. Built with platform channels and the `connectivity_plus` package.

---

## ✨ Features

- 🔁 Toggle between **WiFi**, **Mobile Data**, and **LTE/4G preferred** modes
- 📡 Real-time network status monitoring via `connectivity_plus`
- 🔧 Native Android integration using Flutter **Platform Channels**
- 🚫 No root access required
- 🎨 Clean Material 3 UI with status indicators
- ⚡ Fast and lightweight — single-screen app

---

## 📸 Screenshots

> _Add screenshots here after building the APK_

| Home Screen | Network Switched | Status Indicator |
|-------------|-----------------|------------------|
| ![home](docs/home.png) | ![switched](docs/switched.png) | ![status](docs/status.png) |

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| Flutter 3.x | Cross-platform UI framework |
| Dart 3.x | Programming language |
| `connectivity_plus` | Network state monitoring |
| Platform Channels | Native Android API bridge |
| Android ConnectivityManager | Network mode switching |

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `>=3.0.0`
- Android SDK (API 21+)
- An Android device or emulator

### Installation

```bash
# Clone the repository
git clone https://github.com/cre8vdj/cre8v-flutter-lte-switch.git
cd cre8v-flutter-lte-switch

# Install dependencies
flutter pub get

# Run on connected Android device
flutter run
```

### Build APK

```bash
flutter build apk --release
```

---

## 📁 Project Structure

```
cre8v-flutter-lte-switch/
├── lib/
│   └── main.dart          # Main app UI + platform channel logic
├── android/
│   └── app/src/main/
│       └── MainActivity.kt  # Native Android method channel handler
├── pubspec.yaml            # Dependencies
└── README.md
```

---

## 🔌 How It Works

1. The Flutter UI calls a **MethodChannel** (`com.cre8v/network`) with the desired mode
2. The native `MainActivity.kt` receives the call and uses Android's `ConnectivityManager` to apply the network preference
3. `connectivity_plus` streams real-time connectivity updates back to the UI

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  connectivity_plus: ^5.0.0
```

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first.

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

> Built by [Ahmed El Amine D.](https://www.upwork.com/freelancers/~01fe4edd532e7be28f) · Flutter & Mobile Developer
