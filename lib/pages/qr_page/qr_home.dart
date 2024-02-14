import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrHome extends StatefulWidget {
  const QrHome({Key? key}) : super(key: key);

  @override
  State<QrHome> createState() => _QrHomeState();
}

class _QrHomeState extends State<QrHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.qr_code),text: "QR Göster",),
                Tab(icon: Icon(Icons.qr_code_scanner_rounded),text: "QR Okut",),

              ],
            ),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('QR Giriş Sistemi'),
              ],
            ),
          ),
          body:  TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: QrImageView(data: "bakirgey",size: 150,backgroundColor: Colors.white,),
              ),
              buildQrView(context),

            ],
          ),
        ),
      ),
    );
  }
  final qrKey=GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  Widget buildQrView(BuildContext context)=>QRView(key: qrKey, onQRViewCreated: onQRViewCreated,
    overlay: QrScannerOverlayShape(
      borderLength: 20,
      borderWidth: 10,
      borderRadius: 10,
    ),

  );

  void onQRViewCreated(QRViewController controller)
  {
    setState(() =>this.controller=controller);
  }
}
