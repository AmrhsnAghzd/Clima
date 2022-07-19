import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkingHelper {
  NetworkingHelper(this.url);
  final String url;

  Future getData() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      String data = response.body;
      return jsonDecode(data);
    } catch(e) {
      print('Error in get Weather Data');
      return null;
    }
  }

  // Future getData() async {
  //   try{
  //     final uri = Uri.parse(url);
  //   // final headers = {'Content-Type': 'application/json'};
  //   // Map<String, dynamic> body = {'id': 21, 'name': 'bob'};
  //   // String jsonBody = json.encode(body);
  //   // final encoding = Encoding.getByName('utf-8');
  //   http.Response response = await http.post(
  //      uri,
  //     //  headers: headers,
  //     //  body : json.decode(),
  //     //  encoding: encoding,
  //   );
  //   return jsonDecode(response.body);
  //   }catch(e){
  //     print('Erorr in get weather Data');
  //   }
    
  // }
}
