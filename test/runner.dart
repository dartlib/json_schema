import 'package:test/test.dart';
import 'package:logging/logging.dart';
import 'test_invalid_schemas.dart' as test_invalid_schemas;
import 'test_validation.dart' as test_validation;

void testCore(Configuration config) {
  unittestConfiguration = config;
  main();
}

main() {
  Logger.root.level = Level.OFF;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  test_invalid_schemas.main();
  test_validation.main();
}

