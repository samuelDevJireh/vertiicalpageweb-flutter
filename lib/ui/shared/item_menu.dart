import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem extends StatefulWidget {
  final String text;
  final Function onPress;

  const MenuItem({Key? key, required this.text, required this.onPress})
      : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: Duration(milliseconds: 300),
      from: 15,
      child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHover = false;
            });
          },
          child: GestureDetector(
            onTap: () => widget.onPress(),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 150,
              height: 50,
              color: isHover ? Colors.pinkAccent : Colors.transparent,
              child: Center(
                child: Text(
                  widget.text,
                  style:
                      GoogleFonts.adventPro(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )),
    );
  }
}
