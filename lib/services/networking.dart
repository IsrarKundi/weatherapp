import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.classUrl);

  late final String classUrl;

  Future getData() async {
    Uri url = Uri.parse(classUrl);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;
    }
    else {
      print(response.statusCode);
    }
  }
}
