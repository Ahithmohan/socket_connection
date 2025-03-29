import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socket_connection/websocket_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    super.key,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WebsocketProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("SECOND PAGE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "BALANCE:${provider.price}",
            //print balnce here
            //edited by ahiht\
            //h
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900),
          ))
        ],
      ),
    );
  }
}
