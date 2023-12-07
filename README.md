# weather_app

A new Simple Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

Here are a few resources to get you started if this is your first Flutter project the Weather App Flutter project! This application utilizes Flutter to create a weather application that fetches data from the OpenWeatherMap API to provide real-time weather information. Below, you'll find important information about the project.

## Dependencies

This project relies on the following dependencies:

-cupertino_icons: ^1.0.2: Provides Cupertino (iOS-style) icons for the app.
-flutter_svg: ^2.0.9: Allows the rendering of SVG files for scalable vector graphics.
-geolocator: ^10.1.0: Facilitates geolocation capabilities to determine the user's location.
-weather: ^3.1.1: Interacts with the OpenWeatherMap API to retrieve weather data.
-intl: ^0.18.1: Internationalization support for formatting and parsing dates and numbers.
-flutter_bloc: ^8.1.3: Implements the BLoC (Business Logic Component) architecture for state management.
-equatable: ^2.0.5: Simplifies equality comparisons for complex objects.

## OpenWeatherMap API Key

To run this app, you need to obtain an API key from OpenWeatherMap. Follow their instructions to get a free API key, and then replace the placeholder in the app with your key.

## Project Structure

The code is structured into three layers:

1-Data Layer: Manages data retrieval from external sources such as the OpenWeatherMap API.
2-Domain Layer: Contains business logic and entities representing the core functionality of the app.
3-UI Layer: Handles the user interface components and presentation.

## Features
-Clean and responsive UI design.
-Displays the current temperature, weather description, and an icon representing the current weather condition.
-Utilizes the BLoC pattern for effective state management.
-Implements error handling for network requests to ensure a smooth user experience.


- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
