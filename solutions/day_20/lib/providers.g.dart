// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Camp)
final campProvider = CampProvider._();

final class CampProvider extends $NotifierProvider<Camp, CampState> {
  CampProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'campProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$campHash();

  @$internal
  @override
  Camp create() => Camp();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CampState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CampState>(value),
    );
  }
}

String _$campHash() => r'c7754a56a23488eedc2e3df39727e40611eddfe7';

abstract class _$Camp extends $Notifier<CampState> {
  CampState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CampState, CampState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CampState, CampState>,
              CampState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
