import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class HttpLocalServer {
  HttpServer? server;

  createServer() async {
    //  await Permission.location.request();
    //                   var networkInfo = NetworkInfo();
    //                   var address = await networkInfo.getWifiIP();
    //                   print(address);
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
    await handleRequests();
    print('address ${server?.address} port: ${server?.port}');
  }

  handleRequests() async {
    if (server != null) {
      await for (var request in server!) {
        if (request.method == 'GET') {
          request.response
            ..write('some stuffs')
            ..close();
        }
        if (request.method == "POST") {
          var value = await utf8.decoder.bind(request).join();
          request.response.close();
          print(value);
        }
      }
    }
  }
}
