import 'package:basic_app_json_reporter_with_data_table/main.dart' as app;
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

import 'given_steps_definitions.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite(
  useAbsolutePaths: false,
  featurePaths: ['integration_test/**.feature'],
  executionOrder: ExecutionOrder.random,
  featureDefaultLanguage: 'en',
)
void main() {
  executeTestSuite(
    appMainFunction: appInitializationFn,
    configuration: gherkinTestConfiguration,
  );
}

FlutterTestConfiguration gherkinTestConfiguration = FlutterTestConfiguration(
  stepDefinitions: [
    iSeeTheFollowingUsersStepDefinition(),
  ],
  tagExpression: '',
  hooks: [
    AttachScreenshotOnFailedStepHook(),
  ],
  reporters: [
    StdoutReporter(MessageLevel.error)
      ..setWriteLineFn(print)
      ..setWriteFn(print),
    ProgressReporter()
      ..setWriteLineFn(print)
      ..setWriteFn(print),
    TestRunSummaryReporter()
      ..setWriteLineFn(print)
      ..setWriteFn(print),
  ],
);

Future<void> appInitializationFn(World world) async {
  app.main();
}
