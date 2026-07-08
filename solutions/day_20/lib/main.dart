import 'package:day_20/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: ReactivityApp()));

class ReactivityApp extends StatelessWidget {
  const ReactivityApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ReactivityScreen(),
  );
}

class ReactivityScreen extends ConsumerWidget {
  const ReactivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Side effect via ref.listen — fires only when the storm flag flips.
    ref.listen(campProvider.select((state) => state.stormIncoming), (previous, next) {
      if (next) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(content: Text('⛈️ Storm incoming — take cover!')));
      }
    });
    final notifier = ref.read(campProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('🎛️ Reactivity')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const _CamperCount(),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: notifier.addCamper, child: const Text('Add a camper')),
            ElevatedButton(onPressed: notifier.toggleStorm, child: const Text('Toggle storm')),
          ],
        ),
      ),
    );
  }
}

// Rebuilds ONLY when camperCount changes, thanks to .select().
class _CamperCount extends ConsumerWidget {
  const _CamperCount();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(campProvider.select((state) => state.camperCount));
    return Text('$count campers', style: const TextStyle(fontSize: 32));
  }
}
