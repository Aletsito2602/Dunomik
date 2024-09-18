import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCellCodeOiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'get cell code oi',
      apiUrl:
          'https://countriesnow.space/api/v0.1/countries/info?returns=dialCode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].dialCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dataf(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? country(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class MakeCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? nombre = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nombre": "${nombre}",
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'make',
      apiUrl: 'https://hook.us1.make.com/orbtjry1fv54sc5dkaodo826xc4a75e6',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TaloCall {
  static Future<ApiCallResponse> call({
    String? currency = '',
    String? userId = '',
    String? webhookUrl = '',
    String? redirectUrl = '',
    String? externalId = '',
    String? motive = '',
    String? items = '',
    double? amount,
  }) async {
    final ffApiRequestBody = '''
{
  "price": {
    "currency": "${currency}",
    "amount": ${amount}
  },
  "user_id": "${userId}",
  "redirect_url": "${redirectUrl}",
  "motive": "${motive}",
  "external_id": "${externalId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'talo',
      apiUrl: 'https://api.talo.com.ar/payments/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer TL-eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiI4MGIxMzZiNi05ZWI4LTQ5M2MtYWY2My0zMjk0MjYzNmU5NmQiLCJleHAiOjE3MjIzMTM0MDYsImlhdCI6MTcyMjMwOTgwNiwiZW1haWwiOiJhamF2aWVyYWxtYWRhQG91dGxvb2suY29tIiwidGFsb19yb2xlX2xpc3QiOlsib3duZXIiXSwidGFsb191c2VyX2lkIjoiZjI4OGNkYWItYWEwYy00OWE3LTllZjQtMGFlNjYyNGU2ZjdmIiwiZW1haWxfdmVyaWZpZWQiOnRydWV9.5IdJNpfZh3qEgrE2LHRH76pCtz2X6g6AUqcDigpFpmw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.payment_url''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
