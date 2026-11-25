# Verde — Static Flutter UI (Week 14)

**Student:** Amiel Confiado  
**Project:** Verde E-Wallet App (Static UI Implementation)

## Overview
This repository contains the Week 14 static Flutter UI implementation of **Verde**, built using `StatelessWidget`, a centralized `ThemeData` palette, reusable components, and responsive layout widgets (`Scaffold`, `SafeArea`, `SingleChildScrollView`, `Column`, `Row`, `Container`, `Card`, and `ListView` / `GridView`).

## Implemented Screens
1. **Login Screen (`lib/screens/verde_login_screen.dart`)** — Brand header with local leaf logo asset (`assets/images/verde_logo.png`), welcome typography, styled email and password input fields, primary sign-in button, and secondary navigation prompt.
2. **Home Dashboard Screen (`lib/screens/verde_home_screen.dart`)** — Personalized greeting header, e-wallet balance card, quick action buttons, and recent transaction/activity cards with consistent brand styling.

## How to Preview Both Screens
Because this submission focuses on static UI layout without multi-screen navigation logic, both screens are wired through `lib/main.dart`:

1. Open `lib/main.dart`.
2. By default, **`VerdeLoginScreen()`** is active:
   ```dart
   home: const VerdeLoginScreen(),
   // home: const VerdeHomeScreen(),
