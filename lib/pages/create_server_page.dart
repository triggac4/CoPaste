import 'package:co_paste/utils/http_server.dart';
import "package:flutter/material.dart";

class CreateServer extends StatefulWidget {
  static const String routeName = 'create-server';
  CreateServer({Key? key, required this.ip}) : super(key: key);

  final int ip;
  @override
  _CreateServerState createState() => _CreateServerState();
}

class _CreateServerState extends State<CreateServer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          child: TextButton.icon(
              onPressed: () {
                var httplocal = HttpLocalServer();
                httplocal.createServer();
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              icon: const Icon(Icons.wifi),
              label: const Text("Create A Server")),
        ),
      ),
    );
  }
}
