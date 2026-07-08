// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cabinCampers)
final cabinCampersProvider = CabinCampersFamily._();

final class CabinCampersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  CabinCampersProvider._({
    required CabinCampersFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'cabinCampersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cabinCampersHash();

  @override
  String toString() {
    return r'cabinCampersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    final argument = this.argument as String;
    return cabinCampers(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CabinCampersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cabinCampersHash() => r'6f88a750658d31e4cce8ea87c5cc6553bcfa3b3d';

final class CabinCampersFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<String>>, String> {
  CabinCampersFamily._()
    : super(
        retry: null,
        name: r'cabinCampersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CabinCampersProvider call(String cabinId) =>
      CabinCampersProvider._(argument: cabinId, from: this);

  @override
  String toString() => r'cabinCampersProvider';
}

@ProviderFor(cabinHeadcount)
final cabinHeadcountProvider = CabinHeadcountFamily._();

final class CabinHeadcountProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  CabinHeadcountProvider._({
    required CabinHeadcountFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'cabinHeadcountProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$cabinHeadcountHash();

  @override
  String toString() {
    return r'cabinHeadcountProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    final argument = this.argument as String;
    return cabinHeadcount(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CabinHeadcountProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cabinHeadcountHash() => r'b8d5c4519d3cccc03756236e22ca6ae6c7a0ed45';

final class CabinHeadcountFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<int>, String> {
  CabinHeadcountFamily._()
    : super(
        retry: null,
        name: r'cabinHeadcountProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CabinHeadcountProvider call(String cabinId) =>
      CabinHeadcountProvider._(argument: cabinId, from: this);

  @override
  String toString() => r'cabinHeadcountProvider';
}
