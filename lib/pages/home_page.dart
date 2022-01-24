import 'dart:async';
import 'dart:io';
import 'package:co_paste/pages/create_server_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  // WebSocketChannel
  // final channel = WebSocket.fromUpgradedSocket(socket);
  @override
  Widget build(BuildContext context) {
    TextStyle? heading = Theme.of(context)
        .textTheme
        .headline1
        ?.copyWith(color: Theme.of(context).colorScheme.primary);
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            Text(
              'COPaste',
              style: heading,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 50,
                    width: 200,
                    child: TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, CreateServer.routeName,
                              arguments: 43);
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                        icon: const Icon(Icons.wifi),
                        label: const Text("Create A Server")),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 50,
                    width: 200,
                    child: TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                        icon: const Icon(Icons.device_hub),
                        label: const Text("Connect To A Server")),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
