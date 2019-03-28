import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skd_make_review/skd_make_review.dart';

void main() {
  const MethodChannel channel = MethodChannel('skd_make_review');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SkdMakeReview.platformVersion, '42');
  });
}
