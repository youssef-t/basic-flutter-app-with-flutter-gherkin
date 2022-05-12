## A basic flutter application with flutter_gherkin

A project to demonstrate a bug when using the Json Reporter with a data table containing null values.

### Commands to run the project
```
flutter pub get

# generate the test suite
flutter pub run build_runner build --delete-conflicting-outputs

# run the tests
flutter drive --driver=test_driver/integration_test_driver.dart --target=integration_test/gherkin_suite_test.dart
```