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
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text("create server " + widget.ip.toString()),
        ),
      ),
    );
  }
}
