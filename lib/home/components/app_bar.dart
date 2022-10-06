import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 42, 212, 241),
                Color.fromARGB(255, 6, 55, 110),
              ]),
          borderRadius: BorderRadius.circular(
            15,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/images/kamisaiyologo.png',
              height: 100,
            ),
          ),
          const SizedBox(width: 300),
          Container(
            child: Row(
              children: [
                Container(
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 3, 255, 24),
                          Color.fromARGB(255, 186, 253, 0),
                        ]),
                  ),
                  child: MenuItem(
                    title: "Menu",
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 3, 255, 24),
                          Color.fromARGB(255, 186, 253, 0),
                        ]),
                  ),
                  child: MenuItem(
                    title: "Info Cabang",
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 3, 255, 24),
                          Color.fromARGB(255, 186, 253, 0),
                        ]),
                  ),
                  child: MenuItem(
                    title: "Tentang Kami",
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 3, 255, 24),
                          Color.fromARGB(255, 97, 248, 26),
                        ]),
                  ),
                  child: MenuItem(
                    title: "Hubungi Kami",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Function onPressed;
  const MenuItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MenuItem(title: "", onPressed: onPressed);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(
          title.toUpperCase(),
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
