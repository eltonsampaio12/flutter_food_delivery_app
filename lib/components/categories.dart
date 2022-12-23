import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String name;
  final int selectedIndex;
  final int index;
  final void Function()? onTapCategory;
  const Categories(
      {super.key,
      required this.name,
      required this.selectedIndex,
      required this.index,
      required this.onTapCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTapCategory,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, right: 30),
            child: (Text(
              name,
              style: TextStyle(
                  color:
                      index == selectedIndex ? Colors.black : Colors.grey[500],
                  fontSize: 18,
                  fontWeight: index == selectedIndex
                      ? FontWeight.bold
                      : FontWeight.normal),
            )),
          ),
        ),
        index == selectedIndex
            ? Padding(
                padding: const EdgeInsets.only(right: 30, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
              )
            : Text("")
      ],
    );
  }
}
