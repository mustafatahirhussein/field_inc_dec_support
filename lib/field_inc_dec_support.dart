import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

//ignore: must_be_immutable
class FieldIncDecSupport extends StatefulWidget {
  final Widget? leftIcon, rightIcon;
  final double? borderRadius;
  final double? elevation;
  final Color backColor;
  final Color? valColor;
  final int maxLimit;

  int value;

  FieldIncDecSupport(
      {Key? key,
      this.leftIcon,
      this.rightIcon,
      this.borderRadius,
      required this.elevation,
      required this.backColor,
      this.valColor,
      required this.value,
      required this.maxLimit})
      : super(key: key);

  @override
  State<FieldIncDecSupport> createState() => _FieldIncDecSupportState();
}

class _FieldIncDecSupportState extends State<FieldIncDecSupport> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: widget.elevation ?? 0,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(widget.borderRadius ?? 20)),
      ),
      color: widget.backColor,
      child: Wrap(
        children: <Widget>[
          IconButton(
            icon: widget.leftIcon ??
                const FaIcon(
                  FontAwesomeIcons.plus,
                  color: Color(0xffffffff),
                  size: 15,
                ),
            onPressed: () {
              debugPrint(widget.value.toString());

              setState(() {
                if (widget.value != widget.maxLimit) {
                  widget.value++;
                } else {
                  //Do nothing!
                  showLimitMsg();
                }
              });

              debugPrint(widget.value.toString());
            },
            highlightColor: Colors.transparent,
            splashRadius: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.value.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: widget.valColor ?? const Color(0xffffffff)),
            ),
          ),
          IconButton(
            icon: widget.rightIcon ??
                const FaIcon(
                  FontAwesomeIcons.minus,
                  size: 15,
                  color: Color(0xffffffff),
                ),
            onPressed: () {
              setState(() {
                if (widget.value < 1) {
                  //Do nothing!
                } else {
                  widget.value--;
                }
              });
            },
            highlightColor: Colors.transparent,
            splashRadius: 1,
          ),
        ],
      ),
    );
  }

  showLimitMsg() {
    Fluttertoast.showToast(
      msg: "Maximum limit reached!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }
}

// Unit Test
class Validate {
  static delayValueChange() {
    int val = 0;
    debugPrint(val.toString());
    val = 1;
    debugPrint(val.toString());
  }
}
