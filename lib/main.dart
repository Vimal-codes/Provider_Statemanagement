// Import necessary packages for Flutter UI and provider state management.
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counterprovider.dart';
import 'home.dart';

// Entry point of the application.
void main() {
  // Wrap the app with MultiProvider to manage multiple providers.
  // MultiProvider is used to manage multiple state providers within the app.
  runApp(
    MultiProvider(
      providers: [
        // Register the CounterProvider using ChangeNotifierProvider.
        // ChangeNotifierProvider listens for state changes in CounterProvider.
        ChangeNotifierProvider<CounterProvider>(create: (_) => CounterProvider()),
        // If you have additional providers, you can add them here as needed.
        // For example:
        // Provider<AnotherProvider>(create: (_) => AnotherProvider()),
      ],
      child: MyApp(),
    ),
  );
}

// Define the main app widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root of your application, defining the home screen.
    return MaterialApp(
      home: MyHome(), // Set the initial route to MyHome widget.
    );
  }
}

