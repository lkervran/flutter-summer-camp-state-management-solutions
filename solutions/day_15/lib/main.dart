import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: RiverpodCounterApp()));

// Day 15 is the intro, so the provider is hand-written. From Day 16 we generate
// these with @riverpod instead.
class CounterNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void decrement() {
    if (state > 0) state--;
  }

  void increment() => state++;
}

final counterProvider = NotifierProvider<CounterNotifier, int>(CounterNotifier.new);

class RiverpodCounterApp extends StatelessWidget {
  const RiverpodCounterApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CounterScreen(),
  );
}

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    final notifier = ref.read(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text("🍫 S'mores (Riverpod)")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count', style: const TextStyle(fontSize: 72, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: notifier.decrement,
                  icon: const Icon(Icons.remove),
                  label: const Text('Eat one'),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: notifier.increment,
                  icon: const Icon(Icons.add),
                  label: const Text('Toast one'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
