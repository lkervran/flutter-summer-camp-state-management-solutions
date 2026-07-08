import 'package:day_16/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: CodegenApp()));

class CodegenApp extends StatelessWidget {
  const CodegenApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CodegenScreen(),
  );
}

class CodegenScreen extends ConsumerWidget {
  const CodegenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final motto = ref.watch(campMottoProvider);
    final shouted = ref.watch(shoutedMottoProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('⚙️ Codegen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(motto, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 12),
            Text(shouted, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
