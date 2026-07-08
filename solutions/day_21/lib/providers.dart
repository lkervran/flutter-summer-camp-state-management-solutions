import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

// A `family` provider — it takes a parameter beyond `ref`.
@riverpod
Future<List<String>> cabinCampers(Ref ref, String cabinId) async {
  await Future<void>.delayed(const Duration(milliseconds: 500));
  return ['Robin', 'Sam', 'Alex', 'Camper of $cabinId'];
}

// A provider that DEPENDS on the family provider above.
@riverpod
Future<int> cabinHeadcount(Ref ref, String cabinId) async {
  final campers = await ref.watch(cabinCampersProvider(cabinId).future);
  return campers.length;
}
