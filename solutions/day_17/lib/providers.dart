import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

// A plain immutable task. (Day 18 shows how Freezed removes this boilerplate.)
class Task {
  const Task({required this.done, required this.label});

  final bool done;
  final String label;

  Task copyWith({bool? done}) => Task(done: done ?? this.done, label: label);
}

@riverpod
class TaskList extends _$TaskList {
  @override
  List<Task> build() => const [
    Task(done: false, label: 'Pitch the tent'),
    Task(done: false, label: 'Gather firewood'),
  ];

  void add(String label) => state = [...state, Task(done: false, label: label)];

  void remove(int index) => state = [...state]..removeAt(index);

  void toggle(int index) => state = [
    for (var i = 0; i < state.length; i++)
      if (i == index) state[i].copyWith(done: !state[i].done) else state[i],
  ];
}
