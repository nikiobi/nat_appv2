import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:nat_appv2/GlobalVariables.dart';

class HttpRequestManager {
  final resultNotifier = ValueNotifier<RequestState>(RequestInitial());
  static const urlPrefix = 'https://stuz-redcap.ukl.uni-freiburg.de';
  static const token = 'A42EF3B269922666C5B4E7811DF2C490';

  Future<void> makePostRequest() async {
    print(newToken);
    resultNotifier.value = RequestLoadInProgress();
    final url = Uri.parse((newUrl == true ? urlInput : '$urlPrefix/api/'));
    final body = {
      'token': (newToken == true ? tokenInput : token),
      'content': 'record',
      'action': 'import',
      'format': 'json',
      'type': 'eav',
      'data': '[{"record": "3455698","redcap_event_name":"lsp_akut_arm_1","field_name":"mesulam_nat_p2","value":"0"}]',
      'returnContent': 'count',
      'returnFormat': 'json'
    };
    final response = await post(url, body: body);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
    _handleResponse(response);
    if (response.statusCode == 200){
      uploadsuccessfull = true;
    } else {
      uploadsuccessfull = false;
    }
  }

  void _handleResponse(Response response) {
    if (response.statusCode >= 400) {
      resultNotifier.value = RequestLoadFailure();
    } else {
      resultNotifier.value = RequestLoadSuccess(response.body);
    }
  }


  Future<void> makeGetRequest() async {
    resultNotifier.value = RequestLoadInProgress();
    final url = Uri.parse('$urlPrefix/api/');
    Response response = await get(url);
    print('Status code: ${response.statusCode}');
    print('Headers: ${response.headers}');
    print('Body: ${response.body}');
    _handleResponse(response);
  }

/*
  Future<void> makePutRequest() async {
    resultNotifier.value = RequestLoadInProgress();
    final url = Uri.parse('$urlPrefix/posts/1');
    final headers = {"Content-type": "application/json"};
    final json = '{"title": "Hello", "body": "body text", "userId": 1}';
    final response = await put(url, headers: headers, body: json);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
    _handleResponse(response);
  }

  Future<void> makePatchRequest() async {
    resultNotifier.value = RequestLoadInProgress();
    final url = Uri.parse('$urlPrefix/posts/1');
    final headers = {"Content-type": "application/json"};
    final json = '{"title": "Hello"}';
    final response = await patch(url, headers: headers, body: json);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
    _handleResponse(response);
  }

  Future<void> makeDeleteRequest() async {
    resultNotifier.value = RequestLoadInProgress();
    final url = Uri.parse('$urlPrefix/posts/1');
    final response = await delete(url);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
    _handleResponse(response);
  }
*/
}

class RequestState {
  const RequestState();
}

class RequestInitial extends RequestState {}

class RequestLoadInProgress extends RequestState {}

class RequestLoadSuccess extends RequestState {
  const RequestLoadSuccess(this.body);
  final String body;
}

class RequestLoadFailure extends RequestState {}