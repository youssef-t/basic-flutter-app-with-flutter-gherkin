// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gherkin_suite_test.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner(
    TestConfiguration configuration,
    Future<void> Function(World) appMainFunction,
  ) : super(configuration, appMainFunction);

  @override
  void onRun() {
    testFeature0();
  }

  void testFeature0() {
    runFeature(
      'Data table with JsonReporter:',
      <String>[],
      () {
        runScenario(
          'Data table with JsonReporter',
          <String>[],
          (TestDependencies dependencies) async {
            await runStep(
              'Given I see the following users',
              <String>[],
              GherkinTable.fromJson(
                  '[{"name":"Mike","age":"20","country":"Spain"},{"name":"Robert","age":null,"country":"Italy"}]'),
              dependencies,
            );
          },
          onBefore: () async => onBeforeRunFeature(
            'Data table with JsonReporter',
            <String>[],
          ),
          onAfter: () async => onAfterRunFeature(
            'Data table with JsonReporter',
          ),
        );
      },
    );
  }
}

void executeTestSuite(
  TestConfiguration configuration,
  Future<void> Function(World) appMainFunction,
) {
  _CustomGherkinIntegrationTestRunner(configuration, appMainFunction).run();
}
