import 'package:day_19/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: AsyncStateApp()));

class AsyncStateApp extends StatelessWidget {
  const AsyncStateApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AsyncStateScreen(),
  );
}

class AsyncStateScreen extends ConsumerWidget {
  const AsyncStateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supplies = ref.watch(suppliesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('⏳ Async Supplies'),
        actions: [
          IconButton(
            onPressed: () => ref.invalidate(suppliesProvider),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: supplies.when(
        data: (items) => ListView(
          children: [
            for (final item in items) ListTile(leading: const Icon(Icons.inventory_2), title: Text(item)),
          ],
        ),
        error: (error, _) => Center(child: Text('$error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
