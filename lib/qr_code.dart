import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class QrCodeView extends StatefulWidget {
  const QrCodeView({Key key}) : super(key: key);

  @override
  State<QrCodeView> createState() => _QrCodeViewState();
}

class _QrCodeViewState extends State<QrCodeView> {
  String text = 'Hasil QR Scan';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Example'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              QrImage(
                version: 6,
                foregroundColor: Colors.black,
                errorCorrectionLevel: QrErrorCorrectLevel.H,
                padding: EdgeInsets.all(5),
                size: 200,
                data: "https://fatkhulamam.github.io/portofolio/",
              ),
              RaisedButton(
                child: Text('Scan'),
                onPressed: () async {
                  text = await scanner.scan();
                  setState(() {});
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
