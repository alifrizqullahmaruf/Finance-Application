import 'package:flutter/material.dart';

class WalletScrreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Scrreen'),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/564x/9a/af/fe/9aaffe51e2dc86c1c88335143479adb6.jpg"),
          )
        ],
      ),
      body: Container(
        child: Column(children: []),
      ),
    );
  }
}
