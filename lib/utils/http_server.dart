import 'dart:convert';
import 'dart:io';

class HttpLocalServer {
  HttpServer? server;

  createServer() async {
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 7556);
    print('address ${server?.address} port: ${server?.port}');
  }

  handleRequests() async {

    var decoder=Utf8Decoder();
    if (server != null) {
      await for (var request in server!) {
        if (request.method == 'GET') {
          request.response
            ..write('some stuffs')
            ..close();
        } 
        if(request.method=="POST"){
          request
          ..transform()
          ..
        }
        else {
          request.response
            ..statusCode = 404
            ..write('wrong')
            ..close();
        }
      }
    }
  }
}
