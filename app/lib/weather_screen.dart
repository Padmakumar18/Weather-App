import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("Refresh tapped");
            },
            icon: const Icon(Icons.refresh),
            // child: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Text(
                      "300°C",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.cloud, size: 40),
                  ],
                ),
              ),
            ),
            // const Placeholder(fallbackHeight: 250),
            const SizedBox(height: 20),
            const Placeholder(fallbackHeight: 100),
            const SizedBox(height: 20),
            const Placeholder(fallbackHeight: 100),
          ],
        ),
      ),
    );
  }
}
