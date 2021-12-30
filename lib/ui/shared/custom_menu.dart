import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_vertical_landingpage/provider/page_provider.dart';
import 'package:web_vertical_landingpage/ui/shared/item_menu.dart';

class CustomMenuWidget extends StatefulWidget {
  @override
  State<CustomMenuWidget> createState() => _CustomMenuWidgetState();
}

class _CustomMenuWidgetState extends State<CustomMenuWidget>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return MouseRegion(
      cursor: SystemMouseCursors.click, //obtenemos el cursor del moouse
      child: GestureDetector(
        onTap: () {
          if (isOpen) {
            controller.forward();
          } else {
            controller.reverse();
          }
          setState(() {
            isOpen = !isOpen; //opuesto
          });
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            height: isOpen ? 300 : 50,
            width: 150,
            color: Colors.black,
            child: Column(
              children: [
                _menuTitle(isOpen: isOpen, controller: controller),
                if (isOpen) ...[
                  MenuItem(
                      text: 'home',
                      onPress: () {
                        pageProvider.goTo(0);
                        setState(() {
                          isOpen = !isOpen;
                        });
                      }),
                  MenuItem(
                      text: 'About',
                      onPress: () {
                        pageProvider.goTo(1);
                        setState(() {
                          isOpen = !isOpen;
                        });
                      }),
                  MenuItem(
                      text: 'Contact',
                      onPress: () {
                        pageProvider.goTo(2);
                        setState(() {
                          isOpen = !isOpen;
                        });
                      }),
                  MenuItem(
                      text: 'Location',
                      onPress: () {
                        pageProvider.goTo(3);
                        setState(() {
                          isOpen = !isOpen;
                        });
                      }),
                  MenuItem(
                      text: 'Pricing',
                      onPress: () {
                        pageProvider.goTo(4);
                        setState(() {
                          isOpen = !isOpen;
                        });
                      }),
                ]
              ],
            )),
      ),
    );
  }
}

class _menuTitle extends StatelessWidget {
  const _menuTitle({
    Key? key,
    required this.isOpen,
    required this.controller,
  }) : super(key: key);

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          width: (isOpen) ? 30 : 0,
        ),
        Text(
          'Menu',
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
        ),
        Spacer(),
        AnimatedIcon(
          icon: AnimatedIcons.close_menu,
          progress: controller,
          color: Colors.white,
        ),
      ],
    );
  }
}
