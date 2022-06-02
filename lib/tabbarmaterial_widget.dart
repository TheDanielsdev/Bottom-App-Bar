import 'package:flutter/material.dart';

class TabBarMaterialWidget extends StatefulWidget {
  int index;
  final ValueChanged<int> onChangedTab;
  TabBarMaterialWidget({
    Key? key,
    required this.index,
    required this.onChangedTab,
  }) : super(key: key);

  @override
  State<TabBarMaterialWidget> createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  final placeholder = const Opacity(
    opacity: 0,
    child: IconButton(
      onPressed: null,
      icon: Icon(Icons.no_cell),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        bottomAppItems(itemIndex: 1, icon: const Icon(Icons.home)),
        bottomAppItems(itemIndex: 2, icon: const Icon(Icons.business_center)),
        placeholder,
        bottomAppItems(itemIndex: 3, icon: const Icon(Icons.person)),
        bottomAppItems(itemIndex: 4, icon: const Icon(Icons.settings))
      ]),
    );
  }

  Widget bottomAppItems({required int itemIndex, required Icon icon}) {
    final isSelected = itemIndex == widget.index;
    return IconTheme(
        data: IconThemeData(color: isSelected ? Colors.red : Colors.black),
        child: IconButton(
            onPressed: () => widget.onChangedTab(itemIndex), icon: icon));
  }
}
