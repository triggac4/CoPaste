import 'dart:io';

import "package:permission_handler/permission_handler.dart";
import 'package:co_paste/utils/http_server.dart';
import "package:flutter/material.dart";
import 'package:network_info_plus/network_info_plus.dart';
import "package:http/http.dart" as http;

class CreateServer extends StatefulWidget {
  static const String routeName = 'create-server';
  CreateServer({Key? key, required this.ip}) : super(key: key);

  final int ip;
  @override
  _CreateServerState createState() => _CreateServerState();
}

class _CreateServerState extends State<CreateServer> {
  var httplocal = HttpLocalServer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              child: TextButton.icon(
                  onPressed: () async {
                    await Permission.location.request();
                    var networkInfo = NetworkInfo();
                    var address = await networkInfo.getWifiIP();
                    print(address);
                    print(await NetworkInterface.list());
                    if (httplocal.server == null) {
                      httplocal.createServer();
                    }

                    http.post(Uri.parse("https://127.0.0.1:3000"),
                        body: {'see': "saw", 'srr': "skk"});
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  icon: const Icon(Icons.wifi),
                  label: const Text("Create A Server")),
            ),
            Container(
              height: 50,
              width: 200,
              child: TextButton.icon(
                  onPressed: () async {
                    try {
                      var response = await http
                          .get(Uri.parse("http://192.168.3.221:3000"));
                      print(response.body);
                    } catch (e) {
                      print(e);
                    }
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  icon: const Icon(Icons.wifi),
                  label: const Text("Create A Server")),
            ),
          ],
        ),
      ),
    );
  }
}
