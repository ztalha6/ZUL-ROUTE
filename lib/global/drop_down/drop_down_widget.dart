import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  final double containerWidthPerc;

  final List<PopupMenuEntry<Object>> Function(BuildContext) childrenListFunc;
  // final String menuText;
  final void Function(Object) onSelected;
  final String initialValue;
  final double horizontalPadding;
  final double verticalPadding;

  bool enabled;

  DropDownMenu(
      {required this.initialValue,
      required this.onSelected,
      required this.containerWidthPerc,
      this.horizontalPadding = 8,
      this.verticalPadding = 8.0,
      required this.childrenListFunc,
      required this.enabled});
  // this.menuText});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        enabled: enabled,
        offset: Offset(0, verticalPadding + 10),
        initialValue: initialValue,
        onSelected: onSelected,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: Color(0xFFbbbbbb)),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * containerWidthPerc,
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFbbbbbb)),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(initialValue,
                      style: TextStyle(
                          color: enabled ? Colors.black : Colors.grey),
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: enabled ? Colors.black : Colors.grey,
                ),
              )
            ],
          ),
        ),
        itemBuilder: childrenListFunc);
  }
}
