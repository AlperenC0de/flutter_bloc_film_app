# Flutter BLoC Film App

This is a simple Flutter application that demonstrates the BLoC (Business Logic Component) pattern. The app displays a list of films and allows users to view film details or add films to the cart.

## Features

- **Film Listing**: Displays a list of films with their names, images, and prices.
- **Film Details**: Navigate to a detailed page for each film.
- **Add to Cart**: Ability to simulate adding films to the cart.
- **BLoC Pattern**: Uses Flutter BLoC for state management.
- **Repository Pattern**: Data is handled through a repository layer.

## Project Structure

lib/
 ├── data/
 │   ├── entity/
 │   │   └── films.dart
 │   └── repo/
 │       └── films_dao_repository.dart
 ├── ui/
 │   ├── cubit/
 │   │   └── mainPage_cubit.dart
 │   └── views/
 │       ├── detailPage.dart
 │       └── mainPage.dart
 └── main.dart

## Getting Started

1. Clone the repository:
   git clone https://github.com/your-username/flutter_bloc_film_app.git

2. Navigate to the project directory:
   cd flutter_bloc_film_app

3. Install dependencies:
   flutter pub get

4. Run the application:
   flutter run

> **Note**: Make sure you have an `images/` folder inside your assets and configure it properly in `pubspec.yaml` to load film images.

## Dependencies

- flutter_bloc
- bloc

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
