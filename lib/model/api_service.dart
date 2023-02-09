import 'dart:developer';

import 'package:flutter_ecommerce_web/model/european_model_ok.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_ecommerce_web/model/ApiConstants.dart';
import 'package:flutter_ecommerce_web/model/brazilian_model_ok.dart';

class ApiService {
  Future<List<BrazilianProductOk>?> getBrazilianProductOK() async {
    try {
      var url =
          Uri.parse(ApiConstants.baseUrl + ApiConstants.brazilianEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<BrazilianProductOk> _model = brazilianModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }

    Future<List<EuropeanProductOk>?> getEuropeanProductOK() async {
      try {
        var url =
            Uri.parse(ApiConstants.baseUrl + ApiConstants.europeanEndpoint);
        var response = await http.get(url);
        if (response.statusCode == 200) {
          List<EuropeanProductOk> _model = europeanModelFromJson(response.body);
          return _model;
        }
      } catch (e) {
        log(e.toString());
      }
    }
  }

  getEuropeanProductOK() {}
}
