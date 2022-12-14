import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:nat_appv2/GlobalVariables.dart';

class HttpRequestManager {
  final resultNotifier = ValueNotifier<RequestState>(RequestInitial());
  final List<int>sentencesCorrect = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];

  Future<void> makePostRequest() async {
    uploadsuccessfull = false;
    resultNotifier.value = RequestLoadInProgress();
    final url = Uri.parse(urlInput);
    final body = {
      'token': tokenInput,
      'content': 'record',
      'action': 'import',
      'format': 'json',
      'type': 'eav',
      'data': '['
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a1","value":"${_determineResult(resultb1s1, resultb1s1minmax, 0)}"},'
          '${(sentencesCorrect[0] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a1","value":"${_determineActualSentence(placedwordb1s1, resultb1s1minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p2","value":"${_determineResult(resultb1s2, resultb1s2minmax, 1)}"},'
          '${(sentencesCorrect[1] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p2","value":"${_determineActualSentence(placedwordb1s2, resultb1s2minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or3","value":"${_determineResult(resultb1s3, resultb1s3minmax, 2)}"},'
          '${(sentencesCorrect[2] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or3","value":"${_determineActualSentence(placedwordb1s3, resultb1s3minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw4","value":"${_determineResult(resultb1s4, resultb1s4minmax, 3)}"},'
          '${(sentencesCorrect[3] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw4","value":"${_determineActualSentence(placedwordb1s4, resultb1s4minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr5","value":"${_determineResult(resultb1s5, resultb1s5minmax, 4)}"},'
          '${(sentencesCorrect[4] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr5","value":"${_determineActualSentence(placedwordb1s5, resultb1s5minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow6","value":"${_determineResult(resultb1s6, resultb1s6minmax, 5)}"},'
          '${(sentencesCorrect[5] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow6","value":"${_determineActualSentence(placedwordb1s6, resultb1s6minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p7","value":"${_determineResult(resultb2s1, resultb2s1minmax, 6)}"},'
          '${(sentencesCorrect[6] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p7","value":"${_determineActualSentence(placedwordb2s1, resultb2s1minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a8","value":"${_determineResult(resultb2s2, resultb2s2minmax, 7)}"},'
          '${(sentencesCorrect[7] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a8","value":"${_determineActualSentence(placedwordb2s2, resultb2s2minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or9","value":"${_determineResult(resultb2s3, resultb2s3minmax, 8)}"},'
          '${(sentencesCorrect[8] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or9","value":"${_determineActualSentence(placedwordb2s3, resultb2s3minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw10","value":"${_determineResult(resultb2s4, resultb2s4minmax, 9)}"},'
          '${(sentencesCorrect[9] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw10","value":"${_determineActualSentence(placedwordb2s4, resultb2s4minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr11","value":"${_determineResult(resultb2s5, resultb2s5minmax, 10)}"},'
          '${(sentencesCorrect[10] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr11","value":"${_determineActualSentence(placedwordb2s5, resultb2s5minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow12","value":"${_determineResult(resultb2s6, resultb2s6minmax, 11)}"},'
          '${(sentencesCorrect[11] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow12","value":"${_determineActualSentence(placedwordb2s6, resultb2s6minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a13","value":"${_determineResult(resultb3s1, resultb3s1minmax, 12)}"},'
          '${(sentencesCorrect[12] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a13","value":"${_determineActualSentence(placedwordb3s1, resultb3s1minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw14","value":"${_determineResult(resultb3s2, resultb3s2minmax, 13)}"},'
          '${(sentencesCorrect[13] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw14","value":"${_determineActualSentence(placedwordb3s2, resultb3s2minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or15","value":"${_determineResult(resultb3s3, resultb3s3minmax, 14)}"},'
          '${(sentencesCorrect[14] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or15","value":"${_determineActualSentence(placedwordb3s3, resultb3s3minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p16","value":"${_determineResult(resultb3s4, resultb3s4minmax, 15)}"},'
          '${(sentencesCorrect[15] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p16","value":"${_determineActualSentence(placedwordb3s4, resultb3s4minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow17","value":"${_determineResult(resultb3s5, resultb3s5minmax, 16)}"},'
          '${(sentencesCorrect[16] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow17","value":"${_determineActualSentence(placedwordb3s5, resultb3s5minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr18","value":"${_determineResult(resultb3s6, resultb3s6minmax, 17)}"},'
          '${(sentencesCorrect[17] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr18","value":"${_determineActualSentence(placedwordb3s6, resultb3s6minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or19","value":"${_determineResult(resultb4s1, resultb4s1minmax, 18)}"},'
          '${(sentencesCorrect[18] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or19","value":"${_determineActualSentence(placedwordb4s1, resultb4s1minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p20","value":"${_determineResult(resultb4s2, resultb4s2minmax, 19)}"},'
          '${(sentencesCorrect[19] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p20","value":"${_determineActualSentence(placedwordb4s2, resultb4s2minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr21","value":"${_determineResult(resultb4s3, resultb4s3minmax, 20)}"},'
          '${(sentencesCorrect[20] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr21","value":"${_determineActualSentence(placedwordb4s3, resultb4s3minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow22","value":"${_determineResult(resultb4s4, resultb4s4minmax, 21)}"},'
          '${(sentencesCorrect[21] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow22","value":"${_determineActualSentence(placedwordb4s4, resultb4s4minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a23","value":"${_determineResult(resultb4s5, resultb4s5minmax, 22)}"},'
          '${(sentencesCorrect[22] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a23","value":"${_determineActualSentence(placedwordb4s5, resultb4s5minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw24","value":"${_determineResult(resultb4s6, resultb4s6minmax, 23)}"},'
          '${(sentencesCorrect[23] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw24","value":"${_determineActualSentence(placedwordb4s6, resultb4s6minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a25","value":"${_determineResult(resultb5s1, resultb5s1minmax, 24)}"},'
          '${(sentencesCorrect[24] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a25","value":"${_determineActualSentence(placedwordb5s1, resultb5s1minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow26","value":"${_determineResult(resultb5s2, resultb5s2minmax, 25)}"},'
          '${(sentencesCorrect[25] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow26","value":"${_determineActualSentence(placedwordb5s2, resultb5s2minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or27","value":"${_determineResult(resultb5s3, resultb5s3minmax, 26)}"},'
          '${(sentencesCorrect[26] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or27","value":"${_determineActualSentence(placedwordb5s3, resultb5s3minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw28","value":"${_determineResult(resultb5s4, resultb5s4minmax, 27)}"},'
          '${(sentencesCorrect[27] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw28","value":"${_determineActualSentence(placedwordb5s4, resultb5s4minmax)}"},' : '')}'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr29","value":"${_determineResult(resultb5s5, resultb5s5minmax, 28)}"},'
          '${(sentencesCorrect[28] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr29","value":"${_determineActualSentence(placedwordb5s5, resultb5s5minmax)}"},' : '')}'

          '${(sentencesCorrect[29] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p30","value":"${_determineResult(resultb5s6, resultb5s6minmax, 28)}"},' : '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p30","value":"${_determineResult(resultb5s6, resultb5s6minmax, 28)}"}')}'
          '${(sentencesCorrect[29] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p30","value":"${_determineActualSentence(placedwordb5s6, resultb5s6minmax)}"}' : '')}'
          ']',
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
  
  int _determineResult(List<bool> result, List<int> minmax, int numberofsentence) {
    for (int i = minmax[0]; i < minmax[1]; i++) {
      if (result[i] == false) {
        sentencesCorrect[numberofsentence] = 0;
        return 0;
      }
    }
    return 1;
  }

  String _determineActualSentence(List<String> actualsentence, List<int> minmax) {
    String finalSentence = '';
    for (int i = 0; i < minmax[1]; i++) {
      finalSentence += '${actualsentence[i]} ';
    }
    return finalSentence;
  }
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