import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import 'package:basic_app_json_reporter_with_data_table/main.dart' as app;

import 'given_steps_definitions.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite(
  executionOrder: ExecutionOrder.random,
  featurePaths: <String>['integration_test/**.feature'],
)
void main() {
  executeTestSuite(
    gherkinTestConfiguration,
    appInitializationFn,
  );
}

FlutterTestConfiguration gherkinTestConfiguration = FlutterTestConfiguration()
  ..stepDefinitions = [
    iSeeTheFollowingUsersStepDefinition(),
  ]
  ..hooks = <Hook>[
    AttachScreenshotOnFailedStepHook(),
  ]
  ..reporters = [
    StdoutReporter(MessageLevel.error)
      ..setWriteLineFn(print)
      ..setWriteFn(print),
    ProgressReporter()
      ..setWriteLineFn(print)
      ..setWriteFn(print),
    TestRunSummaryReporter()
      ..setWriteLineFn(print)
      ..setWriteFn(print),
    JsonReporter(
      writeReport: (_, __) => Future<void>.value(),
    ),
  ]
  ..defaultTimeout = const Duration(minutes: 4);

Future<void> Function(World) appInitializationFn = (World world) async {
  app.main();
};

