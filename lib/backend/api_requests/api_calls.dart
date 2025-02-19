import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CancelarAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? apiKey =
        'sk_test_51MZGMHGCjKzT60prOADVwxFhxO9SZdTvtJlK3lIyYEuS7ycHozDABBLuqyU7AZqcHlXhxDeYbNWgTxzLAozzK1zj00tAehq2J9',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Cancelar Assinatura',
      apiUrl: 'https://api.stripe.com/v1/subscriptions/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarChekoutCall {
  static Future<ApiCallResponse> call({
    String? apiKey =
        'sk_test_51MZGMHGCjKzT60prOADVwxFhxO9SZdTvtJlK3lIyYEuS7ycHozDABBLuqyU7AZqcHlXhxDeYbNWgTxzLAozzK1zj00tAehq2J9',
    String? preco = '',
    String? customerEmail = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Chekout',
      apiUrl: 'https://api.stripe.com/v1/checkout/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {
        'success_url':
            "https://webfullfinan.flutterflow.app/pagamentoConfirmado",
        'line_items[0][price]': preco,
        'line_items[0][quantity]': "1",
        'mode': "payment",
        'customer_email': customerEmail,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? urlCheckout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static String? idCheckout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? statusCheckout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_status''',
      ));
}

class ChecarStatusPagamentoCall {
  static Future<ApiCallResponse> call({
    String? apiKey =
        'sk_test_51MZGMHGCjKzT60prOADVwxFhxO9SZdTvtJlK3lIyYEuS7ycHozDABBLuqyU7AZqcHlXhxDeYbNWgTxzLAozzK1zj00tAehq2J9',
    String? idCheckout = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Checar Status Pagamento',
      apiUrl: 'https://api.stripe.com/v1/checkout/sessions/${idCheckout}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? urlCheckout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static String? idCheckout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? statusCheckout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_status''',
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
