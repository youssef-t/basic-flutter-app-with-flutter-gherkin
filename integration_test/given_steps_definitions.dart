import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/src/gherkin/models/table.dart';
import 'package:gherkin/src/gherkin/steps/given.dart';
import 'package:gherkin/src/gherkin/steps/step_definition.dart';
import 'package:gherkin/src/gherkin/steps/step_definition_implementations.dart';

StepDefinitionGeneric<FlutterWidgetTesterWorld> iSeeTheFollowingUsersStepDefinition() =>
    given1<GherkinTable, FlutterWidgetTesterWorld>(
      r'I see the following users',
      (GherkinTable usersTable, StepContext<FlutterWidgetTesterWorld> context) async {
        for (var row in usersTable.rows) {
          // do something with row
          row.columns.forEach((columnValue) => print(columnValue));
        }
      },
    );
