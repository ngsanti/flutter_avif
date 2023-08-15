// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.72.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class FlutterAvif {
  Future<Frame> decodeSingleFrameImage(
      {required Uint8List avifBytes, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDecodeSingleFrameImageConstMeta;

  Future<AvifInfo> initMemoryDecoder(
      {required String key, required Uint8List avifBytes, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kInitMemoryDecoderConstMeta;

  Future<bool> resetDecoder({required String key, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kResetDecoderConstMeta;

  Future<bool> disposeDecoder({required String key, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDisposeDecoderConstMeta;

  Future<Frame> getNextFrame({required String key, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetNextFrameConstMeta;

  Future<Uint8List> encodeAvif(
      {required int width,
      required int height,
      required int speed,
      required int maxThreads,
      required int timescale,
      required int maxQuantizer,
      required int minQuantizer,
      required int maxQuantizerAlpha,
      required int minQuantizerAlpha,
      required List<EncodeFrame> imageSequence,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kEncodeAvifConstMeta;
}

class AvifInfo {
  final int width;
  final int height;
  final int imageCount;
  final double duration;

  const AvifInfo({
    required this.width,
    required this.height,
    required this.imageCount,
    required this.duration,
  });
}

class EncodeFrame {
  final Uint8List data;
  final int durationInTimescale;

  const EncodeFrame({
    required this.data,
    required this.durationInTimescale,
  });
}

class Frame {
  final Uint8List data;
  final double duration;
  final int width;
  final int height;

  const Frame({
    required this.data,
    required this.duration,
    required this.width,
    required this.height,
  });
}

class FlutterAvifImpl implements FlutterAvif {
  final FlutterAvifPlatform _platform;
  factory FlutterAvifImpl(ExternalLibrary dylib) =>
      FlutterAvifImpl.raw(FlutterAvifPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory FlutterAvifImpl.wasm(FutureOr<WasmModule> module) =>
      FlutterAvifImpl(module as ExternalLibrary);
  FlutterAvifImpl.raw(this._platform);
  Future<Frame> decodeSingleFrameImage(
      {required Uint8List avifBytes, dynamic hint}) {
    var arg0 = _platform.api2wire_uint_8_list(avifBytes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_decode_single_frame_image(port_, arg0),
      parseSuccessData: _wire2api_frame,
      constMeta: kDecodeSingleFrameImageConstMeta,
      argValues: [avifBytes],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDecodeSingleFrameImageConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "decode_single_frame_image",
        argNames: ["avifBytes"],
      );

  Future<AvifInfo> initMemoryDecoder(
      {required String key, required Uint8List avifBytes, dynamic hint}) {
    var arg0 = _platform.api2wire_String(key);
    var arg1 = _platform.api2wire_uint_8_list(avifBytes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_init_memory_decoder(port_, arg0, arg1),
      parseSuccessData: _wire2api_avif_info,
      constMeta: kInitMemoryDecoderConstMeta,
      argValues: [key, avifBytes],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitMemoryDecoderConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "init_memory_decoder",
        argNames: ["key", "avifBytes"],
      );

  Future<bool> resetDecoder({required String key, dynamic hint}) {
    var arg0 = _platform.api2wire_String(key);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_reset_decoder(port_, arg0),
      parseSuccessData: _wire2api_bool,
      constMeta: kResetDecoderConstMeta,
      argValues: [key],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kResetDecoderConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "reset_decoder",
        argNames: ["key"],
      );

  Future<bool> disposeDecoder({required String key, dynamic hint}) {
    var arg0 = _platform.api2wire_String(key);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_dispose_decoder(port_, arg0),
      parseSuccessData: _wire2api_bool,
      constMeta: kDisposeDecoderConstMeta,
      argValues: [key],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDisposeDecoderConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "dispose_decoder",
        argNames: ["key"],
      );

  Future<Frame> getNextFrame({required String key, dynamic hint}) {
    var arg0 = _platform.api2wire_String(key);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_next_frame(port_, arg0),
      parseSuccessData: _wire2api_frame,
      constMeta: kGetNextFrameConstMeta,
      argValues: [key],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetNextFrameConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_next_frame",
        argNames: ["key"],
      );

  Future<Uint8List> encodeAvif(
      {required int width,
      required int height,
      required int speed,
      required int maxThreads,
      required int timescale,
      required int maxQuantizer,
      required int minQuantizer,
      required int maxQuantizerAlpha,
      required int minQuantizerAlpha,
      required List<EncodeFrame> imageSequence,
      dynamic hint}) {
    var arg0 = api2wire_u32(width);
    var arg1 = api2wire_u32(height);
    var arg2 = api2wire_i32(speed);
    var arg3 = api2wire_i32(maxThreads);
    var arg4 = _platform.api2wire_u64(timescale);
    var arg5 = api2wire_i32(maxQuantizer);
    var arg6 = api2wire_i32(minQuantizer);
    var arg7 = api2wire_i32(maxQuantizerAlpha);
    var arg8 = api2wire_i32(minQuantizerAlpha);
    var arg9 = _platform.api2wire_list_encode_frame(imageSequence);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_encode_avif(
          port_, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9),
      parseSuccessData: _wire2api_ZeroCopyBuffer_Uint8List,
      constMeta: kEncodeAvifConstMeta,
      argValues: [
        width,
        height,
        speed,
        maxThreads,
        timescale,
        maxQuantizer,
        minQuantizer,
        maxQuantizerAlpha,
        minQuantizerAlpha,
        imageSequence
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kEncodeAvifConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "encode_avif",
        argNames: [
          "width",
          "height",
          "speed",
          "maxThreads",
          "timescale",
          "maxQuantizer",
          "minQuantizer",
          "maxQuantizerAlpha",
          "minQuantizerAlpha",
          "imageSequence"
        ],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  Uint8List _wire2api_ZeroCopyBuffer_Uint8List(dynamic raw) {
    return raw as Uint8List;
  }

  AvifInfo _wire2api_avif_info(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return AvifInfo(
      width: _wire2api_u32(arr[0]),
      height: _wire2api_u32(arr[1]),
      imageCount: _wire2api_u32(arr[2]),
      duration: _wire2api_f64(arr[3]),
    );
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  double _wire2api_f64(dynamic raw) {
    return raw as double;
  }

  Frame _wire2api_frame(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return Frame(
      data: _wire2api_ZeroCopyBuffer_Uint8List(arr[0]),
      duration: _wire2api_f64(arr[1]),
      width: _wire2api_u32(arr[2]),
      height: _wire2api_u32(arr[3]),
    );
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }
}

// Section: api2wire

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class FlutterAvifPlatform extends FlutterRustBridgeBase<FlutterAvifWire> {
  FlutterAvifPlatform(ffi.DynamicLibrary dylib) : super(FlutterAvifWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_list_encode_frame> api2wire_list_encode_frame(
      List<EncodeFrame> raw) {
    final ans = inner.new_list_encode_frame_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_encode_frame(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  int api2wire_u64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_encode_frame(
      EncodeFrame apiObj, wire_EncodeFrame wireObj) {
    wireObj.data = api2wire_uint_8_list(apiObj.data);
    wireObj.duration_in_timescale = api2wire_u64(apiObj.durationInTimescale);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class FlutterAvifWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FlutterAvifWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FlutterAvifWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_decode_single_frame_image(
    int port_,
    ffi.Pointer<wire_uint_8_list> avif_bytes,
  ) {
    return _wire_decode_single_frame_image(
      port_,
      avif_bytes,
    );
  }

  late final _wire_decode_single_frame_imagePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_decode_single_frame_image');
  late final _wire_decode_single_frame_image =
      _wire_decode_single_frame_imagePtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_init_memory_decoder(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
    ffi.Pointer<wire_uint_8_list> avif_bytes,
  ) {
    return _wire_init_memory_decoder(
      port_,
      key,
      avif_bytes,
    );
  }

  late final _wire_init_memory_decoderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_init_memory_decoder');
  late final _wire_init_memory_decoder =
      _wire_init_memory_decoderPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_reset_decoder(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
  ) {
    return _wire_reset_decoder(
      port_,
      key,
    );
  }

  late final _wire_reset_decoderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_reset_decoder');
  late final _wire_reset_decoder = _wire_reset_decoderPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_dispose_decoder(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
  ) {
    return _wire_dispose_decoder(
      port_,
      key,
    );
  }

  late final _wire_dispose_decoderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_dispose_decoder');
  late final _wire_dispose_decoder = _wire_dispose_decoderPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_next_frame(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
  ) {
    return _wire_get_next_frame(
      port_,
      key,
    );
  }

  late final _wire_get_next_framePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_next_frame');
  late final _wire_get_next_frame = _wire_get_next_framePtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_encode_avif(
    int port_,
    int width,
    int height,
    int speed,
    int max_threads,
    int timescale,
    int max_quantizer,
    int min_quantizer,
    int max_quantizer_alpha,
    int min_quantizer_alpha,
    ffi.Pointer<wire_list_encode_frame> image_sequence,
  ) {
    return _wire_encode_avif(
      port_,
      width,
      height,
      speed,
      max_threads,
      timescale,
      max_quantizer,
      min_quantizer,
      max_quantizer_alpha,
      min_quantizer_alpha,
      image_sequence,
    );
  }

  late final _wire_encode_avifPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Uint32,
              ffi.Uint32,
              ffi.Int32,
              ffi.Int32,
              ffi.Uint64,
              ffi.Int32,
              ffi.Int32,
              ffi.Int32,
              ffi.Int32,
              ffi.Pointer<wire_list_encode_frame>)>>('wire_encode_avif');
  late final _wire_encode_avif = _wire_encode_avifPtr.asFunction<
      void Function(int, int, int, int, int, int, int, int, int, int,
          ffi.Pointer<wire_list_encode_frame>)>();

  ffi.Pointer<wire_list_encode_frame> new_list_encode_frame_0(
    int len,
  ) {
    return _new_list_encode_frame_0(
      len,
    );
  }

  late final _new_list_encode_frame_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_encode_frame> Function(
              ffi.Int32)>>('new_list_encode_frame_0');
  late final _new_list_encode_frame_0 = _new_list_encode_frame_0Ptr
      .asFunction<ffi.Pointer<wire_list_encode_frame> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

base class _Dart_Handle extends ffi.Opaque {}

base class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

base class wire_EncodeFrame extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> data;

  @ffi.Uint64()
  external int duration_in_timescale;
}

base class wire_list_encode_frame extends ffi.Struct {
  external ffi.Pointer<wire_EncodeFrame> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
