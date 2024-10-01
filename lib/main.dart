import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String labelButton = 'Nyalakan';
  Color colorButton = Colors.green;
  String imagePath = 'https://www.w3schools.com/js/pic_bulboff.gif';
  bool isOn = false;

  void _switchOnOff() {
    // print('Lampu nyala');

    if (isOn) {
      setState(() {
        isOn = false;
        labelButton = 'Matikan';
        colorButton = Colors.red;
        imagePath = 'https://www.w3schools.com/js/pic_bulbon.gif';
      });
    } else {
      setState(() {
        isOn = true;
        labelButton = 'Nyalakan';
        colorButton = Colors.green;
        imagePath = 'https://www.w3schools.com/js/pic_bulboff.gif';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Praktikum Lamp',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(imagePath),
                width: 100,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Silahkan tekan tombol dibawa ini',
                style: TextStyle(fontSize: 10),
              ),
              ElevatedButton(
                  onPressed: _switchOnOff,
                  style: ElevatedButton.styleFrom(backgroundColor: colorButton),
                  child: Text(
                    labelButton,
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
