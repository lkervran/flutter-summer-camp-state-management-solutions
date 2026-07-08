import 'package:day_18/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: FreezedApp()));

class FreezedApp extends StatelessWidget {
  const FreezedApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FreezedScreen(),
  );
}

class FreezedScreen extends ConsumerWidget {
  const FreezedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(forecastProvider);
    final notifier = ref.read(forecastProvider.notifier);
    // Exhaustive switch over the sealed union — the compiler checks every case.
    final label = switch (weather) {
      Sunny(:final temperature) => '☀️ Sunny, $temperature°C',
      Rainy() => '🌧️ Rainy',
      Unknown() => '🤷 Unknown',
    };
    return Scaffold(
      appBar: AppBar(title: const Text('🧊 Freezed Forecast')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: notifier.sunny, child: const Text('Make it sunny')),
                const SizedBox(width: 16),
                ElevatedButton(onPressed: notifier.rainy, child: const Text('Make it rain')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
