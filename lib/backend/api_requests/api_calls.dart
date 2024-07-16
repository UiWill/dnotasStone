import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiAwsCall {
  static Future<ApiCallResponse> call({
    String? metodo = '',
    String? parcela = '',
    String? data = '',
    double? valor,
    double? id,
    String? cautYA07 = '1',
    String? tBandYA06 = 'VISA',
    String? cnpjYa05 = '16501555000823',
    dynamic itensJson,
    String? item = '',
    double? qtd,
    String? item2 = '',
    double? qtd2,
    String? item3 = '',
    double? qtd3,
    String? item4 = '',
    String? item5 = '',
    double? qt4,
    double? qtd5,
  }) async {
    final itens = _serializeJson(itensJson, true);
    final ffApiRequestBody = '''
{
  "valor1": $id,
  "valor2": "$metodo",
  "valor3": "$parcela",
  "valor4": "$data",
  "valor5": $valor,
  "valor6": "$cautYA07",
  "valor7": "$tBandYA06",
  "valor8": "$cnpjYa05",
  "item1": "$item",
  "qtd1": $qtd,
  "item2": "$item2",
  "qtd2": $qtd2,
  "item3": "$item3",
  "qtd3": $qtd3,
  "item4": "$item4",
  "qtd4": $qt4,
  "item5": "$item5",
  "qtd5": $qtd5
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiAws',
      apiUrl: 'https://api.dnotas.com.br/tosend',
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
