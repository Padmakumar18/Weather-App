import 'dart:ui';
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
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "300°C",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Icon(Icons.cloud, size: 40),
                          SizedBox(height: 10),
                          Text("Rain", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // const Placeholder(fallbackHeight: 250),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Waether Forecast",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                HourlyForeCastItem(),
                HourlyForeCastItem(),
                HourlyForeCastItem(),
                HourlyForeCastItem(),
              ],
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Waether Forecast",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const Placeholder(fallbackHeight: 100),
          ],
        ),
      ),
    );
  }
}

class HourlyForeCastItem extends StatelessWidget {
  const HourlyForeCastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        child: Card(
          elevation: 6,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                const Text(
                  "03 : 03",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.cloud, size: 25),
                const SizedBox(height: 10),
                const Text("303.32"),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
