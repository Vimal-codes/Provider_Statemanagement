// Import necessary Flutter package for ChangeNotifier class.
import 'package:flutter/cupertino.dart';

// Create the CounterProvider class.
class CounterProvider with ChangeNotifier {
  // Define the count variable that will be accessed in the app.
  int count = 0;

  // Method to increment the count and notify listeners of the change.
  void increment() {
    count++;
    notifyListeners(); // Notifies listeners about the state change.
  }
}
