import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

// An async provider — its value is an AsyncValue the UI can switch over.
@riverpod
Future<List<String>> supplies(Ref ref) async {
  await Future<void>.delayed(const Duration(seconds: 1));
  return ['Marshmallows', 'Firewood', 'Lemonade', 'Bandages'];
}
