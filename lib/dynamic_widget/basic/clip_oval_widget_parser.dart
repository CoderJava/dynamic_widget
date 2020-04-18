import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/widgets.dart';

class ClipOvalWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext, ClickListener listener) {
    return ClipOval(
      // TODO: clipper, clipBehavior
      child: map['child'] == null ? null : DynamicWidgetBuilder.buildFromMap(map['child'], buildContext, listener),
    );
  }

  @override
  String get widgetName => 'ClipOval';
}
