// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

/// Host API for `ActivityCompat`.
///
/// This class may handle instantiating and adding native object instances that
/// are attached to a Dart instance or handle method calls on the associated
/// native class or an instance of the class.
///
/// See https://developer.android.com/reference/androidx/core/app/ActivityCompat.
class ActivityCompatHostApi {
  /// Constructor for [ActivityCompatHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  ActivityCompatHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = StandardMessageCodec();

  /// Gets whether you should show UI with rationale before requesting a permission.
  Future<bool> shouldShowRequestPermissionRationale(
      String arg_activityInstanceId, String arg_permission) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.permission_handler_android.ActivityCompatHostApi.shouldShowRequestPermissionRationale',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_activityInstanceId, arg_permission])
            as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }
}

/// Flutter API for `Activity`.
///
/// This class may handle instantiating and adding Dart instances that are
/// attached to a native instance or receiving callback methods from an
/// overridden native class.
///
/// See https://developer.android.com/reference/android/app/Activity.
abstract class ActivityFlutterApi {
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  /// Create a new Dart instance and add it to the `InstanceManager`.
  void create(String instanceId);

  /// Dispose of the Dart instance and remove it from the `InstanceManager`.
  void dispose(String instanceId);

  static void setup(ActivityFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.permission_handler_android.ActivityFlutterApi.create',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityFlutterApi.create was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_instanceId = (args[0] as String?);
          assert(arg_instanceId != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityFlutterApi.create was null, expected non-null String.');
          api.create(arg_instanceId!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.permission_handler_android.ActivityFlutterApi.dispose',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityFlutterApi.dispose was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_instanceId = (args[0] as String?);
          assert(arg_instanceId != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityFlutterApi.dispose was null, expected non-null String.');
          api.dispose(arg_instanceId!);
          return;
        });
      }
    }
  }
}