import 'package:flutter/material.dart';

class DashedlineSeperatorWidget extends StatelessWidget {
  const DashedlineSeperatorWidget({super.key, required this.sections, this.color});

  final Color? color;
  final int sections;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (width / sections).floor(),
            (index) => Text(
              "-",
              style:
                  TextStyle(color: color ?? Colors.white),
            ),
          ),
        );
      },
    );
  }
}
