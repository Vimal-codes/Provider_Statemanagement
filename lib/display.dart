// Import necessary packages.
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counterprovider.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Display the count using context.watch to update in real-time.
        child: Text("${context.watch<CounterProvider>().count}"),
      ),
    );
  }
}
