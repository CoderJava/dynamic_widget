import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/material.dart';

class CardWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext, ClickListener listener) {
    return Card(
      color: parseHexColor(map['color']),
      shadowColor: parseHexColor(map['shadowColor']),
      elevation: parseElevation(map['elevation']),
      shape: parseRoundedRectangleBorder(map['shape']),
      borderOnForeground: map['borderOnForeground'] == null ? true : map['borderOnForeground'],
      margin: parseEdgeInsetsGeometry(map['margin']),
      child: map['child'] == null ? null : DynamicWidgetBuilder.buildFromMap(map['child'], buildContext, listener),
      semanticContainer: map['semanticContainer'] == null ? true : map['semanticContainer'],
      // TODO: clipBehavior
    );
  }

  @override
  String get widgetName => 'Card';

}