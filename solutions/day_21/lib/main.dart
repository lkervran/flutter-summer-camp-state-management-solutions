import 'package:day_21/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: CompositionApp()));

class CompositionApp extends StatelessWidget {
  const CompositionApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CompositionScreen(),
  );
}

class CompositionScreen extends ConsumerWidget {
  const CompositionScreen({super.key});

  static const _cabinId = 'otter';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campers = ref.watch(cabinCampersProvider(_cabinId));
    final headcount = ref.watch(cabinHeadcountProvider(_cabinId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('🎒 Cabin Composition'),
        actions: [
          IconButton(
            // Invalidating the family provider refreshes the dependent one too.
            onPressed: () => ref.invalidate(cabinCampersProvider(_cabinId)),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: campers.when(
          data: (list) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Headcount: ${headcount.value ?? '…'}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              for (final camper in list) Text(camper),
            ],
          ),
          error: (error, _) => Text('$error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
