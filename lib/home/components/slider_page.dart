import 'package:contoh_web_kami_saiyo/home/widgets/slider_widget.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 1000,
        width: 1320,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 234, 255, 236),
                Color.fromARGB(255, 200, 255, 0),
              ]),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            SliderWidget(),
          ],
        ),
      ),
    );
  }
}
