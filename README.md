# 🏕️ Flutter Summer Camp — Theme 3 Solutions (State Management) 🔑

Reference solutions for **Theme 3 — State Management with Riverpod** (days 15–21) of the Flutter Summer Camp.

> ⚠️ **Spoilers ahead.** These are worked answer keys. Try each exercise yourself first — peek here
> only when you're stuck or want to compare approaches.

Each `solutions/day_XX/` is a standalone Flutter project (one reference implementation per day).

## Running a solution

```bash
mise install                 # one-time: pins Flutter 3.41.1 (see mise.toml)
cd solutions/day_16
flutter create .             # one-time: regenerates the platform folders
flutter pub get
# most days here use code generation (Riverpod / Freezed):
dart run build_runner build --delete-conflicting-outputs
flutter run                  # or: flutter run -d chrome
```

## What each day demonstrates

| Day | Adventure | Focus |
|-----|-----------|-------|
| 15 | Intro Riverpod | `ProviderScope`, `ConsumerWidget`, hand-written `Notifier` |
| 16 | Riverpod Codegen | `@riverpod`, `build_runner` |
| 17 | Notifier State | `@riverpod class`, mutable state |
| 18 | Freezed Models | `@freezed`, `copyWith`, unions |
| 19 | Async State | `Future` providers, `AsyncValue.when` |
| 20 | Reactivity Rules | `watch`/`read`/`listen`, `.select()` |
| 21 | Provider Composition 🎒 | `family`, dependencies, invalidation |

> `day_15` hand-writes a `Notifier`/`NotifierProvider` to show the mechanics; `day_16`+ switch to
> `@riverpod` codegen (generated `*.g.dart` / `*.freezed.dart` are committed so they run on clone).
> These follow the same `analysis_options.yaml` and dependency pins (Riverpod 3, Freezed 3) as the
> real `flutter-front` project.
