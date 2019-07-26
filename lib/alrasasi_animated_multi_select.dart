library alrasasi_animated_multi_select;

import 'package:alrasasi_animated_multi_select/circle_button.dart';
import 'package:flutter/material.dart';


class MultiSelectChip extends StatefulWidget {
  final List<String> mainList;
  final Color color;
  final Function(List<String>) onSelectionChanged;
  final List<String> initialSelectionList;
  final double raduis;
  final TextStyle textStyle;
  MultiSelectChip(
      {this.mainList,
        this.onSelectionChanged,
        this.initialSelectionList,
        this.raduis,
        this.color,
        this.textStyle});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices;

  _buildChoiceList() {
    List<Widget> choices = List();
    widget.mainList.forEach((item) {
      choices.add(Container(
          padding: EdgeInsets.all(1),
          child: NCircleButton(
              onChangeFunction: widget.onSelectionChanged,
              itemName: item,
              radius: widget.raduis,
              selectionList: selectedChoices,
              color: widget.color,
              insideWidget: Text(
                item,
                style: widget.textStyle,
              ))));
    });
    return choices;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedChoices = widget.initialSelectionList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.raduis,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: _buildChoiceList(),
          ),
        ],
      ),
    );
  }
}
