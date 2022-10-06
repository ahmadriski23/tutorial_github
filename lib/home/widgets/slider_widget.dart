import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SliderWidget());
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                width: 70,
                child: InkWell(
                  onTap: () {
                    carouselController.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInExpo);
                  },
                  child: Image.asset("assets/images/PanahKiri.png"),
                )),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 500,
                  child: CarouselSlider(
                    carouselController: carouselController,
                    options: CarouselOptions(
                        autoPlay: false,
                        viewportFraction: 1,
                        aspectRatio: 16 / 9),
                    items: [1, 2, 3, 4, 5].map(
                      (i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Image.asset(
                              'assets/images/slider2.jpg',
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 50,
                width: 70,
                child: InkWell(
                  onTap: () {
                    carouselController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInExpo);
                  },
                  child: Image.asset("assets/images/PanahKanan.png"),
                ))
          ],
        ),
      ),
    );

    ;
  }
}
