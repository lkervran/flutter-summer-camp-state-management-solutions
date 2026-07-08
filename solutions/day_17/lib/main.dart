import 'package:day_17/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: TodoApp()));

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoScreen(),
  );
}

class TodoScreen extends ConsumerStatefulWidget {
  const TodoScreen({super.key});

  @override
  ConsumerState<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends ConsumerState<TodoScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _add() {
    final label = _controller.text.trim();
    if (label.isEmpty) return;
    ref.read(taskListProvider.notifier).add(label);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final tasks = ref.watch(taskListProvider);
    final notifier = ref.read(taskListProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('🔔 Camp To-Do')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: 'New task'),
                    onSubmitted: (_) => _add(),
                  ),
                ),
                IconButton(onPressed: _add, icon: const Icon(Icons.add)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return CheckboxListTile(
                  value: task.done,
                  onChanged: (_) => notifier.toggle(index),
                  title: Text(task.label),
                  secondary: IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () => notifier.remove(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
