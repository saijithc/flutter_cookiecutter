# Generate code (e.g., for JSON serialization, Hive type adapters, etc.)
flutter pub run build_runner build --delete-conflicting-outputs

# iOS build commands
cd ios
pod deintegrate --verbose
pod install --verbose
cd ..
flutter clean
flutter build ios --release --verbose

# Android build commands
flutter clean && flutter build apk --release --verbose
flutter clean && flutter build appbundle --release --verbose
