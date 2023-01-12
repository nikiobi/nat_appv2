import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:nat_appv2/GlobalVariables.dart';

class HttpRequestManager {
  final resultNotifier = ValueNotifier<RequestState>(RequestInitial());

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
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a1","value":"${determineResult(resultb1s1, resultb1s1minmax, 0)}"},'
          '${(sentencesCorrect[0] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a1","value":"${_determineActualSentence(placedwordb1s1, resultb1s1minmax)}"},' : '')}'
          '${(sentencesCorrect[0] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_a1","value":"${_determineErrorCode(codewordb1s1, resultb1s1minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_a1","value":"$resetss1b1w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_a1","value":"$resetss1b1s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p2","value":"${determineResult(resultb1s2, resultb1s2minmax, 1)}"},'
          '${(sentencesCorrect[1] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p2","value":"${_determineActualSentence(placedwordb1s2, resultb1s2minmax)}"},' : '')}'
          '${(sentencesCorrect[1] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_p2","value":"${_determineErrorCode(codewordb1s2, resultb1s2minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_p2","value":"$resetss2b1w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_p2","value":"$resetss2b1s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or3","value":"${determineResult(resultb1s3, resultb1s3minmax, 2)}"},'
          '${(sentencesCorrect[2] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or3","value":"${_determineActualSentence(placedwordb1s3, resultb1s3minmax)}"},' : '')}'
          '${(sentencesCorrect[2] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_or3","value":"${_determineErrorCode(codewordb1s3, resultb1s3minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_or3","value":"$resetss3b1w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_or3","value":"$resetss3b1s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw4","value":"${determineResult(resultb1s4, resultb1s4minmax, 3)}"},'
          '${(sentencesCorrect[3] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw4","value":"${_determineActualSentence(placedwordb1s4, resultb1s4minmax)}"},' : '')}'
          '${(sentencesCorrect[3] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sw4","value":"${_determineErrorCode(codewordb1s4, resultb1s4minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sw4","value":"$resetss4b1w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sw4","value":"$resetss4b1s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr5","value":"${determineResult(resultb1s5, resultb1s5minmax, 4)}"},'
          '${(sentencesCorrect[4] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr5","value":"${_determineActualSentence(placedwordb1s5, resultb1s5minmax)}"},' : '')}'
          '${(sentencesCorrect[4] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sr5","value":"${_determineErrorCode(codewordb1s5, resultb1s5minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sr5","value":"$resetss5b1w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sr5","value":"$resetss5b1s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow6","value":"${determineResult(resultb1s6, resultb1s6minmax, 5)}"},'
          '${(sentencesCorrect[5] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow6","value":"${_determineActualSentence(placedwordb1s6, resultb1s6minmax)}"},' : '')}'
          '${(sentencesCorrect[5] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_ow6","value":"${_determineErrorCode(codewordb1s6, resultb1s6minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_ow6","value":"$resetss6b1w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_ow6","value":"$resetss6b1s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p7","value":"${determineResult(resultb2s1, resultb2s1minmax, 6)}"},'
          '${(sentencesCorrect[6] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p7","value":"${_determineActualSentence(placedwordb2s1, resultb2s1minmax)}"},' : '')}'
          '${(sentencesCorrect[6] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_p7","value":"${_determineErrorCode(codewordb2s1, resultb2s1minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_p7","value":"$resetss1b2w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_p7","value":"$resetss1b2s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a8","value":"${determineResult(resultb2s2, resultb2s2minmax, 7)}"},'
          '${(sentencesCorrect[7] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a8","value":"${_determineActualSentence(placedwordb2s2, resultb2s2minmax)}"},' : '')}'
          '${(sentencesCorrect[7] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_a8","value":"${_determineErrorCode(codewordb2s2, resultb2s2minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_a8","value":"$resetss2b2w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_a8","value":"$resetss2b2s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or9","value":"${determineResult(resultb2s3, resultb2s3minmax, 8)}"},'
          '${(sentencesCorrect[8] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or9","value":"${_determineActualSentence(placedwordb2s3, resultb2s3minmax)}"},' : '')}'
          '${(sentencesCorrect[8] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_or9","value":"${_determineErrorCode(codewordb2s3, resultb2s3minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_a8","value":"$resetss3b2w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_a8","value":"$resetss3b2s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw10","value":"${determineResult(resultb2s4, resultb2s4minmax, 9)}"},'
          '${(sentencesCorrect[9] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw10","value":"${_determineActualSentence(placedwordb2s4, resultb2s4minmax)}"},' : '')}'
          '${(sentencesCorrect[9] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sw10","value":"${_determineErrorCode(codewordb2s4, resultb2s4minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sw10","value":"$resetss4b2w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sw10","value":"$resetss4b2s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr11","value":"${determineResult(resultb2s5, resultb2s5minmax, 10)}"},'
          '${(sentencesCorrect[10] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr11","value":"${_determineActualSentence(placedwordb2s5, resultb2s5minmax)}"},' : '')}'
          '${(sentencesCorrect[10] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sr11","value":"${_determineErrorCode(codewordb2s5, resultb2s5minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sr11","value":"$resetss5b2w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sr11","value":"$resetss5b2s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow12","value":"${determineResult(resultb2s6, resultb2s6minmax, 11)}"},'
          '${(sentencesCorrect[11] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow12","value":"${_determineActualSentence(placedwordb2s6, resultb2s6minmax)}"},' : '')}'
          '${(sentencesCorrect[11] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_ow12","value":"${_determineErrorCode(codewordb2s6, resultb2s6minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_ow12","value":"$resetss6b2w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_ow12","value":"$resetss6b2s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a13","value":"${determineResult(resultb3s1, resultb3s1minmax, 12)}"},'
          '${(sentencesCorrect[12] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a13","value":"${_determineActualSentence(placedwordb3s1, resultb3s1minmax)}"},' : '')}'
          '${(sentencesCorrect[12] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_a13","value":"${_determineErrorCode(codewordb3s1, resultb3s1minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_a13","value":"$resetss1b3w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_a13","value":"$resetss1b3s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw14","value":"${determineResult(resultb3s2, resultb3s2minmax, 13)}"},'
          '${(sentencesCorrect[13] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw14","value":"${_determineActualSentence(placedwordb3s2, resultb3s2minmax)}"},' : '')}'
          '${(sentencesCorrect[13] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sw14","value":"${_determineErrorCode(codewordb3s2, resultb3s2minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sw14","value":"$resetss2b3w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sw14","value":"$resetss2b3s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or15","value":"${determineResult(resultb3s3, resultb3s3minmax, 14)}"},'
          '${(sentencesCorrect[14] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or15","value":"${_determineActualSentence(placedwordb3s3, resultb3s3minmax)}"},' : '')}'
          '${(sentencesCorrect[14] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_or15","value":"${_determineErrorCode(codewordb3s3, resultb3s3minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_or15","value":"$resetss3b3w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_or15","value":"$resetss3b3s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p16","value":"${determineResult(resultb3s4, resultb3s4minmax, 15)}"},'
          '${(sentencesCorrect[15] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p16","value":"${_determineActualSentence(placedwordb3s4, resultb3s4minmax)}"},' : '')}'
          '${(sentencesCorrect[0] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_p16","value":"${_determineErrorCode(codewordb3s4, resultb3s4minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_p16","value":"$resetss4b3w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_p16","value":"$resetss4b3s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow17","value":"${determineResult(resultb3s5, resultb3s5minmax, 16)}"},'
          '${(sentencesCorrect[16] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow17","value":"${_determineActualSentence(placedwordb3s5, resultb3s5minmax)}"},' : '')}'
          '${(sentencesCorrect[16] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_ow17","value":"${_determineErrorCode(codewordb3s5, resultb3s5minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_ow17","value":"$resetss5b3w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_ow17","value":"$resetss5b3s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr18","value":"${determineResult(resultb3s6, resultb3s6minmax, 17)}"},'
          '${(sentencesCorrect[17] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr18","value":"${_determineActualSentence(placedwordb3s6, resultb3s6minmax)}"},' : '')}'
          '${(sentencesCorrect[17] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sr18","value":"${_determineErrorCode(codewordb3s6, resultb3s6minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sr18","value":"$resetss6b3w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sr18","value":"$resetss6b3s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or19","value":"${determineResult(resultb4s1, resultb4s1minmax, 18)}"},'
          '${(sentencesCorrect[18] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or19","value":"${_determineActualSentence(placedwordb4s1, resultb4s1minmax)}"},' : '')}'
          '${(sentencesCorrect[18] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_or19","value":"${_determineErrorCode(codewordb4s1, resultb4s1minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_or19","value":"$resetss1b4w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_or19","value":"$resetss1b4s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p20","value":"${determineResult(resultb4s2, resultb4s2minmax, 19)}"},'
          '${(sentencesCorrect[19] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p20","value":"${_determineActualSentence(placedwordb4s2, resultb4s2minmax)}"},' : '')}'
          '${(sentencesCorrect[19] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_p20","value":"${_determineErrorCode(codewordb4s2, resultb4s2minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_p20","value":"$resetss2b4w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_p20","value":"$resetss2b4s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr21","value":"${determineResult(resultb4s3, resultb4s3minmax, 20)}"},'
          '${(sentencesCorrect[20] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr21","value":"${_determineActualSentence(placedwordb4s3, resultb4s3minmax)}"},' : '')}'
          '${(sentencesCorrect[20] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sr21","value":"${_determineErrorCode(codewordb4s3, resultb4s3minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sr21","value":"$resetss3b4w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sr21","value":"$resetss3b4s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow22","value":"${determineResult(resultb4s4, resultb4s4minmax, 21)}"},'
          '${(sentencesCorrect[21] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow22","value":"${_determineActualSentence(placedwordb4s4, resultb4s4minmax)}"},' : '')}'
          '${(sentencesCorrect[21] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_ow22","value":"${_determineErrorCode(codewordb4s4, resultb4s4minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_ow22","value":"$resetss4b4w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_ow22","value":"$resetss4b4s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a23","value":"${determineResult(resultb4s5, resultb4s5minmax, 22)}"},'
          '${(sentencesCorrect[22] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a23","value":"${_determineActualSentence(placedwordb4s5, resultb4s5minmax)}"},' : '')}'
          '${(sentencesCorrect[22] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_a23","value":"${_determineErrorCode(codewordb4s5, resultb4s5minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_a23","value":"$resetss5b4w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_a23","value":"$resetss5b4s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw24","value":"${determineResult(resultb4s6, resultb4s6minmax, 23)}"},'
          '${(sentencesCorrect[23] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw24","value":"${_determineActualSentence(placedwordb4s6, resultb4s6minmax)}"},' : '')}'
          '${(sentencesCorrect[23] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sw24","value":"${_determineErrorCode(codewordb4s6, resultb4s6minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sw24","value":"$resetss6b4w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sw24","value":"$resetss6b4s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_a25","value":"${determineResult(resultb5s1, resultb5s1minmax, 24)}"},'
          '${(sentencesCorrect[24] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_a25","value":"${_determineActualSentence(placedwordb5s1, resultb5s1minmax)}"},' : '')}'
          '${(sentencesCorrect[24] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_a25","value":"${_determineErrorCode(codewordb5s1, resultb5s1minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_a25","value":"$resetss1b5w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_a25","value":"$resetss1b5s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_ow26","value":"${determineResult(resultb5s2, resultb5s2minmax, 25)}"},'
          '${(sentencesCorrect[25] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_ow26","value":"${_determineActualSentence(placedwordb5s2, resultb5s2minmax)}"},' : '')}'
          '${(sentencesCorrect[25] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_ow26","value":"${_determineErrorCode(codewordb5s2, resultb5s2minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_ow26","value":"$resetss2b5w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_ow26","value":"$resetss2b5s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_or27","value":"${determineResult(resultb5s3, resultb5s3minmax, 26)}"},'
          '${(sentencesCorrect[26] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_or27","value":"${_determineActualSentence(placedwordb5s3, resultb5s3minmax)}"},' : '')}'
          '${(sentencesCorrect[26] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_or27","value":"${_determineErrorCode(codewordb5s3, resultb5s3minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_or27","value":"$resetss3b5w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_or27","value":"$resetss3b5s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sw28","value":"${determineResult(resultb5s4, resultb5s4minmax, 27)}"},'
          '${(sentencesCorrect[27] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sw28","value":"${_determineActualSentence(placedwordb5s4, resultb5s4minmax)}"},' : '')}'
          '${(sentencesCorrect[27] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sw28","value":"${_determineErrorCode(codewordb5s4, resultb5s4minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sw28","value":"$resetss4b5w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sw28","value":"$resetss4b5s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_sr29","value":"${determineResult(resultb5s5, resultb5s5minmax, 28)}"},'
          '${(sentencesCorrect[28] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_sr29","value":"${_determineActualSentence(placedwordb5s5, resultb5s5minmax)}"},' : '')}'
          '${(sentencesCorrect[28] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_sr29","value":"${_determineErrorCode(codewordb5s5, resultb5s5minmax)}"},' : '')}'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_sr29","value":"$resetss5b5w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_sr29","value":"$resetss5b5s"},'

          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rw_p30","value":"$resetss6b5w"},'
          '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_rs_p30","value":"$resetss6b5s"},'
          '${(sentencesCorrect[29] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p30","value":"${determineResult(resultb5s6, resultb5s6minmax, 29)}"},' : '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_p30","value":"${determineResult(resultb5s6, resultb5s6minmax, 29)}"}')}'
          '${(sentencesCorrect[29] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_satz_p30","value":"${_determineActualSentence(placedwordb5s6, resultb5s5minmax)}"},' : '')}'
          '${(sentencesCorrect[29] == 0 ? '{"record": "$pizInput","redcap_event_name":"$eventnameInput","field_name":"mesulam_nat_code_p30","value":"${_determineErrorCode(codewordb5s6, resultb5s6minmax)}"}' : '')}'

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
  
  int determineResult(List<bool> result, List<int> minmax, int numberofsentence) {
    for (int i = minmax[0]; i < minmax[1]; i++) {
      if (result[i] == false) {
        sentencesCorrect[numberofsentence] = 0;
        return 0;
      }
    }
    sentencesCorrect[numberofsentence] = 1;
    return 1;
  }

  String _determineActualSentence(List<String> actualsentence, List<int> minmax) {
    String finalSentence = '';
    for (int i = 0; i < minmax[1]; i++) {
      finalSentence += '${actualsentence[i]} ';
    }
    return finalSentence;
  }

  String _determineErrorCode(List<String> actualsentence, List<int> minmax) {
    String finalSentence = '';
    for (int i = minmax[0]; i < minmax[1]; i++) {
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