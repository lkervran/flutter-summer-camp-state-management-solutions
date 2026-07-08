import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

// A generated function provider.
@riverpod
String campMotto(Ref ref) => 'Adventure awaits';

// A provider that derives from another — watch one, transform it.
@riverpod
String shoutedMotto(Ref ref) => '${ref.watch(campMottoProvider).toUpperCase()}!';
