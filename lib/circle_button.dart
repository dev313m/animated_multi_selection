import 'package:flutter/material.dart';

class NCircleButton extends StatefulWidget {
  final Color color;
  final List<String> selectionList;
  final double radius;
  final String itemName;
  final Function onChangeFunction;
  final Widget insideWidget;

  NCircleButton(
      {@required this.itemName,
        @required this.radius,
        this.color,
        @required this.onChangeFunction,
        @required this.selectionList,@required this.insideWidget});
  @override
  _NCircleButton createState() => _NCircleButton();
}

class _NCircleButton extends State<NCircleButton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  int alpha;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    alpha = (_animation.value * 255).toInt();
    widget.selectionList.contains(widget.itemName)
        ? _controller.value = 255.0
        : _controller.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return GestureDetector(
            onTap: () {
              if (widget.selectionList.contains(widget.itemName))
                setState(() {
                  widget.selectionList.remove(widget.itemName);
                  _controller.reverse();
                  widget.onChangeFunction(
                      widget.selectionList..remove(widget.itemName));
                });
              else
                setState(() {
                  _controller.forward();
                  widget.onChangeFunction(
                      widget.selectionList..add(widget.itemName));
                });
            },
            child: Container(
                width: widget.radius,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.color
                        .withAlpha((_controller.value * 255).toInt()),
                    border: Border.all(
                      color: widget.color
                          .withAlpha(255 - (_controller.value.toInt() * 255)),
                      width: 4.0,
                    )),
                child: widget.insideWidget));
      },
    );
  }
}
