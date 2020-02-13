import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pimp_my_button/pimp_my_button.dart';

class BackDown extends StatelessWidget {
  final Function onTap;

  const BackDown({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PimpedButton(
      particle: RectangleDemoParticle(),
      pimpedWidgetBuilder: (context, controller) {
        return GestureDetector(
          onTap: () {
            controller.forward(from: 0.0);
            onTap();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white38,
              boxShadow: [
                BoxShadow(
                  color: Colors.orangeAccent,
                  blurRadius: 30.0,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
            child: Icon(
              Icons.arrow_downward,
              size: 40,
              color: Colors.orange[600],
            ),
          ),
        );
      },
    );
  }
}
