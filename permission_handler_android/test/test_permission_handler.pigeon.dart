// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:permission_handler_android/src/permission_handler.pigeon.dart';

/// Host API for `ActivityCompat`.
///
/// This class may handle instantiating and adding native object instances that
/// are attached to a Dart instance or handle method calls on the associated
/// native class or an instance of the class.
///
/// See https://developer.android.com/reference/androidx/core/app/ActivityCompat.
abstract class ActivityCompatTestHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  /// Gets whether you should show UI with rationale before requesting a permission.
  bool shouldShowRequestPermissionRationale(
      String activityInstanceId, String permission);

  static void setup(ActivityCompatTestHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.permission_handler_android.ActivityCompatHostApi.shouldShowRequestPermissionRationale',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityCompatHostApi.shouldShowRequestPermissionRationale was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_activityInstanceId = (args[0] as String?);
          assert(arg_activityInstanceId != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityCompatHostApi.shouldShowRequestPermissionRationale was null, expected non-null String.');
          final String? arg_permission = (args[1] as String?);
          assert(arg_permission != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityCompatHostApi.shouldShowRequestPermissionRationale was null, expected non-null String.');
          final bool output = api.shouldShowRequestPermissionRationale(
              arg_activityInstanceId!, arg_permission!);
          return <Object?>[output];
        });
      }
    }
  }
}