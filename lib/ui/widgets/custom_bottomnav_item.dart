import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavItem extends StatefulWidget {
  final String imageUrl;
  final bool isSelected;
  const CustomBottomNavItem({
    super.key,
    required this.imageUrl,
    this.isSelected = false
  });

  @override
  State<CustomBottomNavItem> createState() => _CustomBottomNavItemState();
}

class _CustomBottomNavItemState extends State<CustomBottomNavItem> {
  late bool selected;

  @override
  void initState() {
    selected = widget.isSelected;
    setState(() {
      selected = widget.isSelected;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox.square(dimension: 24, child:
            SvgPicture.asset(widget.imageUrl, colorFilter: ColorFilter.mode(selected? Theme.of(context).colorScheme.primary : const Color.fromARGB(169, 126, 126, 126), BlendMode.srcIn),) 
          ),
        ),
        Opacity(
          opacity: selected? 1 : 0,
          child: Container(
            width: 30,
            height: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}