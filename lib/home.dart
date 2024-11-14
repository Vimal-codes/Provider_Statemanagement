import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counterprovider.dart';
import 'display.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    // Step 1: Access the CounterProvider instance to read or watch values.
    final provider = Provider.of<CounterProvider>(context); // Fetch instance of provider.

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the count value using context.watch for real-time updates.
            Text("${context.watch<CounterProvider>().count}"), //step 2 withiut creating obj
            // Alternatively, use provider instance (doesn't auto-update if count changes).
            Text("${provider.count}"), //(Step 1)
            // Navigation button to go to DisplayScreen.
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return DisplayScreen(); // Navigate to DisplayScreen.
                }));
              },
              child: Text("Next"), // Button label.
            ),
          ],
        ),
      ),
      // Floating action button to increment the count.
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increment(); // Increment count.
        },
        child: Text("ADD",style:TextStyle()), // Button label.
      ),
    );
  }
}
