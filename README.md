#  Alrasasi Multi Selection Animated Widget

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)


### Features

Get your horizantal smooth multi-select widget.

  - Change the color as you want
  - Change the size
  - Put it anywhere

![Image description](https://c.imge.to/2019/07/27/dJleR.png)


### Installation

You should ensure that you add the alrasasi_animated_multi_select as a dependency in your flutter project.

```yaml

dependencies:
  alrasasi_animated_multi_select: ^0.0.1
```
You should then run flutter packages get in your terminal so as to get the package.

### Usage
For production environments...

```dart
            MultiSelectChip(
                color: Colors.deepPurpleAccent,
                raduis: 100,
                mainList: this.mainList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedList = selectedList;
                  });
                },
                initialSelectionList: selectedList,
                textStyle: TextStyle(color: Colors.purple, )
            ),
```

## Documentation

#### MultiSelectChip class

| Plugin | README |
| ------ | ------ |
| color | The color of the widget and its border |
| raduis | The height of the circle |
| mainList | Main list the user select from |
| onSelectionChanged | A function to react to selection actions |
| initialSelectionList | Initial list part from the main list|
| textStyle | Styling the text inside the widget |


"# animated_multi_selection" 
