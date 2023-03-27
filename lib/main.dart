import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(HttpReq());
}


class HttpReq extends StatelessWidget {
  callApi() async{
var url=Uri.parse('https://bdsol.co/mobile_apis/http_request.php');
var response=await http.get(url);
debugPrint(response.body);

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Http Request Handling'),
        ),
        body: Material(
          child: Center(
            child: ElevatedButton(
              child: Text('Press here'),
              onPressed: (){
              callApi();
              },
            ),
          ),
        ),

      ),
    );
  }
}
