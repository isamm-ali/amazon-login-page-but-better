# Amazon Sign In / Sign Up Redesign

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=apple&logoColor=white)

A Flutter-only redesign of Amazon's Sign In and Sign Up screens, focused on recreating the look, feel, and flow of the original UI.

## Overview

This project rebuilds Amazon's authentication flow as a clean, modern Flutter UI — from the splash/get-started screen through sign in and sign up, including a multi-language selector. It's a frontend-only build made for UI practice, with no backend or real authentication behind it.

## Features

- Splash / Get Started screen with the Amazon logo and a call-to-action button
- Sign In screen with email and password fields
- Sign Up screen with full name, email, and password fields
- One toggle to switch between Sign In and Sign Up without changing screens
- Language selector (English, Hindi, Bengali, Tamil)
- Responsive Flutter layout with reusable widgets

## Tech Stack

- Flutter
- Dart

> Frontend/UI only — no backend or authentication is implemented.

## Project Structure

```
lib/
├── main.dart          # App entry point
├── home.dart          # Home wrapper widget
├── getstarted.dart    # Splash / get started screen
└── loginoptions.dart  # Sign in / sign up screen with language selector
```

## Getting Started

### Prerequisites

- Flutter SDK (^3.9.2)
- An Android/iOS emulator or a physical device

### Installation

```bash
git clone https://github.com/isamm-ali/amazon-login-page-but-better.git
cd amazon-login-page-but-better
flutter pub get
flutter run
```

## Note

This project was built for UI practice and learning Flutter. It is not affiliated with, endorsed by, or associated with Amazon in any way.
