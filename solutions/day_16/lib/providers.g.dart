// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(campMotto)
final campMottoProvider = CampMottoProvider._();

final class CampMottoProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  CampMottoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'campMottoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$campMottoHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return campMotto(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$campMottoHash() => r'6d6b939baa77f6d4b355f12c942814a91cf8e137';

@ProviderFor(shoutedMotto)
final shoutedMottoProvider = ShoutedMottoProvider._();

final class ShoutedMottoProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  ShoutedMottoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shoutedMottoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shoutedMottoHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return shoutedMotto(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$shoutedMottoHash() => r'c00becc255ba54c454e9b813cd12f1a32e36978e';
